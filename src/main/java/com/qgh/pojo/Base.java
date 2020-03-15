package com.qgh.pojo;

import java.util.Date;

/**
 * Created with IDEA
 * author:秦光泓
 * description:基类
 * Date:2020/3/8
 * Time:15:08
 */
public class Base {
     int pageNo;//当前页
    int pageSize;//每页数量

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    Date createTime;//创建时间

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    Date updateTime;//修改时间

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }
}
