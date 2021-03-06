﻿<%@ page language="C#" autoeventwireup="true" inherits="MIS_ZLOA_ViewDrafting, App_Web_sz335chi" clientidmode="Static" masterpagefile="~/User/Empty.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
<title>公文预览</title>
<script type="text/javascript" src="/Plugins/JqueryUI/spin/spin.js"></script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div class="draftnav"><a href="/MIS/OA/Main.aspx">行政公文</a>/<asp:Label runat="server" ID="title_lab" Text="公文起草"></asp:Label>
    <span title="打印公文"><a href="/Common/PrintPage.aspx?appID=<%=Request.QueryString["ID"] %>" target="_blank">
                <img class="startprint" onclick="doprint()" alt="" src="/Template/V3/style/images/print-btn.png" style="position:relative;width:75px;height:22px;top:5px;" /></a></span></div>
<div class="panel panel-primary" style="margin:10px;">
    <div class="panel-heading">
        <h3 class="panel-title">公文添加成功</h3>
    </div>
    <div class="panel-body">
        <table class="table table-bordered table-hover">
            <tr><td style="width:150px; text-align:right;">标题：</td><td><asp:Label ID="LBTitle" runat="server" Text="Label"></asp:Label></td></tr>
            <tr><td style="width:150px; text-align:right;">主题词：</td><td><asp:Label ID="LBKeyWords" runat="server" Text="Label"></asp:Label></td></tr>
            <tr><td style="width:150px; text-align:right;">添加人：</td><td><asp:Label ID="AddUSer" runat="server" Text="Label"></asp:Label></td></tr>
            <tr><td style="width:150px; text-align:right;">添加时间：</td><td><asp:Label ID="AddTime" runat="server" Text="Label"></asp:Label></td></tr>
            <tr><td style="width:150px; text-align:right;"><asp:Label runat="Server" ID="docType2" Text="主办人"></asp:Label> ：</td>
                <td>
                    <asp:Label runat="server" ID="RUserName_Lab" style="height:60px;"></asp:Label>
                    <asp:HiddenField runat="server" ID="RUserID_Hid" />
                </td>
            </tr>
            <tr runat="server" id="docType_Tr"><td style="width:150px; text-align:right;">协办人：</td>
                <td>
                    <asp:Label runat="server" ID="CUserName_Lab" style="height:60px;"></asp:Label>
                    <asp:HiddenField runat="server" ID="CUserID_Hid" />
                </td>
            </tr>
            <tr>
                <td style="width:150px; text-align:right;">操作</td>
                <td>
                    <asp:Button ID="EditButton" CssClass="btn btn-primary" OnClick="EditButton_Click" runat="server" Text="重新修改" />
                    <asp:Button ID="AddButton" CssClass="btn btn-primary" OnClick="AddButton_Click" runat="server" Text="继续添加" />
                    <asp:Button ID="ListButton" CssClass="btn btn-primary" OnClick="ListButton_Click" runat="server" Text="发文管理" />
                    <input runat="server" type="button" id="preViewBtn" class="btn-primary" onclick="disWin();" value="预览流程" />
                    <span runat="server" id="remind" style="color:green;font-size:14px;font-family:'Microsoft YaHei';"></span>
                </td>
            </tr>
        </table>
    </div>
</div>
    <script type="text/javascript">
        function disWin() {
            var iTop = (window.screen.availHeight - 30 - 550) / 2;
            var iLeft = (window.screen.availWidth - 10 - 960) / 2;
            var myWin = window.open('/Mis/OA/PreViewProg.aspx?proID=<%=moa.ProID%>', 'newwindow', 'height=550, width=960,top=' + iTop + ',left=' + iLeft + ',toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no');
        }
        //function UserFunc(json)
        //{
        //    var uname = "";
        //    var uid = "";
        //    for (var i = 0; i < json.length; i++)
        //    {
        //        uname += json[i].UserName + ",";
        //        uid += json[i].UserID + ",";
        //    }
        //    if (uid) uid = uid.substring(0,uid.length-1);
        //    $("#RUserName_Lab").text(uname);
        //    $("#RUserID_Hid").val(uid);
        //}
        //function FreeCheck()
        //{
        //    if ($("#RUserName_Lab").text()=="" || $("RUserID_Hid").val()=="")
        //    {
        //        alert("尚未选定投递人!!!");
        //        return false;
        //    }
        //    return true;
        //}
        ////----等待图标
        //var spin;
        //function ShowFoo()
        //{
        //    target = document.getElementById("foo");
        //    spin = new Spinner().spin(target);
        //}
        //function HideFoo()
        //{
        //    if (spin)spin.stop();
        //}
    </script>
</asp:Content>
