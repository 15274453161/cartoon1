package com.qgh.pojo;

import com.qgh.util.ExcelAttribute;
import lombok.Data;
import lombok.experimental.Accessors;
import org.apache.ibatis.type.Alias;

import java.util.List;

/**
 * 映射漫画表
 * @author: 秦光泓
 * @date: 2019-09-11
 * @time: 9:53
 */
@Data
@Accessors(chain = true)
@Alias("cartoon")
public class Cartoon {
    //漫画: id,漫画名,作者,分类id,更新周日id,介绍,状态id,评分,年龄范围id,
    private Integer id;
    @ExcelAttribute(name = "漫画名称",column = "A")
    private String ctName;
    @ExcelAttribute(name = "漫画作者",column = "B")
    private String ctAuthor;

    private Integer ctCyId;
    private Integer ctWkId;
    private String ctIntroduce;
    private Integer ctStateId;//完结位0 连载位1
    private double ctScore;
    private Integer  ctAgeRangeId;
    @ExcelAttribute(name = "漫画封面地址",column = "F")
    private String ctUrl;
    //替换 中间值   分类名  漫画序号
    @ExcelAttribute(name = "漫画分类",column = "C")
    private String cyName;

    private String ctTitleNo;
    @ExcelAttribute(name = "漫画更新日期",column = "D")
    private String wkName;
    @ExcelAttribute(name = "漫画状态",column = "E")
    private String state;//漫画状态
    //输出星期下的所有漫画
    private List<Cartoon> weekCartoon;
    //输出当前分类下的所有漫画
    private List<Cartoon> cyCartoon;

    private List<Category> classify;//查询所有分类
    private List<Week> week;//查询所有分类

}
