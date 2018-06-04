package com.six.util;

import java.io.*;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.Bucket;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.UUID;

/**
 * @ProjectName: Six_PTP
 * @ClassName: AliyunOSSClientUtil
 * @Package com.six.util
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/28 9:43
 * @Version 1.0
 */
public class AliyunOSSClientUtil {
    //阿里云API的内或外网域名
    private static String ENDPOINT;
    //阿里云API的密钥Access Key ID
    private static String ACCESS_KEY_ID;
    //阿里云API的密钥Access Key Secret
    private static String ACCESS_KEY_SECRET;
    //阿里云API的bucket名称
    private static String BACKET_NAME;
    //阿里云API的文件夹名称
    private static String FOLDER;
    //初始化属性
    static{
        ENDPOINT = OSSClientConstants.ENDPOINT;
        ACCESS_KEY_ID = OSSClientConstants.ACCESS_KEY_ID;
        ACCESS_KEY_SECRET = OSSClientConstants.ACCESS_KEY_SECRET;
        BACKET_NAME = OSSClientConstants.BACKET_NAME;
        FOLDER = OSSClientConstants.FOLDER;
    }

    /**
     * 获取阿里云OSS客户端对象
     * @return ossClient
     */
    public static  OSSClient getOSSClient(){
        return new OSSClient(ENDPOINT,ACCESS_KEY_ID, ACCESS_KEY_SECRET);
    }

    /**
     * 创建存储空间
     * @param ossClient      OSS连接
     * @param bucketName 存储空间
     * @return
     */
    public  static String createBucketName(OSSClient ossClient,String bucketName){
        //存储空间
        final String bucketNames=bucketName;
        if(!ossClient.doesBucketExist(bucketName)){
            //创建存储空间
            Bucket bucket=ossClient.createBucket(bucketName);
            System.out.println("创建存储空间成功");
            return bucket.getName();
        }
        return bucketNames;
    }

    /**
     * 删除存储空间buckName
     * @param ossClient  oss对象
     * @param bucketName  存储空间
     */
    public static  void deleteBucket(OSSClient ossClient, String bucketName){
        ossClient.deleteBucket(bucketName);
        System.out.println("删除" + bucketName + "Bucket成功");
    }

    /**
     * 创建模拟文件夹
     * @param ossClient oss连接
     * @param bucketName 存储空间
     * @param folder   模拟文件夹名如"qj_nanjing/"
     * @return  文件夹名
     */
    public  static String createFolder(OSSClient ossClient,String bucketName,String folder){
        //文件夹名
        final String keySuffixWithSlash =folder;
        //判断文件夹是否存在，不存在则创建
        if(!ossClient.doesObjectExist(bucketName, keySuffixWithSlash)){
            //创建文件夹
            ossClient.putObject(bucketName, keySuffixWithSlash, new ByteArrayInputStream(new byte[0]));
            System.out.println("创建文件夹成功");
            //得到文件夹名
            OSSObject object = ossClient.getObject(bucketName, keySuffixWithSlash);
            String fileDir=object.getKey();
            return fileDir;
        }
        return keySuffixWithSlash;
    }

    /**
     * 根据key删除OSS服务器上的文件
     * @param ossClient  oss连接
     * @param bucketName  存储空间
     * @param folder  模拟文件夹名 如"qj_nanjing/"
     * @param key Bucket下的文件的路径名+文件名 如："upload/cake.jpg"
     */
    public static void deleteFile(OSSClient ossClient, String bucketName, String folder, String key){
        ossClient.deleteObject(bucketName, folder + key);
        System.out.println("删除" + bucketName + "下的文件" + folder + key + "成功");
    }

