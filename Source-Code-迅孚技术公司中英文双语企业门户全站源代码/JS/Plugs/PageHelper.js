var PageHelper = {
    id: "", pagenum: 0, pnum: 0, cpage: 0, psize: 0,//ID,总页数,最大显示页数,当前页码
    DataSource:[],
    Init: function (option) {
        var ref = this;
        ref.id = option.id;//分页容器
        ref.data = option.data;//用于分页数据
        ref.cpage = option.cpage ? option.cpage : 1;//当前页
        ref.psize = option.psize ? option.psize : 10;
        ref.pagenum = option.pagenum ? option.pagenum : 1;
        ref.pnum = option.pnum ? option.pnum : 10//页数
        ref.click = option.click;
        ref.InitPageEvent();
    },
    Render: function () {
        var ref = this;
        $("#" + ref.id).html(ref.GetPageHtml());
        ref.InitPageEvent();
    },
    GetCPage: function () {
        var ref = this;
        ref.cpage = parseInt(ref.cpage);
        if (!ref.cpage || isNaN(ref.cpage) || ref.cpage < 1) { ref.cpage = 1; }
        if (ref.cpage > ref.pagenum) { ref.cpage = ref.pagenum; }
        return ref.cpage;
    },
    GetPageHtml: function () {
        var ref = this;
        var pagenum = ref.pagenum;//总页数
        if (pagenum < 1) { return "";}
        var startpage = ref.GetStartPage(ref.GetCPage());//分页首页数
        var pagetlp = '<li class="@classname"><a href="javascript:;" class="page_btn" data-page="@pagenum" type="button">@pagename</a></li>';//页数模板
        var pagelisttlp = '<ul class="pagination">' + ref.ReplacePageTlp(1, "«", "") + '@pages' + ref.ReplacePageTlp(pagenum, "»", "") + '</ul>';
        var pages = "";
        //上一分页输出
        if (startpage - 1 > 0) {
            var prestart = ref.GetStartPage(startpage - 2);//上一页页头
            var prepage = startpage - 1;//上一页数
            pages += ref.ReplacePageTlp(prestart - 1, "...", "")
            + ref.ReplacePageTlp(prepage, prepage, (ref.GetCPage() == prepage) ? "active" : "");
        }
        for (var i = startpage; i < startpage + ref.pnum ; i++) {
            if (i > ref.pagenum) { break; }
            var tempclass = ref.GetCPage() == i ? "active" : "";
            if (i + 1 == startpage + ref.pnum && i + 1 < ref.pagenum) {
                pages += ref.ReplacePageTlp(i, "...", tempclass);
                break;
            }
            pages += ref.ReplacePageTlp(i, i, tempclass);
        }
        if (pages == "") { return ""; }//空数据就不显示
        return pagelisttlp.replace(/@pages/g, pages);
    },
    GetStartPage: function (cpage) {//获取分页开始页码
        var ref = this;
        return cpage - (cpage % ref.pnum) + 1;
    },
    ReplacePageTlp: function (page, pagename, classname) {//替换模板
        var pagetlp = '<li class="@classname"><a href="javascript:;" class="page_btn" data-page="@pagenum" type="button">@pagename</a></li>';//页数模板
        return pagetlp.replace(/@pagenum/g, page).replace(/@pagename/g, pagename).replace(/@classname/g, classname);
    },
    InitPageEvent: function () {
        //在页面html生成后,绑定按钮事件
        var ref = this;
        $("#" + ref.id + " .page_btn").click(function () {
            ref.PageClick({ "ref": ref, btn: $(this) });
        });
    },
    PageClick: function (param) {//单击分页按钮
        var ref = param.ref;
        ref.cpage = param.btn.data("page");
        //单击后事件
        if (ref.click) { ref.click(param); }
        ref.Render();
    },
    //-----------------辅助方法,Json全加载本地时使用
    GetPageDT: function (data, cpage, psize) {
        var ref=this;
        if (!data) { data = ref.DataSource; }
        if (!cpage) { cpage = ref.cpage; }
        if (!psize) { psize = ref.psize;}
        var list = [];
        var sindex = (cpage - 1) * psize;
        if (sindex < 0) { sindex = 0; }
        if (sindex >= data.length) { return []; }
        for (var i = sindex; i < sindex + psize && i < data.length; i++) {
            list.push(data[i]);
        }
        return list;
    },
    GetPageNum: function (itemCount, psize) {
        return Math.ceil(itemCount/psize);
    }
};
//barconfig.aspx
//@Example
//PageHelper.Init({
//    id: "page", pagenum: 1, cpage: 1,
//    click: function (param) {
//        GetCustom("", "三表查询示例", { "NodeID": "25" }, 10, PageHelper.cpage);
//    }
//});
//GetCustome(){ 
//    PageHelper.pagenum = (parseInt(retmod.addon.count) / psize);
//    PageHelper.Render();
//}