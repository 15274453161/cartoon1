package com.qgh.dao;

import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Param;

import com.qgh.pojo.User;

import java.util.List;

public interface UserDao {
     User isexist(String email);
     void addUser(User user);
     
     User login(@Param("userName") String userName,@Param("password") String password);
     
     void setStatus(@Param("id")int id,@Param("status") int status);

     /**
      * 查询所有用户
      * @return
      */
     Page<List<User>> showAllUser();

     /**
      *根据用户名查找用户
      * @param userEmail
      * @return
      */
     User queryUserByUserName(String userEmail);

     /**
      * 修改用户信息
      * @param user
      * @return
      */
     int updateUser(User user);

     /**
      * 删除用户通过id
      * @param id
      * @return
      */
     int delUser(int id);
}
