package com.qgh.util;

import com.aliyun.oss.OSSClient;
import com.qgh.util.aliyun.OssUtil2;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.qgh.util.aliyun.OssUtil2.createFolder;

/**
 * Created with IDEA
 * author:秦光泓
 * description:
 * Date:2020/3/30
 * Time:21:17
 */
@Service
public class FileUpload {
    Logger log= LoggerFactory.getLogger(FileUpload.class);
    /**
     * 处理文件上传服务
     * @param file 文件流
     * @param request 请求
     * @return 上传后的文件路径
     * @throws IOException
     */
    public String upload(MultipartFile file, HttpServletRequest request,String bucketName,String folder) throws IOException {
        //获取上传到服务器的路径+新建一个upload文件夹
        String realPath = request.getServletContext().getRealPath("/upload");
        //上传文件的名字
        String fileName;

        if (file.isEmpty()) {
            log.info("上传失败 File 为空");
            return null;
        }
        //获得原来的文件名
        fileName=splicing( file.getOriginalFilename());
        File targetFile = new File(realPath);
        //必须要 先创建 upload文件夹 不然会报错 文件找不到
        if (!targetFile.exists()){
           targetFile.mkdirs();
        }
        //复制上传文件到服务器
        File upFile=new File(targetFile,fileName);
        try {
            file.transferTo(upFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //获取oss对象实例
       return connectOS(upFile,bucketName,folder,fileName);
    }

    /**
     *
     * @param file 上传的文件
     * @param request 请求
     * @param bucketName 阿里云服务器上的bucketName
     * @param folder 阿里云服务器上的文件夹的名称
     * @param type 保存到本地的漫画的类型
     * @param carName 本地的根目录
     * @return  flag==1 上传封面
     * @throws IOException
     */
    public String uploadCartoon(MultipartFile file, HttpServletRequest request,String bucketName,
                                String folder,String type,String carName,String chaptorName) throws IOException {
        //获取上传到服务器的路径+新建一个upload文件夹
        //获得原来的文件名
        String fileName;
        //获取上传到服务器的路径+新建一个upload文件夹
        String realPath = request.getServletContext().getRealPath("/upload");
       // fileName=file.getOriginalFilename();
        fileName=cutFileName(file);
        File targetFile = new File(realPath);
        if (!targetFile.exists()){
            targetFile.mkdirs();
        }
        //复制上传文件到服务器
        File upFile=new File(targetFile,fileName);
        file.transferTo(upFile);
        //上传文件到阿里云
        //确定图片上传到的具体目录  根目录+类型+漫画名
        folder=folder+type+'/'+carName+'/';
        //如果章节名称为空 就是上传是章节封面到服务器的指定位置
       if (StringUtils.isNotBlank(chaptorName)) {//上传具体到章节名称下的所有图片
           folder = folder + chaptorName + "/";
       }
        return connectOS(upFile,bucketName,folder,fileName);
    }

    /**
     * 上传本地文件到阿里云服OSS务器
     * @param upFile
     * @param bucketName
     * @param folder
     * @param fileName
     * @return
     */
    public String connectOS(File upFile,String bucketName,String folder,String fileName){
        //根据阿里云上传的文件夹判断是否存在

        OSSClient ossClient=  OssUtil2.getOSSClient();
        //判断上传的文件夹是否存在
        createFolder(ossClient,bucketName,folder);
        String md5= OssUtil2.uploadObject2OSS(ossClient,upFile,bucketName,folder);
        String imgURL= OssUtil2.getUrl(fileName,folder);
        log.info("文件上传成功：" + imgURL);
        return  imgURL;
    }

    /**
     * 拼接文件名
     * @param fileName
     * @return
     */
    public  String splicing(String fileName){
         int dot=fileName.lastIndexOf(".");
         String  type=fileName.substring(dot);
         fileName=System.currentTimeMillis()+type;
         return fileName;
    }

    /**
     * 上传文件夹  ===>相当于循环的上传文件
     * @param files
     * @param request
     * @param bucketName
     * @param folder
     * @param type
     * @param carName
     * @param chaptorName
     * @return
     */
    public List<String> saveMultiFile1(MultipartFile[] files,HttpServletRequest request,String bucketName,
                                  String folder,String type,String carName,String chaptorName) {

        if (files == null || files.length == 0) {
            return null;
        }
        //保存返回的图片的地址
        List<String> urlList=new ArrayList<>();
        try {
            for (MultipartFile file : files) {

                urlList.add(uploadCartoon(file,request,bucketName,folder,type,carName,chaptorName));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return urlList;
    }

    public String cutFileName(MultipartFile file){
        String fileName=file.getOriginalFilename();
        int dot=fileName.lastIndexOf("/");
        String  newFileName=fileName;
        if(dot!=-1){
            newFileName=fileName.substring(dot+1,fileName.length());
        }
        return newFileName;
    }

}
