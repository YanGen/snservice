package com.muhuan.api.service.file;

import com.muhuan.api.bean.file.FileListStandard;
import com.muhuan.api.bean.file.FileUploadStandard;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @ClassName FileServiceFallbackFactory
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/14
 * @Version 1.0.0
 **/
@Component
public class FileServiceFallbackFactory implements FallbackFactory<FileService> {

    @Override
    public FileService create(Throwable throwable) {

        return new FileService() {

            @Override
            public FileUploadStandard upload(FileUploadStandard fileMessage) {
                return null;
            }

            @Override
            public boolean delete(FileUploadStandard fileMessage) {
                return false;
            }

//            @Override
//            public void download(FileUploadStandard fileMessage, HttpServletResponse response) {
//
//            }

            @Override
            public List<FileListStandard> showFolder(String path) {
                return null;
            }

//            @Override
//            public boolean upZip(String file, String destPath) {
//                return false;
//            }
        };

    }

}


