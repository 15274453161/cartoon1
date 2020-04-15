package com.qgh.controller.chaptor;

import com.qgh.ServiceImpl.*;

import com.qgh.pojo.Cartoon;
import com.qgh.pojo.Chaptors;
import com.qgh.pojo.Section;
import com.qgh.util.CommUtil;
import com.qgh.util.ConfigUtil;
import com.qgh.util.FileUpload;
import com.qgh.util.result.Result;
import com.qgh.util.user.UserInfor;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.stylesheets.LinkStyle;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @title:章节列表显示
 * @ClassName: ChaptorController
 * @Description:
 * @Auther: 秦光泓
 * @date 2019/10/14
 * @time 12:59
 */
@Controller
public class ChaptorController {
    private static Logger logger=LoggerFactory.getLogger(ChaptorController.class);
    @Autowired
    private ChaptorsServiceImpl chaptorsService;
    @Autowired
    private CartoonServiceImpl cartoonService;
    @Autowired
    private CategoryServiceImpl categoryService;
    @Autowired
    private UserInfor userInfor;
    @Autowired
    private FileUpload fileUpload;
    //服务器上的根目录
    private static final String FOLDER_CARTOON_ROOT="folder-cartoon-root";
    //服务器上的bucketName
    private static  final  String BUCKETNAME="bucketName";

    /**
     * 点击漫画封面进入漫画章节
     * @param cartoonId
     * @param model
     * @param currentPage
     * @param session
     * @return
     */
    @RequestMapping("/chaptor")
    public String showChaptor(int cartoonId, Model model, int currentPage, HttpSession session){

      
        Result result= chaptorsService.searchPage(cartoonId,currentPage);
      
        //查询漫画信息
        Result cartoon= cartoonService.selectById(cartoonId);
      
        //设置漫画信息
        model.addAttribute("cartoon",cartoon.getMsg());

        //查询漫画分类
        Result category= categoryService.seletcById(((Cartoon)cartoon.getMsg()).getCtCyId());
       
        //设置漫画信息
        model.addAttribute("category",category.getMsg());

       //设置章节
       model.addAttribute("chaptors",result.getMsg());
       //设置当前页

        model.addAttribute("currentPage",result.getPageSize());
        //设置总页数

        model.addAttribute("Pages",result.getPages());
        //设置第一话的信息

        
         Integer firsId= chaptorsService.searchByCtId(cartoonId);
         if (firsId==null){
             firsId=1;//防止出错传到前端为空
         }
         model.addAttribute("firsId",firsId);
         userInfor.user(model,session);

         return "chaptor";
    }

    /**
     * 根据漫画id查询当前漫画的章节内容
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/admin/showChaptor")
    public String showChaptor(Model model, @RequestParam int id,int pageNo,int pageSize){
        showAdminChaptor(model,id,pageNo,pageSize);
        return "admin_chaptor";
    }


    public void showAdminChaptor(Model model,int id,int pageNo,int pageSize){
        Chaptors chaptors=new Chaptors();
        chaptors.setCtId(id);
        chaptors.setPageNo(pageNo);
        chaptors.setPageSize(pageSize);
        //根据漫画名称查询漫画下的章节
        Result result=  chaptorsService.queryById(chaptors);
        model.addAttribute("chaptorList",result);
        System.out.println(result.getPageSize());
        model.addAttribute("chaptor",id);
    }

    /**
     * 发布回填
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/admin/publishChaptor")
    public String publishChaptor(int id, Model model){
       return comm(id,model);
    }


    public String comm(int id, Model model){
        //根据漫画id 查询漫画名称
        Result cartoon=  cartoonService.queryAllByCartoonId(id);
        System.out.println(cartoon);
        //返回章节名称
        model.addAttribute("cartoon",cartoon.getMsg());

        return "chaptorAdd";
    }


    /**
     *
     * @param chaptorName 章节名称
     * @param id 漫画id
     * @param pay 是否付费
     * @param bgMusicUrl 背景音乐
     * @param file 漫画章节封面
     *             cyName 分类
     * @param model
     * @return
     */
    @RequestMapping("/admin/okPublish")
    public String okPublish(String chaptorName, Integer id, int pay, String cyName, HttpServletRequest req,String carName,
                            @RequestParam("bgMusicUrl") MultipartFile bgMusicUrl, @RequestParam("file") MultipartFile file,MultipartFile[] sectionFolder,Model model){
        //插入章节表
        Chaptors chaptors=new Chaptors();
        String coverUrl=null,musicUrl=null;
        System.out.println("发布漫画");
        try {
            //上传封面
            if (StringUtils.isNotBlank(file.getOriginalFilename())){
                ConfigUtil cfg = ConfigUtil.getInstance();
                String bucketName = cfg.get(BUCKETNAME);
                String folder = cfg.get(FOLDER_CARTOON_ROOT);//获得本地下载漫画的根目录
                coverUrl = fileUpload.uploadCartoon(file, req, bucketName, folder,cyName,carName,chaptorName);
                chaptors.setChaptorUrl(coverUrl);
            }
            //上传音乐
            if (StringUtils.isNotBlank(bgMusicUrl.getOriginalFilename())){
                ConfigUtil cfg = ConfigUtil.getInstance();
                String bucketName = cfg.get(BUCKETNAME);
                String folder = cfg.get(FOLDER_CARTOON_ROOT);//获得本地下载漫画的根目录
                coverUrl = fileUpload.uploadCartoon(bgMusicUrl, req, bucketName, folder,cyName,carName,chaptorName);
                chaptors.setBgMusicUrl(musicUrl);
            }
            //上传章节内容
            List<String> sectionUrl=null;
            List<Section> sections=null;
            if (sectionFolder!=null&&sectionFolder.length>=0&&StringUtils.isNotBlank(sectionFolder[0].getOriginalFilename())){
                ConfigUtil cfg = ConfigUtil.getInstance();
                String bucketName = cfg.get(BUCKETNAME);
                String folder = cfg.get(FOLDER_CARTOON_ROOT);//获得本地下载漫画的根目录
                sectionUrl= fileUpload.saveMultiFile1(sectionFolder, req, bucketName, folder,cyName,carName,chaptorName);
            }
            //插入章节表

            chaptors.setCtId(id);
            chaptors.setChaptorName(chaptorName);
            chaptors.setUpdateTime(CommUtil.getNowDateLongStr(null));
            chaptors.setPay(pay);
            chaptors.setChaptorUrl(coverUrl);
            chaptors.setBgMusicUrl(musicUrl);
            //更新章节表
            chaptorsService.insertData(chaptors);

           //跟新章节下的漫画内容表
            //查询章节id
            Integer cid=   chaptorsService.queryByName(chaptors.getChaptorName());
            if (sectionUrl!=null){
               for (int i=0;i<sectionUrl.size();++i){
                     Section section=new Section();
                     section.setSectionUrl(sectionUrl.get(i));
                     section.setChaptorId(cid);
               }
            }
           // showAdminChaptor(model,id,1,10);
        } catch (IOException e) {
            e.printStackTrace();
        }
        model.addAttribute("flag","1");
        model.addAttribute("id",id);
        return  comm(id,model);
    }

}
