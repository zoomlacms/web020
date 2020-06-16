<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserCart, App_Web_v5nhprv5" enableviewstatemac="false" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>用户信誉值管理</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <div id="UserPDiv" runat="server">
        <table class="table table-striped table-bordered table-hover">
            <tr class="text-center">
                <td colspan="2" class="spacingtitle"><asp:Label ID="Lbl_t" runat="server" Text="会员资金操作"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 20%" class="text-right">会员名：</td>
                <td>
                    <a href="Userinfo.aspx?id=<%=Request.QueryString["UserID"] %>" title="查看会员信息"><asp:Label ID="lblUserName" runat="server"></asp:Label></a>
                </td>
            </tr>
            <tr>
                <td style="width: 20%" class="text-right">会员信誉值：</td>
                <td><asp:Label ID="lblPurse" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 20%" class="text-right">信誉值操作：</td>
                <td>
                    <asp:RadioButtonList ID="rblPurse" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1" Selected="True">加信誉值</asp:ListItem>
                        <asp:ListItem Value="2">减信誉值</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td style="width: 20%" class="text-right">信誉值：</td>
                <td>
                    <asp:TextBox ID="TxtScore" runat="server" CssClass="form-control text_300">0</asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[0-9]\d*|0$" ControlToValidate="TxtScore" ErrorMessage="只能输入整数"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="ScoreVa" runat="server" Display="Dynamic" ControlToValidate="TxtScore" ErrorMessage="不能为空!" />
                </td>
            </tr>
            <tr>
                <td style="width: 20%" class="text-right">备注：</td>
                <td>
                    <asp:TextBox ID="TxtDetail" runat="server" Rows="10" TextMode="MultiLine" CssClass="form-control text_300"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20%" class="text-right">同时扣减会员：</td>
                <td><asp:TextBox ID="SourceMem" runat="server" CssClass="form-control text_300" /></td>
            </tr>
            <tr class="tdbgbottom">
                <td colspan="2">
                    <asp:HiddenField ID="Hdn_t" runat="server" />
                    <asp:HiddenField ID="HdnUserID" runat="server" />
                    <asp:Button ID="EBtnSubmit" Text="确 认" OnClick="EBtnSubmit_Click" OnClientClick="" runat="server" class="btn btn-primary" />
                    <asp:Button ID="Button1" Text="取 消" runat="server" class="btn btn-primary" CausesValidation="false" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
         <ZL:ExGridView ID="EGV" runat="server" AutoGenerateColumns="false" PageSize="10" OnPageIndexChanging="EGV_PageIndexChanging" OnRowCommand="EGV_RowCommand" AllowPaging="true" IsHoldState="false" AllowSorting="True" CssClass="table table-striped table-bordered table-hover" OnRowEditing="EGV_RowEditing" EnableTheming="False" EnableModelValidation="True" EmptyDataText="无相关数据">
        <Columns>
            <asp:BoundField DataField="ExpHisID" HeaderText="ID" />
            <asp:TemplateField HeaderText="用户名">
                <ItemTemplate>
                    <%#GetUserName() %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="score" HeaderText="信誉值" />
            <asp:BoundField DataField="HisTime" HeaderText="添加时间" />
            <asp:TemplateField HeaderText="描述">
                <ItemTemplate><%#ZoomLa.Common.StringHelper.SubStr(Eval("detail"))  %></ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <asp:LinkButton runat="server" CommandName="Edits" CommandArgument='<%#Eval("ExpHisID") %>'>修改</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </ZL:ExGridView>
    </div>
   
    <table id="EditHis_Table" runat="server" visible="false" class="table table-striped table-bordered table-hover">
        <tr>
            <td style="width:20%;" class="text-right">ID：</td>
            <td><asp:Label ID="HisId_L" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="text-right">操作时间：</td>
            <td><asp:TextBox ID="HidTime_T" runat="server" CssClass="form-control text_300" onclick="WdatePicker({ dateFmt: 'yyyy/MM/dd HH:mm:ss' });"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="text-right">信誉值：</td>
            <td><asp:TextBox ID="HidSocre_T" runat="server" CssClass="form-control text_300"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="text-right">详细：</td>
            <td><asp:TextBox ID="HidDesc_T" runat="server" CssClass="form-control text_300" TextMode="MultiLine" Rows="5"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="text-center">
                <asp:Button ID="EditHid_B" OnClick="EditHid_B_Click" OnClientClick="return CheckHisFild()" runat="server" CssClass="btn btn-primary" Text="修改" />
                <asp:Button ID="Return_B" CssClass="btn btn-primary" OnClick="Return_B_Click" runat="server" Text="取消" /></td>
        </tr>
    </table>
    <asp:HiddenField ID="UserPH" runat="server" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script type="text/javascript" src="/JS/DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/JS/ZL_Regex.js"></script>
    <script>
        function CheckHisFild() {
            if (!parseInt($("#HidSocre_T").val())) {
                alert("信誉值只能为数字！");
                $("#HidSocre_T").focus();
                return false;
            } else {
                $("#HidSocre_T").val(parseInt($("#HidSocre_T").val()));
            }
            return true;
        }
    </script>
</asp:Content>
