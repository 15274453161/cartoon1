package com.qgh.service;

import com.github.pagehelper.Page;
import com.qgh.pojo.User;
import com.qgh.util.result.Result;

import java.util.List;

/**
 * @title:用户逻辑操作
 * @ClassName: UserService
 * @Description:
 * @Auther: 秦光泓
 * @date 2019/10/3
 * @time 11:10
 */
public interface UserService {
    /**
     * 判断注册时是否存在此用户
     * @param email
     * @return
     */
   public User isexist(String email);
   void addUser(User user);
   Result login(String userName,String password);
   void setStatus(int id,int status);

    /**
     *
     * @param pageNo 当前页
     * @param pageSize 一页显示多少行
     * @return
     */
    Result showAllUser(int pageNo,int pageSize);

    /**
     * 根据用户名查找用户
     * @param userEmail
     * @return
     */
    Result queryUserByUserName(String userEmail);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    Result updateUser(User user);

    /**
     * 删除用户通过id
     * @param id
     * @return
     */
    Result delUser(int id);
}
