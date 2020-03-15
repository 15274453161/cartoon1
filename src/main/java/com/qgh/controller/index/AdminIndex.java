package com.qgh.controller.index;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IDEA
 * author:秦光泓
 * description:
 * Date:2020/3/7
 * Time:16:36
 */
@Controller
@RequestMapping("/admin")
public class AdminIndex {
    @RequestMapping("/index")
    public String index(){
        return "X-admin/index";
    }
    //测试
    @RequestMapping("/test")
    @ResponseBody
    public Map<String, Object> test(){
        Map<String,Object> map=new HashMap<>();
        map.put("qgh","qgh");
        return map;
    }
  /*  //测试
    @RequestMapping("/test1")
    public String test1(Model model){
        Map<String,Object> map=new HashMap<>();
        map.put("qgh","qgh");
        model.addAttribute("qgh",map);
        return "X-admin/member-list.html";
    }*/
}
