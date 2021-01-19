package cn.kgc.controller;

import cn.kgc.pojo.Account;
import cn.kgc.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("account")
public class AccountController {
    @Autowired
    private AccountService accountService;
    @RequestMapping("login")
    public String login(String account_number, String account_pwd, HttpServletRequest request, Model model){
        System.out.println(account_number+"\t"+account_pwd);
        Account account=accountService.login(account_number,account_pwd);
        if(account!=null){
            request.getSession().setAttribute("account",account);
            request.getSession().removeAttribute("mess");
            return "main";
        }else{
            request.getSession().setAttribute("mess","卡号或密码错误");
            return "redirect:/login.jsp";
        }
    }

    /**
     * 退出
     * @param request
     * @return
     */
    @RequestMapping("logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("account");
        return "redirect:/login.jsp";
    }

    @RequestMapping("deposit")
    public String deposit(String account_number,Double account_money,HttpServletRequest request,Model model){
        System.out.println(account_number+"\t"+account_money);
        Boolean result=accountService.deposit(account_number,account_money);
        System.out.println(result);
        if(result){//取款成功
            Account account=accountService.findAccount(account_number);
            request.getSession().setAttribute("account",account);
            model.addAttribute("account",account);
            return "message";
        }else {
            return "main";
        }
    }
    @RequestMapping("toMain")
    public String toMain(){
        return "main";
    }
}
