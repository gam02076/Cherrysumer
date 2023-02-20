package com.spring_boot_cherrysumer.project.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Base64;
import java.util.Date;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class ChatbotService {
	public String main(String voiceMessage) {
		 //String apiURL = "https://mqid8jmi5j.apigw.ntruss.com/custom/v1/9384/34444c191ef9c87faa92058e2ffc8954fc996d5fcae8113d715c0e789e2281c5";
		 //String secretKey = "cnBJZ0NkSlZlQ1ZRUkdHUENXZlNJb25YbEpqbmhIQkg=";
		
		// 강사님꺼.
		String apiURL = "https://0lagugxr47.apigw.ntruss.com/custom/v1/8766/7f88a1fe9155370e02761af9f7f1090fea5f4e0e8c2b6dd8902b22d863aaea14";
		String secretKey = "UlRmeXlFWHVOZ2R2ZUhodGNOYlFPaXFIZlBNbEJ5SkY=";
		
		 String chatbotMessage = ""; // 응답 메시지

		 try {
            //String apiURL = "https://ex9av8bv0e.apigw.ntruss.com/custom_chatbot/prod/";

            URL url = new URL(apiURL);

            String message = getReqMessage(voiceMessage);
            System.out.println("1##" + message);

            String encodeBase64String = makeSignature(message, secretKey);

            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("Content-Type", "application/json;UTF-8");
            con.setRequestProperty("X-NCP-CHATBOT_SIGNATURE", encodeBase64String);

            // post request
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.write(message.getBytes("UTF-8"));
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            
            System.out.println("3##" + responseCode);

            BufferedReader br;

            if(responseCode==200) { // Normal call
                System.out.println(con.getResponseMessage());

                BufferedReader in = new BufferedReader(
                        new InputStreamReader(
                                con.getInputStream()));
                String decodedString;
                while ((decodedString = in.readLine()) != null) {
                    chatbotMessage = decodedString;
                }
                //chatbotMessage = decodedString;
                in.close();
                
                
                
                //응답 메시지 출력
                System.out.println("응답 메시지 : " + chatbotMessage);
                // chatbotMessage : 서버에서 응답받은 메시지 (JSON 형식 문자열)
                
                
                // 응답 메시지 JSON 파싱 메시지 호출
                chatbotMessage = jsonToString(chatbotMessage);
                // chatbotMessage : json 파싱 결과 추출된 답변 메시지
                
                
                

            } else {  // Error occurred
                chatbotMessage = con.getResponseMessage();
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return chatbotMessage;
    }

	public String makeSignature(String message, String secretKey) {

		String encodeBase64String = "";

		try {
			byte[] secrete_key_bytes = secretKey.getBytes("UTF-8");

			SecretKeySpec signingKey = new SecretKeySpec(secrete_key_bytes, "HmacSHA256");
			Mac mac = Mac.getInstance("HmacSHA256");
			mac.init(signingKey);

			byte[] rawHmac = mac.doFinal(message.getBytes("UTF-8"));
			// encodeBase64String = Base64.encodeToString(rawHmac, Base64.NO_WRAP);
			encodeBase64String = Base64.getEncoder().encodeToString(rawHmac);

			return encodeBase64String;

		} catch (Exception e) {
			System.out.println(e);
		}

		return encodeBase64String;

	}

	public String getReqMessage(String voiceMessage) {

		String requestBody = "";

		try {

			JSONObject obj = new JSONObject();

			long timestamp = new Date().getTime();

			System.out.println("2##" + timestamp);

			obj.put("version", "v2");
			obj.put("userId", "U47b00b58c90f8e47428af8b7bddc1231heo2");
//=> userId is a unique code for each chat user, not a fixed value, recommend use UUID. use different id for each user could help you to split chat history for users.

			obj.put("timestamp", timestamp);

			JSONObject bubbles_obj = new JSONObject();

			bubbles_obj.put("type", "text");

			JSONObject data_obj = new JSONObject();
			data_obj.put("description", voiceMessage);

			bubbles_obj.put("type", "text");
			bubbles_obj.put("data", data_obj);

			JSONArray bubbles_array = new JSONArray();
			bubbles_array.put(bubbles_obj);

			//obj.put("bubbles", bubbles_array);
			//obj.put("event", "send");
			
			
			// 웰컴 메시지 출력
			if(voiceMessage == "") {
				obj.put("event", "open"); // 웰컴 메시지
			}else {
				obj.put("event","send"); // 질문 메시지
			}

			
			requestBody = obj.toString();

		} catch (Exception e) {
			System.out.println("## Exception : " + e); // 오류나면 나타나는 것.
		}

		return requestBody;

	}
	
	// 응답 메시지 결과 JSON 파싱
	public String jsonToString(String jsonResultStr) {
		
		JSONArray bubbleArray = new JSONObject(jsonResultStr).getJSONArray("bubbles");
		String result = bubbleArray.getJSONObject(0).getJSONObject("data").getString("description");
		
		return result;
	}
}
