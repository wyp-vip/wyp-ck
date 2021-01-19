package cn.kgc.entity;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Data
@ConfigurationProperties(prefix ="user")
@Component
public class User {
    private  Integer id;
    private String userName;
    private  Boolean isboy;
}
