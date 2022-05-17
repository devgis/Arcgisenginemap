
dojo.require("dojox.grid.DataGrid");
dojo.require("dojo.data.ItemFileReadStore");
dojo.require("esri.map");
dojo.require("esri.tasks.find");
dojo.require("dijit.layout.BorderContainer");
dojo.require("dijit.layout.ContentPane");

var findTask, findParams, map;

function init() {

//    map = new esri.Map("map");
//        var censusMapLayer = new esri.layers.ArcGISTiledMapServiceLayer("http://localhost:6080/arcgis/rest/services/TSCMap/MapServer", {
//        id: "唐山市地图1"
//    });
    //    map.addLayer(censusMapLayer);


    map = new esri.Map("map", {
        logo: false
    });
    var layer = new esri.layers.ArcGISTiledMapServiceLayer("http://localhost:6080/arcgis/rest/services/TSCMap/MapServer");
    map.addLayer(layer);

    //create find task with url to map service
    findTask = new esri.tasks.FindTask("http://localhost:6080/arcgis/rest/services/TSCMap/MapServer");

    //create find parameters and define known values
    findParams = new esri.tasks.FindParameters();
    findParams.returnGeometry = true;
    findParams.layerIds = [9];
    findParams.searchFields = ["sort"];
}

function execute(searchText) {
    //set the search text to find parameters
    findParams.searchText = searchText;
    findTask.execute(findParams, showResults);
}

function showResults(results) {
    //symbology for graphics
    var markerSymbol = new esri.symbol.SimpleMarkerSymbol(esri.symbol.SimpleMarkerSymbol.STYLE_SQUARE, 10, new esri.symbol.SimpleLineSymbol(esri.symbol.SimpleLineSymbol.STYLE_SOLID, new dojo.Color([255, 0, 0]), 1), new dojo.Color([0, 255, 0, 0.25]));
    var lineSymbol = new esri.symbol.SimpleLineSymbol(esri.symbol.SimpleLineSymbol.STYLE_DASH, new dojo.Color([255, 0, 0]), 1);
    var polygonSymbol = new esri.symbol.SimpleFillSymbol(esri.symbol.SimpleFillSymbol.STYLE_NONE, new esri.symbol.SimpleLineSymbol(esri.symbol.SimpleLineSymbol.STYLE_DASHDOT, new dojo.Color([255, 0, 0]), 2), new dojo.Color([255, 255, 0, 0.25]));

    //find results return an array of findResult.
    map.graphics.clear();
    var dataForGrid = [];
    //Build an array of attribute information and add each found graphic to the map
    dojo.forEach(results, function (result) {
        var graphic = result.feature;
        dataForGrid.push([result.layerName, result.foundFieldName, result.value]);
        switch (graphic.geometry.type) {
            case "point":
                graphic.setSymbol(markerSymbol);
                break;
        }
        /* case "polyline":
        graphic.setSymbol(lineSymbol);
        break;
        case "polygon":
        graphic.setSymbol(polygonSymbol);
        break;
        }
        */
        map.graphics.add(graphic);
    });
    var data = {
        items: dataForGrid
    };
    var store = new dojo.data.ItemFileReadStore({
        data: data
    });
    grid.setStore(store);

}
dojo.ready(init);