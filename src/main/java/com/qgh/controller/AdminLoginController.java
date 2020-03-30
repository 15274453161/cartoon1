package com.qgh.controller;

import com.qgh.ServiceImpl.UserServiceImpl;
import com.qgh.pojo.User;
import com.qgh.util.result.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;

/**
 * Created with IDEA
 * author:秦光泓
 * description:后台管理员登录
 * Date:2020/3/7
 * Time:15:10
 */
@Controller
@RequestMapping("/admin")
public class AdminLoginController {
  private static Logger logger= LoggerFactory.getLogger(AdminLoginController.class);
    @Autowired
    private UserServiceImpl userServiceImpl;
    /**
     * 后台登录
     * @return
     */
    @RequestMapping("/login")
    public String login(){
        return "adminLogin";
    }

    /**
     * 开始登录
     * @param userName
     * @param password
     * @param session
     * @param model
     * @return
     */
    @RequestMapping("/login_confirm")
    public String login_confirm(@RequestParam("userName") String userName,@RequestParam("password") String password, HttpSession session, Model model) {
        //1、根据用户名和密码查询用户登录状况
        try {
            Result result=	userServiceImpl.login(userName, password);
            //是管理员身份  identity==1
            logger.error("111  ",result.getCode());
            //System.out.println(result+" :=lll");
            if (result!=null&&result.getMsg()!=null&&((User)result.getMsg()).getIdentity()==1){
                //2、将登陆信息存入session
                session.setAttribute("userInfor",(User)result.getMsg());
                System.out.println("登录信息3/22==  "+(User)result.getMsg());
                session.setMaxInactiveInterval(60*60);
                //3、将用户登录状况信息返回前端 方便弹出提示信息
                model.addAttribute("code",result.getCode());
                //4、获取用户session中的值并存入model总 传递到html 方便动态修改头部
                user(model,session);
                //登录成功进入后台首页
                userInfor(model,1,10);
                return "userList";
            }else{
                //用户名和密码错误
                model.addAttribute("code",result.getCode());
                return "adminLogin";
            }

        } catch (Exception e) {
            logger.error("登录错误");
            e.printStackTrace();
            return "adminLogin";
        }

    }

    /**
     * 获取session中的用户信息存储到model中
     * @param model
     * @param session
     */
    public void user(Model model,HttpSession session){
        //4、获取用户session中的值并存入model总 传递到html 方便动态修改头部
        Object obj=session.getAttribute("userInfor");
        //5、判断session中的值 存入model中
        if (obj!=null){
            //已经登录
            model.addAttribute("userId",((User)obj).getId());
        }else{
            //没有登录
            model.addAttribute("userId",0);
        }
    }

    /**
     * 查询用户
     * @param model
     * @param pageNo
     * @param pageSize
     * @return
     */
    @RequestMapping("/queryUser")
    public String queryUser(Model model,@RequestParam("pageNo") int pageNo,@RequestParam("pageSize")int pageSize){
        userInfor(model,pageNo,pageSize);

        return "userList";
    }

    /**
     * @param model
     * @param pageNo 当前页码
     * @param pageSize  一页显示多少条数据
     */
    public void userInfor(Model model,int pageNo,int pageSize){
        try {
            Result result=userServiceImpl.showAllUser(pageNo,pageSize);
            model.addAttribute("userList",result);
        } catch (Exception e) {
            logger.error("查看用户信息错误");
            e.printStackTrace();
        }
    }
    /**
     * 根据编辑的用户的id查询出其信息
     * @param userEmail 是唯一
     * @param model
     * @return
     */
    //编辑用户回填
    @RequestMapping("editBackFill")
    public String editBackFill(@RequestParam("userEmail") String userEmail,Model model){
        try {
            //1、信息的回填
            Result msg=  userServiceImpl.queryUserByUserName(userEmail);
            //2、信息传递到前端
            model.addAttribute("editUser",(User)msg.getMsg());
            logger.info("msg :","编辑用户信息回填");
        } catch (Exception e) {
            logger.error("编辑用户信息查询回填出错");
            e.printStackTrace();
        }
        return "useredit";
    }

    /**
     * 修改用户
     * @param user
     * @return
     */
    @RequestMapping("/editUser")
    @ResponseBody
    public Result editUser(User user,Model model){
        Result result=  userServiceImpl.updateUser(user);
       //返回查询结果
        Result result1=userServiceImpl.showAllUser(1,10);
        return result1;
    }
   /* @RequestMapping("/editUser")
    public String  editUser(User user,Model model){
        Result result=  userServiceImpl.updateUser(user);
        //返回查询结果
        userInfor(model,1,10);
        System.out.println("gggg"+result);
        return "userList";
    }*/
    /**
     * 删除用户
     * @return
     */
    @RequestMapping("/delUser")
    public String delUser(@RequestParam("id") Integer id, Model model){
        userServiceImpl.delUser(id);
        userInfor(model,1,10);
        return "userList";
    }

    /**
     * 批量删除用户
     * @param ids
     * @return
     */
    @RequestMapping("/batchDelUser")
    @ResponseBody
    public Result batchDelUser(int[]  ids){
   /* for (int id:ids){
        userServiceImpl.delUser(id);
    }*/
     return Result.SUCCESS("删除成功");
    }
}
