package com.muhuan.api.service.file;

import com.muhuan.api.bean.file.FileListStandard;
import com.muhuan.api.bean.file.FileUploadStandard;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * @ClassName FileService
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/14
 * @Version 1.0.0
 **/
@FeignClient(value = "ud-file-provider",fallbackFactory = FileServiceFallbackFactory.class)
public interface FileService<T extends FileUploadStandard> {

    //文件上传
    @RequestMapping(value = "/upload",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    T upload(@RequestBody T fileMessage);

    //文件删除
    @RequestMapping(value = "/delete",method = RequestMethod.DELETE)
    boolean delete(@RequestBody T fileMessage);

//    //文件下载
//    @RequestMapping(value = "/download",method = RequestMethod.GET)
//    void download(T fileMessage, HttpServletResponse response);

    //显示路径文件信息列表
    @RequestMapping(value = "/showFolder/{path}",method = RequestMethod.GET)
    List<FileListStandard> showFolder(@PathVariable("path") String path);

//    //解压缩
//    boolean upZip(String file,String destPath);
}
