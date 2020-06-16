<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Jobs.ExamineeList, App_Web_r5bgup0z" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>面试通知信息</title>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_seta"><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>&gt;&gt;面试通知信息
</div>
<div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
    <h1 style="text-align:center">面试通知列表</h1>
    <ZL:ExGridView runat="server" ID="EGV" AutoGenerateColumns="false" AllowPaging="true" PageSize="10"  EnableTheming="False"  
                CssClass="table table-striped table-bordered table-hover" EmptyDataText="当前没有信息!!" 
                OnPageIndexChanging="EGV_PageIndexChanging" OnRowCommand="EGV_RowCommand" >
        <Columns>
            <asp:BoundField DataField="EID" HeaderText="ID">
                <HeaderStyle Width="5%" />
                <ItemStyle HorizontalAlign="Center" />                    
            </asp:BoundField>                
            <asp:TemplateField HeaderText="招聘单位" >
                <ItemTemplate>                    
                <%# GetCompany(Eval("CompanyID", "{0}"))%>
                </ItemTemplate>
                <HeaderStyle Width="50%" />
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="SendTime" HeaderText="发出时间">
                <HeaderStyle Width="20%" />
                <ItemStyle HorizontalAlign="Center" />                    
            </asp:BoundField>
            <asp:TemplateField HeaderText="操作" >
                <ItemTemplate>                    
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("EID") %>' OnClientClick="return confirm('你确定将该数据删除吗？')">删除</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
       <PagerStyle HorizontalAlign="Center" />
    <RowStyle Height="24px" HorizontalAlign="Center"  />
</ZL:ExGridView>
</div>
</form>
</body>
</html>