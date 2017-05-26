<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" trimDirectiveWhitespaces="true" language="java" %>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>WebUploader示例</title>
        <link rel="stylesheet" href="/static/vender/bootstrap3/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="/static/vender/bootstrap3/css/bootstrap-theme.min.css"/>
        <link rel="stylesheet" href="/static/vender/webuploader/webuploader.css"/>
        <link rel="stylesheet" href="/static/css/main.css"/>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img src="/static/img/nutz-logo2.png" id="nutz-logo">
                    <a class="navbar-brand" href="#">WebUploader with Nutz</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Demo</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div style="margin: 100px 15%; width: 70%;text-align: center">
            <h1>Demo Run</h1>
            <p>前端使用百度<b>WebUploader</b>，后端服务用<b>Nutz</b>实现，Enjoy it by yourself！</p>
            <div id="uploader">
                <div class="queueList">
                    <div id="dndArea" class="placeholder">
                        <div id="filePicker"></div>
                        <p>或将照片拖到这里</p>
                    </div>
                </div>
                <div class="statusBar" style="display:none;">
                    <div class="progress">
                        <span class="text">0%</span>
                        <span class="percentage"></span>
                    </div>
                    <div class="info"></div>
                    <div class="btns">
                        <div id="filePicker2"></div>
                        <div class="uploadBtn">开始上传</div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="/static/js/jquery-1.12.4.min.js" charset="UTF-8"></script>
    <script src="/static/vender/bootstrap3/js/bootstrap.min.js" charset="UTF-8"></script>
    <script src="/static/vender/webuploader/webuploader.js" charset="UTF-8"></script>
    <script src="/static/js/main.js" charset="UTF-8"></script>
</html>