define(function (require, exports, module) {
    //优点,不污染的形式暴露ZLDE
    //继承减少代码,增加可维护性
    var $ = require("jquery");
    //var arrHelper = require("array");
    var ZLDE = {};
    var utils = ZLDE.utils = {
        /*
        *以给定对象作为原型创建一个新对象
        */
        makeInstance: function (obj) {
            var noop = new Function();
            noop.prototype = obj;
            obj = new noop;
            noop.prototype = null;
            return obj;
        },
        /**
         * 将source对象中的属性扩展到target对象上， 根据指定的isKeepTarget值决定是否保留目标对象中与
         * 源对象属性名相同的属性值。
         **/
        extend: function (t, s, b) {
            if (s) {
                for (var k in s) {
                    if (!b || !t.hasOwnProperty(k)) {
                        t[k] = s[k];
                    }
                }
            }
            return t;
        },
        /**
         * 模拟继承机制， 使得subClass继承自superClass
         **/
        inherits: function (subClass, superClass) {
            var oldP = subClass.prototype,
                newP = utils.makeInstance(superClass.prototype);
            utils.extend(newP, oldP, true);
            subClass.prototype = newP;
            return (newP.constructor = subClass);
        },
        clone:function (source, target) {
            var tmp;
            target = target || {};
            for (var i in source) {
                if (source.hasOwnProperty(i)) {
                    tmp = source[i];
                    if (typeof tmp == 'object') {
                        target[i] = utils.isArray(tmp) ? [] : {};
                        utils.clone(source[i], target[i])
                    } else {
                        target[i] = tmp;
                    }
                }
            }
            return target;
        },
        newGuid: function () {
            var guid = "";
            for (var i = 1; i <= 32; i++) {
                var n = Math.floor(Math.random() * 16.0).toString(16);
                guid += n;
                if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
                    guid += "-";
            }
            return guid;
        },
        newRandom: function (len) {
            if (!len) { len = 8; }
            var guid = "";
            for (var i = 1; i <= len; i++) {
                var n = Math.floor(Math.random() * 16.0).toString(16);
                guid += n;
            }
            return guid;
        },
        ConverToInt: function (val, suf) { //默认返回1
            if (!val || val == "") { val = "1"; }
            val = val + "";
            val = val.replace(/ /g, "").replace("px", "").replace("em", "");
            val = parseInt(val);
            if (isNaN(val)) { val = 1; }
            return val;
        },
        //------------------//
        each: function (obj, iterator, context) {
            if (obj == null) return;
            if (obj.length === +obj.length) {
                for (var i = 0, l = obj.length; i < l; i++) {
                    if (iterator.call(context, obj[i], i, obj) === false)
                        return false;
                }
            } else {
                for (var key in obj) {
                    if (obj.hasOwnProperty(key)) {
                        if (iterator.call(context, obj[key], key, obj) === false)
                            return false;
                    }
                }
            }
        },
    };
    utils.each(['String', 'Function', 'Array', 'Number', 'RegExp', 'Object', 'Date'], function (v) {
        utils['is' + v] = function (obj) {
            return Object.prototype.toString.apply(obj) == '[object ' + v + ']';
        }
    });
    /*-------------------------*/
    //---给予所有控件继承的父类,_为不允许覆盖的
    Control = ZLDE.Control = function () { };
    /**
     * @override组件初始化,第二个extend为附加信息,用于某些控件preview时
     * model:初始化数据,具体交由子类实现
     * extend:preview时部分组件需要该数据
     */
    Control.prototype.Init = function (model, extend) {
        this._init(model, extend);
    };
    Control.prototype._init = function (model, extend) {
        this.dataMod = model.dataMod;
        this.config = model.config;
        this.id = this.CreateID();
    }
    //@override 核心html解析,因为使用了双绑,所以这块不需要太多设置
    Control.prototype.AnalyToHtml = function (config) {
        if (!config) { config = {}; }
        var html = "";
        switch (config.mode) {
            case "design"://设计模式
                html = this.designTlp;
                break;
            default:
                break;
        }
        if (html == "") { html = this.htmlTlp; }
        //---------------------------------//
        html = html.replace(/@id/ig, this.id).replace(/@style/ig, this.config.style).replace(/@css/ig, this.config.css).replace(/@src/ig, this.dataMod.src);
        console.log(html);
        return html;
    };
    //更新右侧基本属性框(当被选中时触发)
    Control.prototype.UpdateRootPanel = function () {
        $("#root_width_t").val(utils.ConverToInt(this.instance.width()));
        $("#root_height_t").val(utils.ConverToInt(this.instance.height()));
        $("#root_x_t").val(utils.ConverToInt(this.instance.css("left")));
        $("#root_y_t").val(utils.ConverToInt(this.instance.css("top")));
    }
    //产生ID,组件名_随机码
    Control.prototype.CreateID = function () {
        var id = this.config.type + "_" + ZLDE.utils.newRandom();
        return id;
    }
    //自我清除,包括dom与自己在数组中的存值
    Control.prototype.RemoveSelf = function (arr) {
        this.instance.remove();
        for (var i = 0; i < arr.length; i++) {
            if (arr[i].id == this.id) { arr.splice(i, 1); break; }
        }
    }
    //回发保存前执行,请重写
    Control.prototype.PreSave = function (page) {
        this._presave();
        return { "dataMod": this.dataMod, "config": this.config };
    }
    //后期需要处理,前image等放至自己的位置,这里只保留最通用的
    Control.prototype._presave = function () {
        console.log("_presave invoke",this);
        this.config.style = this.instance.attr("style");
        //---------通用处理
        var cssArr = "ui-draggable ui-resizable active".split(" ");
        this.config.css = this.instance.attr("class");
        for (var i = 0; i < cssArr.length; i++) {
            this.config.css = this.config.css.replace(cssArr[i], "");
        }
        //---------type(后期整合入各自的中去)
        switch (this.config.type) {
            case "image":
                this.config.imgstyle = this.instance.find(".imgcomp").attr("style");
                break;
        }
    }
    //使和数据重缓控件本身,不兼容含绑定的组件,建议有需要自实现(需要编译后再加入)
    Control.prototype.Render = function () {

    }
    /*--------------------事件处理,后期整理为观察者模式-------------------------------*/
    /*--------------------------------------------------------------------------------*/
    //@override 控件自有html必须重写
    Control.prototype.htmlTlp = "";
    //@override 设计时展示,可为空,为空则自动以htmlTlp为准
    Control.prototype.designTlp = "";
    //支持的菜单cmds,根据此创建对应的条目
    Control.prototype.cmds = "";
    //存储本身的配置,依此和Data用于Render(该值支持从dom中重获)
    Control.prototype.config = {};
    //需要实时根更的数据,只是暂时保存,使用时需要实时解析出来(label)
    Control.prototype.temp = {};
    //存储用于展示的数据,如图片,文字(该字段的值通过JS直接赋于模型,不通过视图重获)
    Control.prototype.dataMod = {};
    //指向html控件实例(可以跨iframe建立关联)
    Control.prototype.instance = null;
    //---------------------------------------------------------
    // 通过 exports 对外提供接口
    //exports.doSomething = function () { return "2222"; }
    // 或者通过 module.exports 提供整个接口,必须放在后面执行
    module.exports = ZLDE;
});
