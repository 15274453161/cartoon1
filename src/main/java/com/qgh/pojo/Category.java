package com.qgh.pojo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * 漫画的分类表
 * @author: 秦光泓
 * @date: 2019-09-11
 * @time: 10:26
 */
@Data
@Alias("category")
public class Category {
    //分类表： id,名称
    private Integer id;
    private String cyName;
}
