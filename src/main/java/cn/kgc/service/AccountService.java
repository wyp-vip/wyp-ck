package cn.kgc.service;

import cn.kgc.pojo.Account;

public interface AccountService {
    /**
     * 登录
     * @param account_number
     * @param account_pwd
     * @return
     */
    Account login(String account_number, String account_pwd);

    /**
     * 取款
     * @param account_number
     * @param money
     * @return
     */
    Boolean deposit(String account_number, Double money);

    /**
     * 查询账户
     * @param account_number
     * @return
     */
    Account findAccount(String account_number);
}
