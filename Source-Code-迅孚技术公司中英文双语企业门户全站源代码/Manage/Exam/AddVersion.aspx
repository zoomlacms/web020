<%@ page language="C#" autoeventwireup="true" inherits="Manage_Exam_AddVersion, App_Web_gzlj2emr" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="~/Manage/I/ASCX/TreeTlpDP.ascx" TagPrefix="ZL" TagName="TreeTlp" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>版本管理</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <table class="table table-bordered table-striped">
        <tr><td class="td_m">版本名称：</td><td>
            <asp:TextBox runat="server" ID="VName_T" CssClass="form-control text_300" />
            <asp:RequiredFieldValidator runat="server" ID="RV1" ControlToValidate="VName_T" ForeColor="Red" ErrorMessage="名称不能为空" />
        </td></tr>
        <tr><td class="td_m">版本时间：</td><td><asp:TextBox runat="server" ID="VTime_T" CssClass="form-control text_300" /></td></tr>
        <tr><td class="td_m">年级：</td><td>
           <asp:RadioButtonList ID="Grade_Radio" runat="server" RepeatDirection="Horizontal" DataValueField="GradeID" DataTextField="GradeName"></asp:RadioButtonList>
        </td></tr>
        <tr><td class="td_m">科目：</td><td>
            <ZL:TreeTlp ID="NodeTree" Selected="Node_Hid" NodeID="C_id" Pid="C_ClassID" Name="C_ClassName" EmpyDataText="请选择科目!" runat="server" />
            <asp:HiddenField ID="Node_Hid" runat="server" />
                                     </td></tr>
        <tr><td class="td_m">册序：</td><td><asp:TextBox runat="server" ID="Volume_T" CssClass="form-control text_300" /></td></tr>
        <tr><td class="td_m">备注：</td><td><asp:TextBox runat="server" ID="Remind_T" CssClass="form-control text_300" TextMode="MultiLine" style="height:120px;"/></td></tr>
        <tr><td></td><td>
            <asp:Button runat="server" ID="Save_Btn" CssClass="btn btn-primary" Text="确定" OnClick="Save_Btn_Click" />
            <a href="VersionList.aspx" class="btn btn-primary">返回</a>
        </td></tr>
    </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script src="/JS/ICMS/ZL_Common.js"></script>
</asp:Content>