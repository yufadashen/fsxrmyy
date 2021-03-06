package com.intehel;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.HttpMessageConverters;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.HttpMessageConverter;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;

@SpringBootApplication
@MapperScan("com.intehel.dao")
    public class MedicalApplication  extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(MedicalApplication.class, args);
	}

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(MedicalApplication.class);
    }

	 /**
    *
    1.需要先定义一个convert转换消息的对象；
    2.添加fastjson的配置信息，比如是否要格式化返回的json数据
    3.在convert中添加配置信息
    4.将convert添加到converters中
    */
   @Bean
   public HttpMessageConverters fastJsonHttpMessageConverters() {

       FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();
       FastJsonConfig fastJsonConfig = new FastJsonConfig();
       fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);
       fastConverter.setFastJsonConfig(fastJsonConfig);
       HttpMessageConverter<?> converter = fastConverter;
       return new HttpMessageConverters(converter);

   }
	

}
