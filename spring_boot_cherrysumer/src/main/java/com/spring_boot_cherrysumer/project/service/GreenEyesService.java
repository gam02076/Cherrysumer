package com.spring_boot_cherrysumer.project.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.model.GreenEyesVO;

@Service
public class GreenEyesService {
	public ArrayList<GreenEyesVO> GreenEye(String filePathName) {
		ArrayList<GreenEyesVO> GreenList = new ArrayList<GreenEyesVO>();
		String result = "";
		
		String uploadPath = "https://www.bntnews.co.kr/data/bnt/image/201405/";
		
		String greenURLPath = uploadPath + filePathName;
		
		String apiURL = "https://clovagreeneye.apigw.ntruss.com/custom/v1/47/2a1b0b7a3743c3db3d7cededa864919955658ed202412c71b82cba6817a23545/predict";
		String secretKey = "SVRvWnBSQkVZall4TkFZZ0RTdmxkQ1REb2FRSVhWQlo=";
		String imageFile = filePathName;

		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setUseCaches(false);
			con.setDoInput(true);
			con.setDoOutput(true);
			con.setReadTimeout(30000);
			con.setRequestMethod("POST");
			String boundary = "----" + UUID.randomUUID().toString().replaceAll("-", "");
			con.setRequestProperty("Content-Type", "application/json;UTF-8");
			con.setRequestProperty("X-GREEN-EYE-SECRET", secretKey);

			JSONObject json = new JSONObject();
			json.put("version", "V1");
			json.put("requestId", UUID.randomUUID().toString());
			json.put("timestamp", System.currentTimeMillis());
			JSONObject image = new JSONObject();
			image.put("name", filePathName);
			image.put("url", greenURLPath);
			JSONArray images = new JSONArray();
			images.put(image);
			json.put("images", images);
			String postParams = json.toString();

			// post request
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.write(postParams.getBytes("UTF-8"));
			wr.flush();
			wr.close();
			int responseCode = con.getResponseCode();

			BufferedReader br;
			String response;

			if (responseCode == 200) { // Normal call(응답 성공)
				System.out.println(con.getResponseMessage());

				BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
				// String response;
				while ((response = in.readLine()) != null) {
					System.out.println(response);
					// System.out.println(response.toString()); // 결과 동일
					System.out.println(response.toString()); // 결과 동일
					GreenList = jsonToVoList(response.toString());
				}
				in.close();
			} else { // Error occurred
				response = con.getResponseMessage();
				// 에러 메시지 출력
				System.out.println("에러 메시지 : " + response);
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return GreenList;
	}

	//JSON 데이터 추출
	public ArrayList<GreenEyesVO> jsonToVoList(String jsonResultStr) {
		ArrayList<GreenEyesVO> GreenList = new ArrayList<GreenEyesVO>();
		JSONArray greenArray = new JSONObject(jsonResultStr).getJSONArray("images");
		JSONObject obj0 = greenArray.getJSONObject(0);
		
		double con = obj0.getDouble("confidence");
		GreenEyesVO vo1=new GreenEyesVO();
		  vo1.setValue("result"); 
		  vo1.setConfidence(con);
		  
		  GreenList.add(vo1);
		
		
		JSONObject objResult = obj0.getJSONObject("result");
		
		System.out.println("objResult : "+objResult.toString());
		//objResult : {"normal":{"confidence":0.6094779968261719},"sexy":{"confidence":0.2133900374174118},"adult":{"confidence":0.026715492829680443},"porn":{"confidence":0.1504165381193161}}
		
		
		  String[] list = {"adult","normal","porn","sexy"};
		  
		  
		  for(int i=0; i<4; i++) { 
			  double confidence = objResult.getJSONObject(list[i]).getDouble("confidence");
		  
		  GreenEyesVO vo=new GreenEyesVO();
		  vo.setValue(list[i]); 
		  vo.setConfidence(confidence);
		  
		  GreenList.add(vo);
		  
		  }

		return GreenList;
	}
	
	
	
	

} // ㄹㅇ 끝
