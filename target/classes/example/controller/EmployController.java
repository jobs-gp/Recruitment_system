package example.controller;


import example.pojo.Deliveryrecord;
import example.pojo.Employ;
import java.util.Map;
import example.pojo.Resume;
import example.service.IDeliveryrecordService;
import example.service.IEmployService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/employ/")
public class EmployController {

    @Autowired
    private IDeliveryrecordService deliveryrecordService;

    @Autowired
    private IEmployService employService;

    @RequestMapping(value = "getEmployInfo",method = RequestMethod.GET)
    public String getEmployInfo(HttpServletRequest request,HttpSession session){
        //session,先使用一个userid的例子
        String userid;

        Employ employ = (Employ)session.getAttribute("employ");
        userid = Integer.toString(employ.getUserid());
        List<Deliveryrecord> deliveryrecordinfo = deliveryrecordService.getPerDeliveryById(userid);
        request.setAttribute("deliverinfo",deliveryrecordinfo);
        return "employ/employInfo";
    }

    @RequestMapping(value = "employLoginJsp",method = RequestMethod.GET)
    public String employLoginJsp(){
        return "loginPage/employLogin";
    }

    @RequestMapping("login")
    public String login(Employ employ,Map<String,Object> map, HttpSession session){
        //登录
        Employ resultEmploy = employService.login(employ);
        if(resultEmploy!=null){
            //跳转welcome界面
            session.setAttribute("employ",resultEmploy);
            return "redirect:/employ/getEmployInfo";
        }
        else {
            //跳转到index界面
            //登录时填写的用户数据
            map.put("employ",employ);
            //错误信息
            map.put("error","用户名或密码错误，请重新填写");
            return "loginPage/dlsb";
        }
    }

//    @RequestMapping(value = "editEmployPwdJsp",method = RequestMethod.GET)
//    public String editEmployPwdJsp(){
//        return "employ/editPwd";
//    }
//    public String editEmployPwd()
//    /**
//     * 使用@SessionAttributes,把model中的employ放入其中,保证了session中存在employ这个对象.
//     */
//
//    @SessionAttributes("employ")
//
//    //访问login页面
//    @RequestMapping("/checkLogin")
//    public String checkLogin(Employ employ, Model model){
//        //调用service
//        employ = employService.checkLogin(employ.getAccount(), employ.getPwd());
//        //若有user则添加到model里并且跳转到成功页面
//        if(employ != null){
//            model.addAttribute("employ",employ);
//            return "success";
//        }
//        return "fail";
//    }




}
