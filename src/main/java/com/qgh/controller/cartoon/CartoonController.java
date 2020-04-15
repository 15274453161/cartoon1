package com.qgh.controller.cartoon;

import com.alipay.api.domain.Car;
import com.qgh.ServiceImpl.CartoonServiceImpl;
import com.qgh.pojo.Cartoon;
import com.qgh.service.CartoonService;
import com.qgh.util.ConfigUtil;
import com.qgh.util.ExcelUtil;
import com.qgh.util.FileUpload;
import com.qgh.util.result.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
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
    private static Logger logger = LoggerFactory.getLogger(CartoonController.class);

    @Autowired
    private CartoonServiceImpl cartoonService;
    @Autowired
    private FileUpload fileUpload;

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
        currency(pageNo, pageSize, model);
        return "cartoonList";
    }

    public void currency(int pageNo, int pageSize, Model model) {
        Result result = cartoonService.queryAllByPage(pageNo, pageSize);
        model.addAttribute("cartoonList", result);
    }

    /**
     * 根据条件查询漫画
     *
     * @param ctName
     * @param model
     * @return
     */
    @PostMapping("/queryByName")
    public String queryByName(@RequestParam("ctName") String ctName, @RequestParam("cyName") String cyName, @RequestParam("wkName") String wkName, Model model) {
        Result result = cartoonService.queryByCartoonNameAndTypeAndUpdate(ctName, cyName, wkName);
        model.addAttribute("cartoonList", result);
        return "cartoonList";
    }

    /**
     * 编辑信息回填 根据漫画id查询漫画信息  ajax
     *
     * @param cartoonId
     * @return
     */
    @RequestMapping("editBackFill")
    public String editBackFill(Integer cartoonId, Model model) {
        Result result = cartoonService.queryAllByCartoonId(cartoonId);
        System.out.println(result.getMsg());
        model.addAttribute("cartoon", result.getMsg());
        return "cartoonEdit";
    }

    /**
     * 修改漫画封面
     *
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
     *
     * @param ctName
     * @param ctAuthor
     * @param cyName
     * @param wkName
     * @param state
     * @return
     */
    @PostMapping("/editCartoon")
    @ResponseBody
    public String editCartoon(@RequestParam("id") int id, @RequestParam("ctName") String ctName, @RequestParam("ctAuthor") String ctAuthor,
                              @RequestParam("cyName") int cyName, @RequestParam("wkName") int wkName,
                              @RequestParam("state") int state, @RequestParam("file") MultipartFile file, HttpServletRequest req, Model model) {
        try {
            logger.error("参数", ctAuthor);
            String url = null;
            //开始修改 的时候修改了封面
            if (!file.getOriginalFilename().equals("")) {
                ConfigUtil cfg = ConfigUtil.getInstance();
                String bucketName = cfg.get("bucketName");
                String folder = cfg.get("folder");
                url = fileUpload.upload(file, req, bucketName, folder);
            }
            //开始更新漫画信息
            Cartoon cartoon = new Cartoon();
            cartoon.setId(id);
            cartoon.setCtUrl(url);
            cartoon.setCtAuthor(ctAuthor);
            cartoon.setCtName(ctName);
            cartoon.setCtCyId(cyName);
            cartoon.setCtWkId(wkName);
            cartoon.setCtStateId(state);
            cartoonService.updateCartoon(cartoon);
        } catch (Exception e) {
            logger.error("服务器异常");

        }
        return "修改成功";
    }

    /**
     * 上传封面到数据库
     *
     * @param file
     * @return
     */
    @PostMapping("/uploadCarUrl")
    @ResponseBody
    public Map<String, Object> uploadCarUrl(@RequestParam("file") MultipartFile file, int id, HttpServletRequest req) {
        //返回的结果集
        Map<String, Object> result = new HashMap<>();
        try {
            ConfigUtil cfg = ConfigUtil.getInstance();
            String bucketName = cfg.get("bucketName");
            String folder = cfg.get("folder");
            String url = fileUpload.upload(file, req, bucketName, folder);
            Cartoon cartoon = new Cartoon();
            cartoon.setId(id);
            cartoon.setCtUrl(url);
            cartoonService.updateCartoon(cartoon);
            result.put("status", "true");
            result.put("data", "gg");
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            result.put("status", "false");
            result.put("data", null);
            return result;
        }

    }

    /**
     * 根据过滤条件批量的查询
     *
     * @param
     * @return
     */
    @RequestMapping("/batchExport")
    @ResponseBody
    public Result batchExport(@RequestParam("ctName") String ctName, @RequestParam("cyName") String cyName,  @RequestParam("wkName") String wkName,HttpServletResponse response) {
        //根据条件查询集合
        Result result;
        try {
            result = cartoonService.queryByCartoonNameAndTypeAndUpdateNoPage(ctName,cyName,wkName);
            response.setHeader("Content-Disposition", "attachment;fileName=" + URLEncoder.encode(System.currentTimeMillis()+".xls", "UTF-8"));
            //创建工具类要批量导出的字段
            ExcelUtil<Cartoon> util = new ExcelUtil<>(Cartoon.class);// 创建工具类.
            boolean flag= util.getListToExcel((List<Cartoon>) result.getMsg(), "漫画名单表", response.getOutputStream());
           return new Result("下载成功",200);
        } catch (IOException e) {
            e.printStackTrace();
            return Result.FAILURE("批量下载失败");
        }
    }

}
