<%--
    Document   : index
    Created on : 2012-1-10, 9:56:23
    Author     : Elkan(elkan1788@gamil.com)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>国产技术强强联手</title>
    <script type="text/javascript" src="/static/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/static/vender/lhgdialog4/lhgdialog.min.js?skin=qq2011" charset="UTF-8"></script>
    <script type="text/javascript" src="/static/vender/kindeditor4/kindeditor-min.js"></script>
    <script type="text/javascript" src="/static/vender/kindeditor4/lang/zh_CN.js"></script>
    <script type="text/javascript" src="/static/vender/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/static/js/main.js" charset="UTF-8"></script>
</head>
<body>
    <div id="LKNMDiv" style="display:none">
        <table border="0" width="100%">
            <tr>
                <td width="40"align="left" height="28"> 标题：</td>
                <td><input type="text" style="width:100%;border:1px solid #bbb;" value="lhgDialog是一个功能强大且兼容面广的对话框组件，它拥有精致的界面与友好的接口"/></td>
            </tr>
            <tr>
                <td width="40"align="center">正<br/><br/><br/><br/><br/><br/>文</td>
                <td>
                    <textarea id="kindeditor4" cols="0" rows="0" style="visibility:hidden"></textarea>
                </td>
            </tr>
            <tr>
                <td width="40"align="left" height="28"> 作者：</td>
                <td><input type="text" style="width:30%;border:1px solid #bbb;" value="Elkan(elkan1788@gmail.com)" readonly="true"/></td>
            </tr>
            <tr>
                <td width="40"align="left" height="28"> 日期：</td>
                <td><input type="text" style="width:20%;border:1px solid #bbb;background:url(/static/vender/My97DatePicker/skin/datePicker.gif) no-repeat right;" onClick="WdatePicker()" value="2012-01-10"/></td>
            </tr>
        </table>
    </div>
    <div id="content" style="display:none">
        <img src="/attachments/image/20120110/20120110210928_722.png"  align="left" style="width:110px;height:110px"/>
        <span style="color:#009900;padding:3px;margin:1px;font-weight:bold">
                    Nutz 为谁而设计？
                </span><br/><br/>
        (对于Java程序员来说，它是你除SSH之外的另一个选择，一个美好的开始)
        <ul style="padding-left: 50px">
            <li>
                如果你觉得 <span style="color:#E53333;"> <strong>Hibernate</strong> </span> 控制比较繁琐， <span style="color:#E53333;"> <strong>iBatis</strong> </span> 编写SQL又比较麻烦， <span> <strong><span style="color:#337FE5;">Nutz.Dao</span></strong> </span> 专为你设计。
            </li>
            <li>
                如果你觉得在多个服务器部署或者修改 <span> <strong><span style="color:#E53333;">Spring</span></strong> </span> 配置文件很麻烦， <span> <strong><span style="color:#337FE5;">Nutz.Ioc</span></strong> </span> 专为你设计
            </li>
            <li>
                如果你觉得直接写 <span> <strong><span style="color:#E53333;">XML</span></strong> </span> 配置文件很麻烦，可视化编辑器又没控制感， <span> <strong><span style="color:#337FE5;">Nutz.Mvc</span></strong> </span> 专为你设计
            </li>
            <li>
                如果你觉得 JSON 转换很麻烦（要写超过一行以上的代码）， <span> <strong><span style="color:#337FE5;">Nutz.Json</span></strong> </span> 专为你设计
            </li>
            <li>
                如果你觉得 Java 语法不如 <span> <strong><span style="color:#E53333;">Ruby</span></strong> </span> 便捷， <span> <strong> <span style="color:#337FE5;">Nutz.Castor 以及 Nutz.Lang</span></strong> </span> 专为你设计
            </li>
            <li>
                如果你以前根本没接触过 <i><span style="color:#E53333;">SSH</span></i> ，只使用 JDBC 编程， <span style="color:#337FE5;"> <strong>整个 Nutz</strong> </span> 专门为你设计
            </li>
            <li>
                你只要在你的 classpath 下部署这个 <span> <strong><span style="color:#EE33EE;">900多K</span></strong> </span> 的小 jar 包，你会得到上述所有好处
            </li>
        </ul>
        <h4 style="color:#00D5FF;">KindEditor 是一款开源在线HTML编辑器，主要用于让用户在网站上获得所见即得编辑效果，开发人员可以用KindEditor把传统的多行文本输入框(textarea)替换为可视化的富文本输入框</h4>
        <h4 style="color:#006600;">My97DatePicker 原来这就是我一直想要的日期控件，呵~</h4>
    </div>
</body>
</html>