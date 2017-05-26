package io.github.elkan1788.nutz_learn_notes.webuploader.vo;

/**
 * Ajax操作返回结果
 * @author 凡梦星尘(elkan1788@gmail.com)
 */
public class AjaxResult {

    public static final int SUCCESS_CODE = 200;
    public static final int FAIL_CODE = 200;
    public static final int NOT_ACCESS_CODE = 401;
    public static final int FORBIN_CODE = 403;

    private boolean status;
    private String msg = "Success";
    private int code = 200;
    private Object data;

    public AjaxResult() {
    }

    public AjaxResult(boolean status, String msg, int code, Object data) {
        this.status = status;
        this.msg = msg;
        this.code = code;
        this.data = data;
    }

    public static AjaxResult ok() {
        return new AjaxResult(true, "Success", SUCCESS_CODE, null);
    }

    public static AjaxResult fail() {
        return new AjaxResult(false, "Fail", FAIL_CODE, null);
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "AjaxResult{" +
                "status=" + status +
                ", msg='" + msg + '\'' +
                ", code=" + code +
                ", data=" + data +
                '}';
    }
}
