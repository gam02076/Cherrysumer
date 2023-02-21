package com.spring_boot_cherrysumer.project;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**")
				
				  .addResourceLocations(
				  "file:///usr/local/project/cherrysumer_images/cherrysumer_images/",
				  "file:///usr/local/project/upload/upload/");
				 
		        /*.addResourceLocations("file:///C:/springWorkspace/cherrysumer_images/",
		        		"file:///C:/springWorkspace/upload/");*/
					
	}
}
/*
 * "file:///C:/springWorkspace/cherrysumer_images/",
 * "file:////Users/pizza/STS3/SpringWorkspace/cherrysumer_images/",
 * "file:////Users/shimgyumin/java_class/cherrysumer_images/",
 * "file:////Users/pizza/STS3/SpringWorkspace/cherrysumer_upload/",
 * "file:////Users/shimgyumin/java_class/cherrysumer_upload/",
 * "file:///C:/springWorkspace/upload/",
 */
