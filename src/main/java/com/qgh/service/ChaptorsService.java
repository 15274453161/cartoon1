package com.qgh.service;



import com.qgh.pojo.Chaptors;
import com.qgh.util.result.Result;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface ChaptorsService {
    void insertData(Chaptors chaptors);
    Result searchPage(int ctId,int pageNo);
    Result searchByChaptorIdAndCartoonId(@Param("chaptorId") int chaptorId, @Param("cartoonId") int cartoonId);
    Result searchById(int id);
    Integer searchByCtId(int ctId);
    void updateBackgroundMusic( int chaptorId,String bgMusicUrl);

    /**
     * 分页查询章节信息
     * @param chaptors
     * @return
     */
    Result queryById(Chaptors chaptors);

    Integer queryByName(String name);
}
