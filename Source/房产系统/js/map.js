require(["esri/map", "esri/dijit/HomeButton", "esri/dijit/OverviewMap", "esri/dijit/Scalebar", "dojo/parser", "dojo/domReady"],
           function (Map, HomeButton, OverviewMap, Scalebar, parser) {
               parser.parse();
               var map;
               map = new esri.Map("map", {
                   logo: false
               });
               var layer = new esri.layers.ArcGISTiledMapServiceLayer("http://localhost:6080/arcgis/rest/services/TSCMap/MapServer");
               map.addLayer(layer);
               var overviewMapDijit = new OverviewMap({
                   map: map,
                   visible: true,
                   attachTo: "bottom-right"

               }); //鹰眼
               var scalebar = new Scalebar({
                   map: map,

                   scalebarUnit: "dual"
               }); //比例尺
               var home = new HomeButton({
                   map: map
               }, "HomeButton"); //

               



               home.startup();
               overviewMapDijit.startup();
               scalebar.startup();
           }

           );