    /**
     * 上传图片至OSS
     * @param ossClient  oss连接
     * @param file 上传文件（文件全路径如：D:\\image\\cake.jpg）
     * @param bucketName  存储空间
     * @param folder 模拟文件夹名 如"qj_nanjing/"
     * @return String 返回的唯一MD5数字签名
     * */
    public static  String uploadObject2OSS(OSSClient ossClient, MultipartFile file, String bucketName, String folder) {
        String resultStr = null;
        try {
            //MultipartFile转化为File类型
            MultipartFile file1 = file;
            CommonsMultipartFile cf= (CommonsMultipartFile)file1;
            DiskFileItem fi = (DiskFileItem)cf.getFileItem();
            //获取到传过来的文件
            File tmpfile = fi.getStoreLocation();
            //获取到传过来的文件名
            String fileName=fi.getName();
            //将传过来的文件名进行重命名
            String newfileName = UUID.randomUUID().toString() + fileName.substring(fileName.lastIndexOf("."));
            //以输入流的形式上传文件
            InputStream is = new FileInputStream(tmpfile);
            //文件名
            String tmpfileName = tmpfile.getName();
            //文件大小
            Long fileSize = tmpfile.length();
            //创建上传Object的Metadata
            ObjectMetadata metadata = new ObjectMetadata();
            //上传的文件的长度
            metadata.setContentLength(is.available());
            //指定该Object被下载时的网页的缓存行为
            metadata.setCacheControl("no-cache");
            //指定该Object下设置Header
            metadata.setHeader("Pragma", "no-cache");
            //指定该Object被下载时的内容编码格式
            metadata.setContentEncoding("utf-8");
            //文件的MIME，定义文件的类型及网页编码，决定浏览器将以什么形式、什么编码读取文件。如果用户没有指定则根据Key或文件名的扩展名生成，
            //如果没有扩展名则填默认值application/octet-stream
            metadata.setContentType(getContentType(tmpfileName));
            //指定该Object被下载时的名称（指示MINME用户代理如何显示附加的文件，打开或下载，及文件名称）
            metadata.setContentDisposition("filename/filesize=" + tmpfileName + "/" + fileSize + "Byte.");
            //上传文件   (上传文件流的形式)
            PutObjectResult putResult = ossClient.putObject(bucketName, folder + newfileName, is, metadata);
            //解析结果
            resultStr = putResult.getETag();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultStr;
    }
    public static void downFile(OSSClient ossClient, String fileUrl, HttpServletRequest request,HttpServletResponse response ) throws Exception{
        String url = fileUrl.substring(fileUrl.lastIndexOf(FOLDER));
        int i = url.indexOf("?");
        String keyname = url.substring(0, i);
        OSSObject ossObject = ossClient.getObject(BACKET_NAME, keyname);
        String newfileName = UUID.randomUUID().toString() + keyname.substring(keyname.lastIndexOf("."));
        //以流的方式读取存储空间里的文件
        BufferedInputStream in=new BufferedInputStream(ossObject.getObjectContent());
        BufferedOutputStream out=new BufferedOutputStream(response.getOutputStream());
        // 设置response参数，可以打开下载页面
        response.setHeader("Content-Disposition","attachment;filename="+URLEncoder.encode(newfileName,"utf-8"));
        byte[] car=new byte[1024];
        int L=0;
        while((L=in.read(car))!=-1){
            out.write(car, 0,L);
        }
        if(out!=null){
            out.flush();
            out.close();
        }
        if(in!=null){
            in.close();
        }
        ossClient.shutdown();
    }

    /**
     * 通过文件名判断并获取OSS服务文件上传时文件的contentType
     * @param fileName 文件名
     * @return 文件的contentType
     */
    public static  String getContentType(String fileName){
        //文件的后缀名
        String fileExtension = fileName.substring(fileName.lastIndexOf("."));
        if(".bmp".equalsIgnoreCase(fileExtension)) {
            return "image/bmp";
        }
        if(".gif".equalsIgnoreCase(fileExtension)) {
            return "image/gif";
        }
        if(".jpeg".equalsIgnoreCase(fileExtension) || ".jpg".equalsIgnoreCase(fileExtension)  || ".png".equalsIgnoreCase(fileExtension) ) {
            return "image/jpeg";
        }
        if(".html".equalsIgnoreCase(fileExtension)) {
            return "text/html";
        }
        if(".txt".equalsIgnoreCase(fileExtension)) {
            return "text/plain";
        }
        if(".vsd".equalsIgnoreCase(fileExtension)) {
            return "application/vnd.visio";
        }
        if(".ppt".equalsIgnoreCase(fileExtension) || "pptx".equalsIgnoreCase(fileExtension)) {
            return "application/vnd.ms-powerpoint";
        }
        if(".doc".equalsIgnoreCase(fileExtension) || "docx".equalsIgnoreCase(fileExtension)) {
            return "application/msword";
        }
        if(".xml".equalsIgnoreCase(fileExtension)) {
            return "text/xml";
        }
        //默认返回类型
        return "image/jpeg";
    }

   /* //测试
    public static void main(String[] args) {
        //初始化OSSClient
        OSSClient ossClient=AliyunOSSClientUtil.getOSSClient();
        //上传文件
        String files="F:\\Saved Pictures\\120.jpg,F:\\Saved Pictures\\130.jpg";
        String[] file=files.split(",");
        for(String filename:file){
            File filess=new File(filename);
            String md5key = AliyunOSSClientUtil.uploadObject2OSS(ossClient,fileName, filess, BACKET_NAME, FOLDER);
            System.out.println("上传后的文件MD5数字唯一签名:" + md5key);
            //上传后的文件MD5数字唯一签名:40F4131427068E08451D37F02021473A
        }
    }*/
}
