package com.qgh.controller.comment;

import com.qgh.ServiceImpl.CommentServiceImpl;
import com.qgh.pojo.Comment;
import com.qgh.util.date.DateFormat;
import com.qgh.util.result.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * @title:
 * @ClassName: CommentContrller
 * @Description:
 * @Auther: 秦光泓
 * @date 2019/10/29
 * @time 9:46
 */
@Controller
public class CommentContrller {

    @Autowired
    private CommentServiceImpl commentService;
    @Autowired
    private DateFormat dateFormat;
    @RequestMapping("/showAllComment")
    public String showAllComment(){
        return "section";
    }
    /**
     * 发布评论
     * @param content
     * @return
     */
    @RequestMapping("/publishComment")
    @ResponseBody
    public List<Comment> publishComment(String content, Integer chaptorId, Integer userId, Integer replay){
        Comment comment=new Comment();
        comment.setCommentTime(dateFormat.formatDate(new Date()));
        comment.setUserId(userId);
        comment.setChaptorId(chaptorId);
        comment.setReplay(replay);
        comment.setCommentContent(content);
        commentService.insertComment(comment);
        Result comL= commentService.showAll(chaptorId,1);
        return (List<Comment>)comL.getMsg();
    }
    @RequestMapping("/commentZan")
    @ResponseBody
    public String commentZan(Integer commentId,Integer zanNum){
        commentService.addZan(commentId,zanNum);
        return "";
    }

    /**
     * 分页查询commentList
     * @param model
     * @param pageNo
     * @param pageSize
     * @return
     */
    @RequestMapping("/admin/queryAll")
    public String queryAll(Model model,int pageNo,int pageSize){
        showAll(model,pageNo,pageSize);
        return "comment";
    }
    /**
     * 显示评论 分页显示
     * @param model
     * @param pageNo
     * @param pageSize
     */
    public void showAll(Model model,int pageNo,int pageSize){
      Result result= commentService.showPage(pageNo,pageSize);
      model.addAttribute("commentList",result.getMsg());
    }
    /**
     * 批量删除评论
     * @param commentId
     * @return
     */
    @RequestMapping("/comment/batchDelCom")
    @ResponseBody
    public Result batchDelCom(int [] commentId){
        commentService.batchDelCom(commentId);
        return Result.SUCCESS(commentId);
    }
}
