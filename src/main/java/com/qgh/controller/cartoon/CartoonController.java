package com.qgh.controller.cartoon;

import com.qgh.service.CartoonService;
import com.qgh.util.result.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created with IDEA
 * author:秦光泓
 * description:漫画后台操作
 * Date:2020/3/22
 * Time:14:19
 */
@Controller
@RequestMapping("/admin/cartoon")
public class CartoonController {

    @Autowired
    private CartoonService cartoonService;

    /**
     * 分页查询漫画显示
     *
     * @param pageNo   第几页
     * @param pageSize 一页显示多少行
     * @param model
     * @return
     */
    @RequestMapping("queryAll")
    public String queryAll(int pageNo, int pageSize, Model model) {
        Result result = cartoonService.queryAllByPage(pageNo, pageSize);
        model.addAttribute("cartoonList", result);
        return "cartoonList";
    }

    /**
     * 编辑信息回填 根据漫画id查询漫画信息  ajax
     * @param cartoonId
     * @return
     */
    @RequestMapping("editBackFill")
    public String editBackFill(Integer cartoonId, Model model) {
        Result result = cartoonService.queryAllByCartoonId(cartoonId);
        model.addAttribute("cartoon", result.getMsg());
        return "cartoonEdit";
    }

    /**
     * 修改漫画封面
     * @param cartoonId
     * @param model
     * @return
     */
    @RequestMapping("uploadUrl")
    public String uploadUrl(Integer cartoonId, Model model) {
        Result result = cartoonService.queryAllByCartoonId(cartoonId);
        model.addAttribute("cartoon", result.getMsg());
        return "cartoonUrlUpload";
    }

    /**
     * 修改漫画信息
     * @param ctName
     * @param ctAuthor
     * @param cyName
     * @param wkName
     * @param state
     * @return
     */
    @PostMapping("/editCartoon")
    @ResponseBody
    public String  editCartoon(@RequestParam("ctName") String ctName, @RequestParam("ctAuthor") String ctAuthor,
                                   @RequestParam("cyName") String cyName, @RequestParam("wkName") String wkName,
                                    @RequestParam("state") String state) {

        return "修改成功";

    }

    /**
     *上传封面到数据库
     * @param file
     * @return
     */
    @PostMapping("/uploadCarUrl")
    @ResponseBody
    public Map<String,Object> uploadCarUrl(@RequestParam("file") MultipartFile file){
        String fileName=file.getOriginalFilename();
        String uploadPath="F:\\咚漫\\图片\\cover\\";
        File fileUpload=new File(uploadPath);
        Map<String,Object> result=new HashMap<>();
        //判断目录是否存在
        if (!fileUpload.exists()){
            fileUpload.mkdirs();
        }
        try {
            file.transferTo(new File(uploadPath,fileName));
            result.put("status", "true");
            //封面
            String cover=uploadPath+fileName;
            //修改封面

            result.put("data", uploadPath+fileName);
            return result;

        } catch (IOException e) {
            e.printStackTrace();
            result.put("status", "false");
            result.put("data", null);
            return result;
        }

    }

}
