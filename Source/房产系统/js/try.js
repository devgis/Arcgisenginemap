//引入命名空间
dojo.require("esri.map");
//用来记录显示图层的id用
var visible = [];
//ArcGISDynamicMapServiceLayer
var dynamicMapServiceLayer = [];
//地图初始化方法
function init() {
    var map = new esri.Map("map");
    dynamicMapServiceLayer = new esri.layers.ArcGISDynamicMapServiceLayer("http://localhost:6080/arcgis/rest/services/唐山市地图1/MapServer");
    //添加图层载入后监听方法loadLayerList
    dojo.connect(dynamicMapServiceLayer, "onLoad", loadLayerList);
    //添加到地图控件进行显示
    map.addLayer(dynamicMapServiceLayer);
}
//载入地图名称到右边的列表中
function loadLayerList(layers) {
    var html = "";
    //获取图层信息
    var infos = layers.layerInfos;
//    for (var i = 0; i < infos.length; i++) {
        var info = infos[3];
        //图层默认显示的话就把图层id添加到visible
        if (info.defaultVisibility) {
            visible.push(info.id);
//        }
        //输出图层列表的html
        html = html + "<div><input id='" + info.id + "' name='layerList' class='listCss' type='checkbox' value='checkbox' onclick='setLayerVisibility()' " +(info.defaultVisibility ? "checked" : "")+ " />" +info.name+ "</div>"
    }
    //设置可视图层
    dynamicMapServiceLayer.setVisibleLayers(visible);
    //在右边显示图层名列表
    dojo.byId("divSideContent").innerHTML = html;
}
//设置图层是否可视的方法
function setLayerVisibility() {
    //用dojo.query获取css为listCss的元素数组
    var inputs = dojo.query(".listCss");
    visible = [];
    //对checkbox数组进行变量把选中的id添加到visible
//    for (var i = 0; i < inputs.length; i++) {
        if (inputs[3].checked) {
            visible.push(inputs[3].id);
        }
//    }
    //设置可视图层
    dynamicMapServiceLayer.setVisibleLayers(visible);
}

dojo.addOnLoad(init);