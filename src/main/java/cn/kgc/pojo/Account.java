package cn.kgc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * 账户实体类
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Account {
    private Integer id;
    private String account_number;
    private String account_pwd;
    private Double account_money;
    private Integer account_status;
    private Date creation_time;
}
