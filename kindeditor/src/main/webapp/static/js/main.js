var editor = null;
KindEditor.ready(function(k){
    editor = k.create('#kindeditor4',{
        width: '100%',
        height: 370,
        resizeType: 0,
        cssPath : ['static/vender/kindeditor4/plugins/code/prettify.css'],
        filterMode: true,
        allowFileManager: true,
        uploadJson: 'nutz/ke4plugin/upload.htm',
        fileManagerJson : 'nutz/ke4plugin/manager.htm'
    });
    editor.html($("#content").html());
});

$(function(){
    $.dialog({
        id: 'LKNMDemo',
        title:'LHGDialog4、KindEditor4、Nutz1.r.61、My97DatePicker整合示例',
        width: 750,
        //drag: false,
        //fixed: true,
        max: false,
        padding: 0,
        ok: function(){
            $.dialog.tips('OK, 博文发表成功!');
            return false;
        },
        content: $("#LKNMDiv").html()
    });

});