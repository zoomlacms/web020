<%@ page language="C#" autoeventwireup="true" inherits="Design_Diag_Common_Edit, App_Web_24taey4c" masterpagefile="~/Design/Master/Edit.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>属性设置</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <div class="panel panel-primary">
       <div class="panel-heading"><i class="fa fa-font"></i><span class="marginl5">文本修改</span></div>
       <div class="panel-body" style="padding-left:0px;padding-right:0px;padding-top:0px;">
           <hr class="divider-long"/>
           <div class="control-section-divider labeled">字体设置</div>
           <hr class="divider-long"/>
           <div class="setting-row">
               <div><label class="row-title">字体大小(px)</label></div>
               <div id="font_slider" class="slider_min"></div>
               <input type="text" id="font_t" class="inputer min" />
           </div>
           <hr class="divider-long"/>
           <div class="setting-row">
               <div><label class="row-title">字体颜色</label></div>
               <input type="text" id="color_t" class="form-control text_150">
           </div>
           <hr class="divider-long"/>
           <div class="setting-row">
               <div><label class="row-title">文本对齐</label></div>
               <div id="align_body" class="ui-buttonset">
                   <input type="radio" id="align1" name="align_rad" value="left" class="ui-helper-hidden-accessible"><label for="align1" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left ui-state-active" role="button" aria-disabled="false" aria-pressed="true"><span class="ui-button-text">居左</span></label>
                   <input type="radio" id="align2" name="align_rad" value="center" class="ui-helper-hidden-accessible"><label for="align2" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-disabled="false" aria-pressed="false"><span class="ui-button-text">居中</span></label>
                   <input type="radio" id="align3" name="align_rad" value="right" class="ui-helper-hidden-accessible"><label for="align3" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right" role="button" aria-disabled="false" aria-pressed="false"><span class="ui-button-text">居右</span></label>
               </div>
           </div>
           <hr class="divider-long" />
           <div class="setting-row" data-group="indent">
                <div ><label class="row-title">是否缩进</label></div>
                <div id="indent_body" class="ui-buttonset">
                   <input type="radio" name="indent_rad" id="indent1" value="no" class="ui-helper-hidden-accessible"><label for="indent1" class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left ui-state-active" role="button" aria-disabled="false" aria-pressed="true"><span class="ui-button-text"><i class="fa fa-dedent fa-rotate-180"></i></span></label>
                   <input type="radio" name="indent_rad" id="indent2" value="yes" class="ui-helper-hidden-accessible"><label for="indent2" class="ui-button ui-widget ui-state-default ui-button-text-only" role="button" aria-disabled="false" aria-pressed="false"><span class="ui-button-text"><i class="fa fa-outdent "></i></span></label>
               </div>
           </div>
           <hr class="divider-long"/>
             <div class="control-section-divider labeled">样式设置</div>
           <hr class="divider-long"/>
           <div class="setting-row" data-group="indent">
                <div ><label class="row-title">背景色</label></div>
                <input type="text" id="bg_color_t" class="form-control text_150">
           </div>
           <div class="setting-row" data-group="indent">
                <div><label class="row-title">背景图片</label></div>
                <div class="diy-control image">
                    <div id="bg_div" class="needupimg"></div>
                </div>
           </div>
           <div class="setting-row" data-group="indent">
               <div><label class="row-title">定位</label></div>
               <div class="pos_div">
                   <div class="preset pull-left">
                        <a class="left-top" data-pos="left top"><i class="fa fa-arrow-up"></i></a>
                        <a class="top" data-pos="top"><i class="fa fa-arrow-up"></i></a>
                        <a class="right-top" data-pos="right top"><i class="fa fa-arrow-up"></i></a>
                        <a class="left" data-pos="left"><i class="fa fa-arrow-left"></i></a>
                        <a class="center" data-pos="center"><i class="fa fa-arrows-alt"></i></a>
                        <a class="right" data-pos="right"><i class="fa fa-arrow-right"></i></a>
                        <a class="left-bottom" data-pos="left bottom"><i class="fa fa-arrow-up"></i></a>
                        <a class="bottom" data-pos="bottom"><i class="fa fa-arrow-down"></i></a>
                        <a class="right-bottom" data-pos="right bottom"><i class="fa fa-arrow-up"></i></a>
                    </div>
                   <div class="posset pull-left">
                       <div><span>横向:</span> <input type="text" id="posX_t" class="form-control text_50 int" /></div>
                       <div><span>纵向:</span> <input type="text" id="posY_t" class="form-control text_50 int" /></div>
                   </div>
               </div>
               <div class="pos_repeat_div">
                   <div class="inline_div">
                       <span>重复:</span>
                       <div class="btn-group" data-toggle="buttons">
                          <label class="btn btn-default active" data-bind="background-repeat" data-param="repeat">
                            <input type="radio" name="options" autocomplete="off" checked><span class="glyphicon glyphicon-th"></span>
                          </label>
                          <label class="btn btn-default" data-bind="background-repeat" data-param="repeat-x">
                            <input type="radio" name="options" autocomplete="off"><span class="fa fa-ellipsis-h"></span>
                          </label>
                          <label class="btn btn-default" data-bind="background-repeat" data-param="repeat-y">
                            <input type="radio" name="options" autocomplete="off"><span class="fa fa-ellipsis-v"></span>
                          </label>
                           <label class="btn btn-default" data-bind="background-repeat" data-param="no-repeat">
                            <input type="radio" name="options" autocomplete="off"><span class="glyphicon glyphicon-remove"></span>
                          </label>
                        </div>
                    </div>
                   <div class="inline_div">
                       <span>固定:</span>
                       <div class="btn-group" data-toggle="buttons">
                           <label class="btn btn-default active" data-bind="background-attachment" data-param="fixed">
                               <input type="radio" name="attachment" autocomplete="off" /><span class="fa fa-unlock-alt"></span>
                           </label>
                           <label class="btn btn-default" data-bind="background-attachment" data-param="scroll">
                               <input type="radio" name="attachment" autocomplete="off" /><span class="fa fa-lock"></span>
                           </label>
                       </div>
                   </div>
               </div>
           </div>
           <div class="setting-row" data-group="indent">
               <div><label class="row-title">边框</label></div>
               <div class="border_div">
                   <div class="boderpos_div pull-left" data-toggle="buttons">
                       <label class="btn btn-default border_left" data-param="left">
                            <input type="radio" name="border" autocomplete="off"/>
                        </label>
                       <label class="btn btn-default border_top" data-param="top">
                            <input type="radio" name="border" autocomplete="off"/>
                        </label>
                        <label class="btn btn-default border-right" data-param="right">
                            <input type="radio" name="border" autocomplete="off"/>
                        </label>
                       <label class="btn btn-default border_bottom" data-param="bottom">
                            <input type="radio" name="border" autocomplete="off"/>
                        </label>
                       <label class="btn btn-default border_center" data-param="all">
                            <input type="radio" name="border" autocomplete="off"/> All 
                        </label>
                   </div>
                   <div class="borderset_div pull-left">
                       <div>
                           <span>宽度:</span>
                           <input type="text" id="border_width" class="form-control text_80 int" />
                       </div>
                       <div class="margin_t5">
                           <span>颜色:</span>
                           <input type="text" id="border_color" class="text_80" />
                       </div>
                       <div class="margin_t5">
                           <span>样式:</span>
                           <div class="btn-group border_style" data-toggle="buttons">
                                <label class="btn btn-default" data-param="solid">
                                    <input type="radio" name="border" autocomplete="off"/><span style="margin-top:7px;border:1px solid #000;width:20px; display:inline-block;"></span>
                                </label>
                               <label class="btn btn-default" data-param="dashed">
                                    <input type="radio" name="border" autocomplete="off"/><span style="margin-top:7px;border:1px dashed #000;width:20px; display:inline-block;"></span>
                                </label>
                               <label class="btn btn-default" data-param="dotted">
                                    <input type="radio" name="border" autocomplete="off"/><span style="margin-top:7px;border:1px dotted #000;width:20px; display:inline-block;"></span>
                                </label>
                               <label class="btn btn-default" data-param="none">
                                    <input type="radio" name="border" autocomplete="off"/><span class="glyphicon glyphicon-remove"></span>
                                </label>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
           <hr class="divider-long"/>
            <%--           <div class="setting-row" data-group="indent">
                            <div ><label class="row-title">边框</label></div>
                       </div>
                       <div class="setting-row" data-group="indent">
                            <div ><label class="row-title">边框粗细(px)</label></div>
                       </div>
                       <div class="setting-row" data-group="indent">
                            <div ><label class="row-title">边框颜色</label></div>
                            <input type="text" id="border_color_t" class="form-control text_150">
                       </div>--%>
       </div>
   </div>
   <input type="file" id="upimg_file" style="display:none;"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
    <script type="text/javascript" src="/JS/ZL_Regex.js"></script>
    <style type="text/css">
        .setting-row .diy-control.image {width:150px; height:90px;overflow:hidden;border:solid 1px #ccc;cursor:pointer;
            background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAMAAADz0U65AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRFsbGx1dXVfSyRngAAABdJREFUeNpiYAACRiBgwMMgJA8EAAEGAATIACGnjpkGAAAAAElFTkSuQmCC);
        }
        .setting-row .needupimg {width:150px; height:90px;
                                background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADkAAAAuCAYAAACSy7GmAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyNpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjBEQUEwM0ZENjQ2NDExRTM4RDIzOTlFMzJCNERBN0E3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjBEQUEwM0ZFNjQ2NDExRTM4RDIzOTlFMzJCNERBN0E3Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MERBQTAzRkI2NDY0MTFFMzhEMjM5OUUzMkI0REE3QTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MERBQTAzRkM2NDY0MTFFMzhEMjM5OUUzMkI0REE3QTciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz74xDmeAAACTUlEQVR42mL08PD4zzDMARPDCACjnhz15KgnRz1Jd8BCQF4PiJ8MAX/IAPElcj35EYjfDwFP8lISk6QARiDWBGJJIH4KxDeGW56MBuL7QHwViPcA8XUgvgXEgcPFk7VAvASI5dHEVYF4LRDnDHVPmgFxI4Ek3A9NxuQCw4H2ZBbUI4TyfRoF7gOlEq+B9KQRkerMyTTfF4i1gLiLkkKSUk8y0jg7VUBpbSBOGihPXiBS3VkyzLYDYgskfiOh+pBWnpxJhJp/QDyLDLPL0fgSQFw6EJ48AsQ9BNTUAfFlEs0FNSc9sYgXA7H0QNSToNDNAOLXaOKgVk8sELeSaSa2/M4FxM0kFxwExnhAFfwjEhr7JkAsBsTPgfgcEP8lw4MgO+/gKU3/QUv1i0hickD8kB5t1z9AfIIK5hQTcBcTNIu4DtX+pAgQpxChzgWt5B1SnswFYk4i1QoPVk+C8lsfDo/wAHH2UB/+iIEWFoVAvB6I2dHkU0iJncHmSUEgXgHEi4GYHyrmDsTrgJgNymeFep5hKHrSGRp74VjkQD2LNVCPRkKrAZoAFhqZyw5tBBQSCEhQL2M5EGvQMqQp9SSo+ZUKbVc+AOKVQPwDiJdC5YgBQbTOL5R40gmItyPlKxAogbZymAdTvURunlSBFiZsWOQGlQfJ9SSohNwExKIMQwSQ6klQLK1ioGxgatB7cgIQuzEMMcBCYjIFdX7TB4nbL9PCkx/JHMYYsqXrsEqu/NC252AH/JR48tJwiMnR6fRRT456ctSTo56kBQAIMAC9dkxafAcmugAAAABJRU5ErkJggg==) center center no-repeat
        }
        .margin_t5{margin-top:5px;}
        .pos_div{height:85px;}
        .preset{width:90px;}
        .preset a{display:block;float:left;padding:5px;border:1px solid #ddd;margin:1px;width:25px;}
        .preset .left-top i{-webkit-transform:rotate(-45deg);transform:rotate(-45deg)}
        .preset .right-top i{-webkit-transform:rotate(45deg);transform:rotate(45deg)}
        .preset .left-bottom i{-webkit-transform:rotate(-135deg);transform:rotate(-135deg)}
        .preset .right-bottom i{-webkit-transform:rotate(135deg);transform:rotate(135deg)}
        .posset div{margin-top:5px;}
        .pos_repeat_div{margin-top:10px;}
        .pos_repeat_div .btn{width:38px;}
        .border_div{height:100px;}
        .boderpos_div{width:84px; position:relative;height:85px;}
        .boderpos_div .btn{padding:0px;}
        .boderpos_div .border_left{position:absolute;top:12px;left:0;height:60px;width:12px;}
        .boderpos_div .border-right{position:absolute;right:0px; height:60px;top:12px;width:12px;}
        .boderpos_div .border_top{position:absolute;left:12px;width:60px; top:0px;height:12px;}
        .boderpos_div .border_bottom{position:absolute;left:12px;width:60px;bottom:0px; height:12px;}
        .boderpos_div .border_center{position:absolute;left:28px;top:25px;padding:5px;border-radius:0;}
        .border_div .borderset_div{margin-left:30px;}
        .border_style .btn{width:50px; height:30px;}

        .inline_div{display:inline-block;margin-right:10px;}

        .divider-long{width:100%;}
    </style>
    <script>
        //边框暂缓,margin,padding需要置入,背景图片
        $(function () {
            ZL_Regex.B_Num('.int');
            $(".ui-buttonset").buttonset();
            //先设定值,再绑事件,避免重复触发
            $("#font_t").val(StyleHelper.ConverToInt(editor.dom.css("font-size")));
            $("#color_t").val(editor.dom.css("color"));
            $("#bg_color_t").val(editor.dom.css("background-color"));
            $("#bg_img").attr("src", editor.dom.attr("background-image"));
            //$("#border_color_t").val(editor.dom.css("border-color"));
            {
                var val = editor.dom.css("text-align"); if (val == "start") { val = "left"; }
                StyleHelper.setRadVal("align_rad", val);
                val = StyleHelper.ConverToInt(editor.dom.css("text-indent")) == 0 ? "no" : "yes";
                StyleHelper.setRadVal("indent_rad", val);
            }
            //字体,颜色,位置,缩进
            $("#font_slider").slider({
                range: "min", min: 1, max: 150, value: 15,
                slide: function (event, ui) {
                    $("#font_t").val(ui.value);
                    editor.dom.css("font-size", ui.value + "px");
                }
            });
            $("#color_t").ColorPickerSliders({
                size: 'sm', placement: 'right', swatches: false, sliders: false, hsvpanel: true, previewformat: "hex",
                onchange: function (container, color) {
                    editor.dom.css("color", color.tiny.toHexString());
                }
            });
            $("#bg_color_t").ColorPickerSliders({
                size: 'sm', placement: 'right', swatches: false, sliders: false, hsvpanel: true, previewformat: "hex",
                onchange: function (container, color) {
                    editor.dom.css("background-color", color.tiny.toHexString());
                }
            });
            //----------------------
            $("#align_body input[name=align_rad]").click(function () {
                editor.dom.css("text-align", this.value);
            });
            $("#indent_body input[name=indent_rad]").click(function () {
                var val = "0px";
                if (this.value == "yes") { val = "2em"; }
                editor.dom.css("text-indent", val);
            });
            SetBackGround();
            SetBorderStyle();
            //background-position
        });
        //边框样式设置
        function SetBorderStyle(){
            var bordercss="";
            $(".boderpos_div .btn").click(function(){
                bordercss=$(this).data("param")=="all"?"border":"border-"+$(this).data("param");
                $("#border_width").val(editor.dom.css(bordercss+"-width"));
                $(".border_style .btn[data-param='"+editor.dom.css(bordercss+"-style")+"']").click();
            });
            $("#border_width").change(function(){
                editor.dom.css(bordercss+"-width",$(this).val()+"px");
            });
            $(".border_style .btn").click(function(){
                editor.dom.css(bordercss+"-style",$(this).data("param"));
            });
            $("#border_color").ColorPickerSliders({
                size: 'sm', placement: 'right', swatches: false, sliders: false, hsvpanel: true,previewformat: "hex",
                onchange: function (container, color) {
                    editor.dom.css(bordercss+"-color",color.tiny.toHexString());
                }
            });
            $(".boderpos_div .border_center").click();
        }

        //背景图片样式设置
        function SetBackGround(){
            $(".needupimg").click(function () {//自动base64上传,并回发路径
                $("#upimg_file").click();
            });
            $("#upimg_file").change(function () {
                var formdata = new FormData();
                formdata.append("file", $(this)[0].files[0]);
                $.ajax({
                    type: 'POST',
                    url: '/Plugins/Uploadify/UploadFileHandler.ashx',
                    data: formdata,
                    processData: false,
                    contentType: false,
                    success: function (data) {
                        $(".needupimg").css("background-image", "url(" + data + ")");
                        editor.dom.css("background-image", "url(" + data + ")");
                        InitBackGround();
                    }
                });
            });
            $("#posX_t").change(function(){editor.dom.css("background-position-x",$(this).val()+"px");$(".needupimg").css("background-position-x", $(this).val()+"px");});
            $("#posY_t").change(function(){editor.dom.css("background-position-y",$(this).val()+"px");$(".needupimg").css("background-position-y", $(this).val()+"px");});
            //背景图片定位设置
            $(".preset a").click(function () {
                var curX = parseInt(editor.dom.css("background-position-x"));
                var curY = parseInt(editor.dom.css("background-position-y"));
                var posarr = $(this).data('pos').split(' ');
                for (var i = 0; i < posarr.length; i++) {
                    switch (posarr[i]) {
                        case "left":
                            curX = curX - 1;
                            break;
                        case "top":
                            curY = curY - 1;
                            break;
                        case "right":
                            curX = curX + 1;
                            break;
                        case "bottom":
                            curY = curY + 1;
                            break;
                        case "center":
                            break;
                    }
                }
                $(".needupimg").css("background-position-x", curX);
                $(".needupimg").css("background-position-y", curY);
                editor.dom.css("background-position-x", curX);
                editor.dom.css("background-position-y", curY);
                $("#posX_t").val(curX);
                $("#posY_t").val(curY);
            });
            $(".pos_repeat_div .btn").click(function(){
                editor.dom.css($(this).data('bind'),$(this).data('param'));
                $(".needupimg").css($(this).data('bind'), $(this).data('param'));
            });
            //加载背景
            function InitBackGround(){
                if (editor.dom.css("background-image") != "none") {
                    $(".needupimg").css("background-image", editor.dom.css("background-image"))
                    $(".needupimg").css("background-position", editor.dom.css("background-position"));
                    $("#posX_t").val($(".needupimg").css("background-position-x"));
                    $("#posY_t").val($(".needupimg").css("background-position-y"));
                    $(".pos_repeat_div .btn[data-bind='background-repeat'][data-param='"+editor.dom.css("background-repeat")+"']").click();
                    $(".pos_repeat_div .btn[data-bind='background-attachment'][data-param='"+editor.dom.css("background-attachment")+"']").click();
                }
            }
            InitBackGround();
        }
    </script>
</asp:Content>