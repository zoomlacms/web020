<%@ page language="C#" autoeventwireup="true" inherits="Common_BigFileUpload, App_Web_ympsioqh" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta charset="utf-8"/>
<title>上传文件</title>
<link type="text/css" rel="stylesheet" href="/Plugins/Uploadify/style.css" />
<script type="text/javascript" src="/JS/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/Plugins/Uploadify/jquery.uploadify.js"></script>
 <style>
     .uploadify{float:left;}
     .uploadify-queue{margin-left:10px;float:left;width:200px;}
 </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="File_UP" runat="server" />
    </div>
    </form>
    <script type="text/javascript">
        $().ready(function () {
            $("#File_UP").uploadify({
                width: 120,
                height: 35,
                auto: true,
                swf: '/Plugins/Uploadify/uploadify.swf',
                uploader: 'BigFileUpload.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&NodeId=<%=Request.QueryString["NodeId"] %>',
                buttonText: "上传附件",
                buttonCursor: 'hand',
                fileTypeExts: "*.*",
                fileTypeDesc: "请选择文件",
                fileSizeLimit: "50000KB",
                formData: {},
                queueSizeLimit: 1,
                removeTimeout: 2,
                multi: true,
                onUploadStart: function (file) { },
                onUploadSuccess: function (file, data, response) { //json,result,tru||false
                    $(parent.document).find("#txt_<%=Request.QueryString["FieldName"] %>").val(data);
                },
                onQueueComplete: function (queueData) { },
                onUploadError: function (file) { }
            });
        });
    </script>
</body>
</html>
