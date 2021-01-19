package cn.kgc.service.impl;

import cn.kgc.mapper.AccountMapper;
import cn.kgc.pojo.Account;
import cn.kgc.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountMapper accountMapper;

    /**
     * 登录
     * @param account_number
     * @param account_pwd
     * @return
     */
    @Override
    public Account login(String account_number, String account_pwd) {
        Account account=null;
        account=accountMapper.getAccountByAccountNum(account_number);
        if(account!=null){
            if(!account.getAccount_pwd().equals(account_pwd)){
                account=null;
            }
        }
        return account;
    }

    /**
     * 取款
     * @param account_number
     * @param money
     * @return
     */
    @Override
    public Boolean deposit(String account_number, Double money) {
        Integer result;
        result=accountMapper.updateAccount(account_number, money);
        if(result>0){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 查询账户
     * @param account_number
     * @return
     */
    @Override
    public Account findAccount(String account_number) {
        return accountMapper.getAccountByAccountNum(account_number);
    }
}
