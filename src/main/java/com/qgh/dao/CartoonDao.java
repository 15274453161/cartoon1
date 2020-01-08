package com.qgh.dao;

import com.qgh.pojo.Cartoon;
import com.qgh.util.result.Result;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 漫画接口
 * @author: 秦光泓
 * @date: 2019-09-11
 * @time: 9:49
 */
public interface CartoonDao {
    /**
     * 新增漫画部分信息
     * @param cartoon
     */
    void addCartoon(Cartoon cartoon);

    /**
     * 新增图片地址
     * @param ctUrl
     */
    void updatePcUrl(@Param("ctUrl") String ctUrl, @Param("id") Integer id);

    /**
     * 查询所有
     * @return
     */
    List<Cartoon> selectAll();

    /**
     * 首页的前八条数据
     * @return
     */

    List<Cartoon> indexEight(int weekId);

/*    List<Cartoon> SearByWeekId(int id);*/

    /**
     * 根据漫画id查询漫画信息
     * @param cartId
     * @return
     */
    Cartoon selectById(int cartId);

    /**
     * 查询漫画根据名称
     * @param cartoonName 漫画名称
     * @return
     */
    List<Cartoon> searchCartoonByName(String cartoonName);

    /**
     * 根据漫画分类ID 排行
     * @param cyId
     * @return
     */
    List<Cartoon> rankByCyId(int cyId);

    /**
     * 根据漫画的周末划分
     * @param weekId
     * @return
     */
    List<Cartoon> searchByWeekId(@Param("weekId") int weekId);

    /**
     * 查询所有连载漫画
     * @param state
     * @return
     */
    List<Cartoon> searchAllCom(int state);

    List<Cartoon>  searchByWeekIdEight(int weekId);

    /**
     * 根据漫画分类Id查询该分类下的所有漫画
     * @param cyId
     * @return
     */
    List<Cartoon> searchByCyId(int cyId);

}
