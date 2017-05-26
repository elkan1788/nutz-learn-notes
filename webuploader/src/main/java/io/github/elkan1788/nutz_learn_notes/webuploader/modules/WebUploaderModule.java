package io.github.elkan1788.nutz_learn_notes.webuploader.modules;

import io.github.elkan1788.nutz_learn_notes.webuploader.vo.AjaxResult;
import io.github.elkan1788.nutz_learn_notes.webuploader.vo.WebUploaderFileInfo;
import org.nutz.lang.Files;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.upload.TempFile;
import org.nutz.mvc.upload.UploadAdaptor;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * WebUploader专用
 * @author 凡梦星尘(elkan1788@gmail.com)
 */
@At("/webuploader")
public class WebUploaderModule {

    private static final Log logger = Logs.get();

    private static final String UPLOAD_SAVE_PATH = "attachments";

    private static final SimpleDateFormat SDF = new SimpleDateFormat("yyyyMMddHHmmssSSS");

    /**
     * 上传文件路径
     * @param uploadFile    WebUploader默认的Form Element Name就是file
     * @param uploadFileInfo    根据WebUploader抓取的图片生成的实体
     * @return  AjaxReturn {@link AjaxResult}
     */
    @At
    @AdaptBy(type = UploadAdaptor.class, args = { "ioc:uploadImg" })
    @Ok("json")
    public AjaxResult uploads(@Param("file") TempFile uploadFile, @Param("..")WebUploaderFileInfo uploadFileInfo,
                              HttpServletRequest req) {
        AjaxResult ar = AjaxResult.ok();

        try {
            String fileName = newFileName(uploadFile.getSubmittedFileName());
            String savePath = req.getServletContext().getRealPath(UPLOAD_SAVE_PATH);
            copyFile(uploadFile.getFile(), savePath+"/"+fileName);

            ar.setData(uploadFileInfo);
        } catch (Exception e) {
            logger.errorf("Copy upload temp file to dest failure!!!", e.getLocalizedMessage());
        }

        return ar;
    }

    public String newFileName(String sourceFileName) {
        String newFileName = SDF.format(new Date());
        String extName = sourceFileName.substring(sourceFileName.lastIndexOf("."));
        newFileName = newFileName.concat(extName);
        logger.infof("Upload file simple info: [source: %s], [target: %s]", sourceFileName, newFileName);
        return newFileName;
    }

    public void copyFile(File source, String targetPath) throws IOException {

        Files.copyFile(source, new File(targetPath));
        logger.infof("Copy file to target[%s] success.", targetPath);

    }
}
