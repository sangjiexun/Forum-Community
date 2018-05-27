package com.web;

import com.domain.User;
import com.exception.UserExistException;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class RegisterController extends BaseController {
    @Autowired
    private UserService userService;

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    //用户登录
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public ModelAndView register(HttpServletRequest request,User user){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("/success");
        try{
            userService.register(user);
        }catch (UserExistException e){
            modelAndView.addObject("errorMsg1","用户名已经存在，请更换用户名");
            modelAndView.setViewName("forward:/register.jsp");
        }
        if(!request.getParameter("password").equals(request.getParameter("again"))){
            modelAndView.addObject("errorMsg2","两次输入密码不同");
            modelAndView.setViewName("forward:/register.jsp");
        }
        setSessionUser(request,user);
        return modelAndView;
    }

}
