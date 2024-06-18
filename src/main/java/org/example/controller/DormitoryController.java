package org.example.controller;

import org.example.model.Dormitory;
import org.example.model.User;
import org.example.service.DormitoryServiceImp;
import org.example.service.UserSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/dormitory")
public class DormitoryController {
    @Autowired
    @Qualifier("dormitoryServiceImp")
    private DormitoryServiceImp dormitoryServiceImp;

    @Autowired
    @Qualifier("userServiceImp")
    private UserSerivce userSerivce;

    //展示登录页面
    @RequestMapping("/login")
    public String loginPaper(){
        return "login";
    }


//用户登录
    @PostMapping("/authenticate")
    public String authenticate(User user, Model model){
        boolean b = userSerivce.validateUser(user);
        if (b){
            model.addAttribute("username",user.getUsername());
            return "redirect:/dormitory/allDormitory";
        }
        else {
            model.addAttribute("error","账号或者密码错误");
            return "login";
        }
    }


//    用户注册页面
    @RequestMapping("/toresign")
    public String toresign(){
        return "resign";
    }



    @RequestMapping("/resign")
    //用户注册
    public String resign(Model model, User user){
        boolean b = userSerivce.validateUsername(user.getUsername());
        if (b){
            model.addAttribute("error","该账号已存在");
            return "resign";
        }
        else {
            userSerivce.insetUser(user);
            return "redirect:/dormitory/login";
        }
    }





    //展示所有书籍页面
    @RequestMapping("/allDormitory")
    public String toList(Model model){
        List<Dormitory> list = dormitoryServiceImp.selectUser();
        model.addAttribute("list",list);
        return "allDormitory";
    }



//    添加书籍页面
    @RequestMapping("/toAddDormitory")
    public String toAddPaper(){
        return "addDormitory";
    }


    //添加书籍请求
    @RequestMapping("/addDormitory")
    public String addDormitory(Dormitory dormitory){
        dormitoryServiceImp.insertUser(dormitory);
        return "redirect:/dormitory/allDormitory";//重定向请求
    }



//    进入修改页面
    @RequestMapping("/toUpdateDormitory")
    public String toUpdateDormitory(Model model,@RequestParam("id") int id) {
        Dormitory dormitory = dormitoryServiceImp.selectUserId(id);
        model.addAttribute("dormitory", dormitory);
        return "updateDormitory";
    }




//修改返回allbook页面
    @RequestMapping("/updateDormitory")
    public String updateDormitory(Model model, Dormitory dormitory) {
        dormitoryServiceImp.updateUser(dormitory);
        Dormitory dormitory1 = dormitoryServiceImp.selectUserId(dormitory.getId());
        model.addAttribute("dormitory1", dormitory1);
        return "redirect:/dormitory/allDormitory";
    }



//    删除
    @RequestMapping("/delete/{userId}")
    public String deleteDormitory(@PathVariable("userId")  int id){
        dormitoryServiceImp.deleteUser(id);
        return "redirect:/dormitory/allDormitory";
    }


}
