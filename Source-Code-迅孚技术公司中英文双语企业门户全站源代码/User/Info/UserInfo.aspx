<%@ page language="C#" masterpagefile="~/User/Default.master" autoeventwireup="true" inherits="ZoomLa.WebSite.User.UserInfo, App_Web_ks13v1gt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>注册信息</title>
    </asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div id="pageflag" data-nav="home" data-ban="UserInfo"></div>
<div class="container margin_t5"> 
    <ol class="breadcrumb">
        <li>您现在的位置：<a href="/" title="网站首页"><%= Call.SiteName%></a></li>
        <li><a title="会员中心" href="/User/Default.aspx">会员中心</a></li>
        <li><a href="UserInfo.aspx">账户管理</a></li>
        <li class="active">注册信息</li> 
    </ol> 
</div> 
<div class="container">
    <div runat="server" id="Login" class="us_seta" visible="false">
        <table class="table table-striped table-bordered table-hover">
            <tr>
                <td colspan="2" class="text-center"><font color="red">本页需支付密码才能登入请输入支付密码</font></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="Second" CssClass="form-control pull-right" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width:50%;">
                    <asp:Button runat="server" ID="sure" CssClass="btn btn-primary" Text="确定" OnClick="sure_Click" />
                </td>
            </tr>
        </table>
    </div>  
    <div runat="server" id="DV_show">
        <div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
            <ul class="nav nav-tabs">
                <li class="active"><a href="UserInfo.aspx">注册信息</a></li>
                <li><a href="UserBase.aspx">基本信息</a></li>
                <li><a href="UserBase.aspx?sel=Tabs1">头像设置</a></li>
                <li><a href="DredgeVip.aspx">VIP信息</a></li>
                <li><a href="ListProfit.aspx">我的收益</a></li>
            </ul>
            <table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="table table-striped table-bordered table-hover">
                <tr>
                    <td class="text-center" colspan="4">
                        注册信息
                    </td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">用户名：</td>
                    <td style="width: 250px; "><asp:Label ID="LblUser" runat="server" ></asp:Label></td>
                    <td style="width: 200px; text-align: right">Email：</td>
                    <td style="width: 250px; "><asp:Label ID="LblEmail" runat="server" ></asp:Label></td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">所属用户组：</td>
                    <td style="width: 250px; ">
                        <asp:Label ID="LblGroup" runat="server" ></asp:Label></td>
                    <td style="width: 200px; text-align: right">加入用户组时间：</td>
                    <td style="width: 250px; "><asp:Label ID="LblJoinTime" runat="server" ></asp:Label></td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">注册时间：</td>
                    <td style="width: 250px; "><asp:Label ID="LblRegTime" runat="server" ></asp:Label></td>
                    <td style="width: 200px; text-align: right">登录次数：</td>
                    <td style="width: 250px; "><asp:Label ID="LblLoginTimes" runat="server" ></asp:Label></td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">最近登录时间：</td>
                    <td style="width: 250px; "><asp:Label ID="LblLastLogin" runat="server" ></asp:Label></td>
                    <td style="width: 200px; text-align: right">最近登录IP：</td>
                    <td style="width: 250px; "><asp:Label ID="LblLastIP" runat="server" ></asp:Label></td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">最近修改密码时间：</td>
                    <td style="width: 250px; "><asp:Label ID="LblLastModify" runat="server" ></asp:Label></td>
                    <td style="width: 200px; text-align: right">最近被锁定时间：</td>
                    <td style="width: 250px; "><asp:Label ID="LblLastLock" runat="server" ></asp:Label></td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">余额：</td>
                    <td style="width: 250px; ">
                        <a href="ConsumeDetail.aspx?SType=1" title="点击查看变更详情"><asp:Label ID="Purse_L" runat="server"></asp:Label></a>
                    </td>
                    <td style="width: 200px; text-align: right">银币：</td>
                    <td style="width: 250px; ">
                         <a href="ConsumeDetail.aspx?SType=2" title="点击查看变更详情"><asp:Label ID="Sicon_L" runat="server"></asp:Label></a>
                    </td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">积分：</td>
                    <td style="width: 250px; ">
                        <a href="ConsumeDetail.aspx?SType=3" title="点击查看变更详情"><asp:Label ID="Point_L" runat="server"></asp:Label></a></td>
                    <td style="width: 200px; text-align: right">点券：</td>
                    <td style="width: 250px; ">
                        <a href="ConsumeDetail.aspx?SType=4" title="点击查看变更详情"><asp:Label ID="UserPoint_L" runat="server"></asp:Label></a>
                    </td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                     <td style="width: 200px; text-align: right">虚拟币：</td>
                    <td style="width: 250px; ">
                        <a href="ConsumeDetail.aspx?SType=5" title="点击查看变更详情"><asp:Label ID="DummyPurse_L" runat="server"></asp:Label></a>
                    </td>
                    <td style="width: 200px; text-align: right">卖家积分：</td>
                    <td style="width: 250px; "><asp:Label ID="LblboffExp" runat="server" ></asp:Label></td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">消费积分：</td>
                    <td style="width: 250px; "><asp:Label ID="LblConsumeExp" runat="server" ></asp:Label></td>
                    <td style="width: 200px; text-align: right">等级：</td>
                    <td style="width: 250px; "><span id="LvIcon_Span" runat="server"></span> <asp:Label ID="gradeTxt" runat="server" ></asp:Label></td>
                </tr>
                <tr class="tdbg" style="width: 100%">
                    <td style="width: 200px; text-align: right">推荐人：</td>
                    <td style="" colspan="3"><asp:Label ID="LblParentUserID" runat="server" Text=""></asp:Label></td>
                </tr>
                <asp:Literal runat="server" ID="GroupModelField_Li"></asp:Literal>
                <tr class="tdbg" style="width: 100%">
                    <td class="btn_green text-center" colspan="4">
                        <input id="Button2" type="button" value="基本信息" class="btn btn-primary" onclick="javascript: location.href = 'UserBase.aspx'" />&nbsp;
                         <input id="Button17" type="button" value="修改密码" class="btn btn-primary" onclick="javascript: location.href = '/User/ChangPSW.aspx'" />&nbsp;
                        <input id="Button9" type="button" value="兑换金额" class="btn btn-primary" onclick="javascript: location.href = 'ExchangeDP.aspx'" />&nbsp;
                        <input id="Button12" type="button" value="拍宝套餐" class="btn btn-primary hidden" onclick="javascript: location.href = 'MyPaibao.aspx'" />&nbsp;
                        <input id="Button7" type="button" value="兑换点券" class="btn btn-primary" onclick="javascript: location.href = 'ExchangePoint.aspx'" />&nbsp;
                        <input id="Button6" type="button" value="兑换有效期" class="btn btn-primary" onclick="javascript: location.href = 'ExchangePeriod.aspx'" />&nbsp;
                        <input id="Button1" type="button" value="兑换积分" class="btn btn-primary" onclick="javascript: location.href = 'ExchangeIntegral.aspx'" />&nbsp;
                        <input id="Button13" type="button" value="兑换银币" class="btn btn-primary" onclick="javascript: location.href = 'ExchangeSilverCoin.aspx'" />&nbsp;
                        <div style="height:5px;"></div>
                        <input id="Button3" type="button" value="充值资金" class="btn btn-primary" onclick="javascript: window.open('/PayOnline/SelectPayPlat.aspx')" />&nbsp;
                        <input id="Button10" type="button" value="金额明细" class="btn btn-primary" onclick="javascript: location.href = 'MoneyInfo.aspx'" />&nbsp;
                        <input id="Button5" type="button" value="点券明细" class="btn btn-primary" onclick="javascript: location.href = 'PointHis.aspx'" />&nbsp;
                        <input id="Button8" type="button" value="积分明细" class="btn btn-primary" onclick="javascript: location.href = 'ExpHis.aspx'" />&nbsp; 
                        <input id="Button11" type="button" value="会员升级" class="btn btn-primary" onclick="javascript: location.href = 'MemberUp.aspx'" />&nbsp;       
                        <input id="Button15" type="button" value="赠送资金" class="btn btn-primary" onclick="javascript: location.href = 'PostPurse.aspx'" />&nbsp;       
                        <input id="Button16" type="button" value="赠送银币" class="btn btn-primary" onclick="javascript: location.href = 'PostCoin.aspx'" />&nbsp;       
                        <input id="Button14" type="button" value="赠送积分" class="btn btn-primary" onclick="javascript: location.href = 'PostPoint.aspx'" />&nbsp;    
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<div class="u_sign" id="u_UserInfo"></div>      
<script>
$("#mimenu_btn").click(function(e) { 
	if($(".user_mimenu_left").width()>0){ 
 		$(".user_mimenu_left ul").fadeOut(100);
		$(".user_mimenu_left").animate({width:0},200); 	
	}
	else{ 
		$(".user_mimenu_left").animate({width:150},300); 
		$(".user_mimenu_left ul").fadeIn();
	}
}); 
//会员搜索
$("#sub_btn").click(function(e) { 
    if($("#key").val()=="")
		alert("搜索关键字为空!");
	else
		window.location="/User/SearchResult.aspx?key="+escape($("#key").val());	
});
//搜索回车事件
function IsEnter(obj) {
	if (event.keyCode == 13) {
		$("#sub_btn").click(); return false;
	}
} 
</script> 
</asp:Content>