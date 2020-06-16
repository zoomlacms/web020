<%@ page language="C#" autoeventwireup="true" inherits="Manage_Sentiment_SiteConfig, App_Web_fuknkhfb" masterpagefile="~/Manage/I/Default.master" clientidmode="Static" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
<title>舆情监测</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<table class="table table-striped table-bordered table-hover">
<tr>
<td class="text-right">网站设置</td>
<td><asp:TextBox runat="server" ID="SName" TextMode="MultiLine" Rows="3" CssClass="form-control text_300"></asp:TextBox> <span>换行区分每一个网站</span></td> 
</tr>
<tr>
<td class="text-right">关键字</td>
<td><asp:TextBox runat="server" ID="SKey" CssClass="form-control text_300"></asp:TextBox> <span>以 , 隔开每个关键字</span></td>
</tr>
<tr>
<td class="text-right">分类选择</td>
<td><asp:DropDownList runat="server" ID="SSort" CssClass="form-control text_300">
    <asp:ListItem>不限</asp:ListItem>
    <asp:ListItem>科技</asp:ListItem>
    <asp:ListItem>新闻</asp:ListItem>
    <asp:ListItem>娱乐</asp:ListItem>
    <asp:ListItem>时尚</asp:ListItem>
    <asp:ListItem>社会</asp:ListItem>
    <asp:ListItem>百科</asp:ListItem>
    </asp:DropDownList>  
</td>
</tr>
<tr>
<td class="text-right">时间设定</td>
<td><asp:TextBox runat="server" ID="SSDate" CssClass="form-control" style="width:145px;"></asp:TextBox>~<asp:TextBox runat="server" ID="SEDate" CssClass="form-control" style="width:145px;"></asp:TextBox>  
 
</tr>
<tr>
<td></td>
<td><asp:Button runat="server" Text="保存" CssClass="btn btn-info" /></td> 

</tr>
</table>

</asp:Content>
 
