﻿<%@ page title="" language="C#" masterpagefile="~/User/Default.master" autoeventwireup="true" inherits="CN_nite_Content_VideoHouseApply, App_Web_whva1ccx" clientidmode="Static" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<asp:Content ContentPlaceHolderID="Head" runat="Server">
   <title>视频房间申请</title>
</asp:Content>
<asp:Content ContentPlaceHolderID="Content" runat="Server">
   <div>
           <ol class="breadcrumb">
        <li>您现在的位置：<a title="网站首页" href="/"><%= Call.SiteName%></a></li>
        <li><a title="会员中心" href="/User/Default.aspx">会员中心</a></li>
        <li  class="active">视频房间申请</li>
    </ol><asp:HiddenField ID="Hidd" runat="server" /> 

    <table class="table table-bordered table-hover table-striped">
        <tr align="center">
            <td colspan="6" class="spacingtitle">
                <asp:Label  style=" margin-left:-800px;" ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr class="WebPart">
            <td class="tdbgclass" align="right">
                <strong>房间名称：</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox class="form-control" ID="txtHouseName" runat="server" Width="267px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFHouseName" runat="server" 
                    ControlToValidate="txtHouseName" ErrorMessage="房间名称不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart">
            <td class="tdbgleft" align="right">
                <strong>职&nbsp;&nbsp;位：</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:DropDownList ID="Position" CssClass="form-control pull-left" runat="server" Width="130px" 
                    DataTextField="PositionName" DataValueField="PositionID"></asp:DropDownList>
            </td>           
        </tr>
        <tr class="WebPart">
            <td class="tdbgleft" align="right">
                <strong>房间人数：</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:DropDownList ID="dlHousePersonNum"  CssClass="form-control pull-left" runat="server" Width="130px">
                <asp:ListItem Value="5">1~5人</asp:ListItem>
                <asp:ListItem Value="10">6~10人</asp:ListItem>
                <asp:ListItem Value="30">11~30人</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="6" style=" padding-left:400px;">
                <asp:Button CssClass="btn btn-primary" ID="EBtnSubmit" Text="申请" runat="server" 
                    onclick="EBtnSubmit_Click"/>
                &nbsp;
                <%--<input name="Cancel" type="button" id="Cancel" value="取消" onclick="window.location.href='#;" />--%>
                &nbsp;                
            </td>
        </tr>      
    </table>
    </div>
</asp:Content>
