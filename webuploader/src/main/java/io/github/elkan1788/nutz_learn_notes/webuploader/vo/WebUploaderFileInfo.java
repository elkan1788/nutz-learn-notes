package io.github.elkan1788.nutz_learn_notes.webuploader.vo;

/**
 * WebUploader 上传文件信息实体
 * @author 凡梦星尘(elkan1788@gmail.com)
 */
public class WebUploaderFileInfo {

    private String id;
    private String name;
    private String type;
//    @Param(value = "lastModifiedDate", dfmt = "EEE MMM dd yyyy hh:mm:ss 'GMT'Z (z)")
    private String lastModifiedDate;
    private Long size;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLastModifiedDate() {
        return lastModifiedDate;
    }

    public void setLastModifiedDate(String lastModifiedDate) {
        this.lastModifiedDate = lastModifiedDate;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "WebUploaderFileInfo{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", lastModifiedDate=" + lastModifiedDate +
                ", size=" + size +
                '}';
    }
//
//    public static void main(String[] args) throws  Exception {
//        String tmp = "Thu May 25 2017 07:16:32 GMT+0800 (CST)";
//        SimpleDateFormat format = new SimpleDateFormat("EEE MMM dd yyyy hh:mm:ss 'GMT'Z (z)", Locale.ENGLISH);
//        System.out.println(format.parse(tmp).toString());
//    }
}
