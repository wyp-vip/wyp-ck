package cn.kgc.mapper;

import cn.kgc.pojo.Account;
import org.apache.ibatis.annotations.Param;

public interface AccountMapper {
    /**
     * 根据账号查询账户
     */
    Account getAccountByAccountNum(String account_number);
    /**
     * 更新账户的余额
     */
    Integer updateAccount(@Param("account_number") String account_number, @Param("money") Double money);
}
