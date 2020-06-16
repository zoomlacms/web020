﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Boss_Bosstree, App_Web_jjczyxqj" enableviewstatemac="false" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
   <title>加盟商管理</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
     <table class="table table-striped table-bordered table-hover">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td  height="24" align="center" class="title">
                    <span class="tdbgleft">
                        
                    </span>
                </td>
                <td   align="center" class="title">
                    代理商名称
                </td><td   align="center" class="title">
                  代理商用户名
                </td>
                <td    align="center" class="title">
                    合同协议号
                </td>
                
                <td   align="center" class="title">
                    代理商费用
                </td>
                <td   align="center" class="title">
                   法定代理人 
                </td>
                <td  align="center" class="title">
                 操作 
                </td>
            </tr>
            <asp:Repeater ID="Manufacturerslist" runat="server">
                <ItemTemplate>
                    <tr>
                        <td height="24" align="center">
                      <input type="checkbox" name="Item" value="<%#Eval("nodeid") %>" />
                        </td>
                        <td height="24" align="center">
                          <a href="BossInfo.aspx?nodeid=<%#Eval("nodeid") %>&parentid=<%#Eval("parentid") %>">  <%#Eval("CName") %> </a>
                        </td>
                        <td height="24" align="center">
                       
                          <a href="/manage/User/UserInfo.aspx?id=<%#Eval("UserID") %>"> <%#UserNames(DataBinder.Eval(Container, "DataItem.UserID", "{0}"))%>  </a>  
                        </td>
                        <td height="24" align="center">
                        
                              <%#Eval("ContractNum") %> 
                            
                        </td>
                         <td height="24" align="center"> 
                         <%#formatcs(DataBinder.Eval(Container, "DataItem.CMoney", "{0}"))%>   
                        </td>
                        <td height="24" align="center">
                            <%#Eval("Agent") %> 
                        </td>
                        <td height="24" align="center">
                         <a href="EditBoss.aspx?nodeid=<%#Eval("nodeid") %> ">修改</a>
                            <a href="BossInfo.aspx?nodeid=<%#Eval("nodeid") %>&parentid=<%#Eval("parentid") %>">查看</a>
                          <a href="Bosstree.aspx?nodeid=<%#Eval("nodeid") %>&types=del">删除</a>
                    </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td style="text-align:center"><asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" /></td>
                <td height="24" colspan="7" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条数据
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：
                    <asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条数据/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
<tr class="tdbg">
                <td height="24" colspan="7">
                    <asp:Button ID="Button2" Text="删除选中加盟商" class="btn btn-primary" runat="server"
                        OnClick="Button2_Click" />
                </td>
            </tr>
         </tbody>
    </table>
     <div id="Guide_back" style=" display:none">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">招商管理</div>
            </li>
            <li id="Guide_main">
                <div style="height: 25px; text-indent: 25px; line-height: 25px;">
                    <a href="Bosstree.aspx">显示所有</a>&nbsp;&nbsp;招商名：
                    <table><tr><td> 
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="#fff" CssClass="l_inpnon"></asp:TextBox></td><td>
                    <asp:Button ID="Button1" CssClass="C_sch" runat="server" Text="" OnClick="Button1_Click" />
                        </td></tr></table>
                </div>
                <div id="Guide_box" style="height: 600px">
                    <asp:TreeView ID="tvNav" runat="server" ExpandDepth="1" ShowLines="True" EnableViewState="False" NodeIndent="10">
                        <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
                        <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
                        <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                        <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                    </asp:TreeView>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
      <%--  <script type="text/javascript" src="/JS/menu.js"></script>--%>
    <script type="text/javascript" src="/JS/SelectCheckBox.js"></script>
    <script type="text/javascript">
        function Switch(obj) {
            obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
            var nextDiv;
            if (obj.nextSibling) {
                if (obj.nextSibling.nodeName == "DIV") {
                    nextDiv = obj.nextSibling;
                }
                else {
                    if (obj.nextSibling.nextSibling) {
                        if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                            nextDiv = obj.nextSibling.nextSibling;
                        }
                    }
                }
                if (nextDiv) {
                    nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
                }
            }
        }
        function OpenLink(lefturl, righturl) {
            if (lefturl != "") {
                parent.frames["left"].location = lefturl;
            }
            try {
                parent.MDIOpen(righturl); return false;
            } catch (Error) {
                parent.frames["main_right"].location = righturl;
            }
        }
        function gotourl(url) {
            try {
                parent.MDILoadurl(url); void (0);
            } catch (Error) {
                parent.frames["main_right"].location = "../" + url; void (0);
            }
        }
        function LinkClick(str) {
            if (confirm('确实要删除此加盟商吗？')) {
                //location.href = 'Bosstree.aspx?type=del&id=' + str;
                gotourl("Boss/Bosstree.aspx?type=del&id=" + str);
            }
        }
    </script>
</asp:Content>