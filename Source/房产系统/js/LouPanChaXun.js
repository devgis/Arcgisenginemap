dojo.require("dojox.grid.Grid");
dojo.require("dojox.grid.compat._data.model");  //Because of changes in the Dojo data grid and model you must load the comapt_data.model if using version 1.3.
dojo.require("esri.map");
dojo.require("esri.tasks.find");

var findTask, findParams, map;

function init() {
    map = new esri.Map("map");


    var censusMapLayer = new esri.layers.ArcGISDynamicMapServiceLayer("http://localhost:6080/arcgis/rest/services/TSCMap/MapServer", { id: "usa" });
    map.addLayer(censusMapLayer);


    //create find task with url to map service
    findTask = new esri.tasks.FindTask("http://localhost:6080/arcgis/rest/services/TSCMap/MapServer");

    //create find parameters and define known values
    findParams = new esri.tasks.FindParameters();
    findParams.returnGeometry = true;
    findParams.layerIds = [7, 17, 27];
    findParams.searchFields = ["名称", "位置", "开发商", "STATE_ABBR", "STATE_NAME"];




}


function execute(searchText) {
    //set the search text to find parameters
    findParams.searchText = searchText;
    findTask.execute(findParams, showResults);
}

function showResults(results) {
    //find results return an array of findResult.
    map.graphics.clear();
    var dataForGrid = [];

    for (var i = 0, il = results.length; i < il; i++) {
        var curFeature = results[i];
        var graphic = curFeature.feature;
        var layerName = curFeature.layerName;
        var layerId = curFeature.layerId;
        var foundFieldName = curFeature.foundFieldName;
        var foundFieldValue = graphic.attributes[foundFieldName];

        var attValues = [layerName, layerId, foundFieldName, foundFieldValue];
        dataForGrid.push(attValues);

        switch (graphic.geometry.type) {
            case "point":
                var symbol = new esri.symbol.SimpleMarkerSymbol(esri.symbol.SimpleMarkerSymbol.STYLE_SQUARE, 10, new esri.symbol.SimpleLineSymbol(esri.symbol.SimpleLineSymbol.STYLE_SOLID, new dojo.Color([255, 0, 0]), 1), new dojo.Color([0, 255, 0, 0.25]));
                break;
            case "polyline":
                var symbol = new esri.symbol.SimpleLineSymbol(esri.symbol.SimpleLineSymbol.STYLE_DASH, new dojo.Color([255, 0, 0]), 1);
                break;
            case "polygon":
                var symbol = new esri.symbol.SimpleFillSymbol(esri.symbol.SimpleFillSymbol.STYLE_NONE, new esri.symbol.SimpleLineSymbol(esri.symbol.SimpleLineSymbol.STYLE_DASHDOT, new dojo.Color([255, 0, 0]), 2), new dojo.Color([255, 255, 0, 0.25]));
                break;
        }
        graphic.setSymbol(symbol);
        map.graphics.add(graphic);
    }

    var model = new dojox.grid.data.Table(null, dataForGrid);

    var view1 = {
        cells: [
            [{ name: '一级分类' }, { name: '所属编号' }, { name: '查询所属类别' }, { name: '类别内容'}]
          ]
    };

    var layout = [view1];
    gridWidget.setModel(model);
    gridWidget.setStructure(layout);

}

dojo.addOnLoad(init);
 