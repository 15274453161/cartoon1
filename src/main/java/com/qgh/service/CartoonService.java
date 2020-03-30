package com.qgh.service;


import com.github.pagehelper.Page;
import com.qgh.pojo.Cartoon;
import com.qgh.util.result.Result;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author: 秦光泓
 * @date: 2019-09-11
 * @time: 11:41
 */
public interface CartoonService {
    void addCartoon(Cartoon cartoon);
    List<Cartoon> selectAll();
    void updatePcUrl(String ctUrl, Integer id);

    /**
     * 首页的前八条漫画信息
     * @return
     */
    Result indexEight(int weekId);



    Result selectById(int cartId);

    Result searchCartoonByName(String cartoonName);

    Result  rankByCyId(int cyId);

    Result searchByWeekId();

    Result searchByWeekIdEight(int weekId);

    /**
     * 分页查询所有漫画
     * @param pageNo
     * @param PageSize
     * @return
     */
   Result queryAllByPage(int pageNo,int PageSize);

    /**
     * 根据漫画id查询漫画
     * @param cartoonId
     * @return
     */
    Result queryAllByCartoonId(Integer cartoonId);
}
