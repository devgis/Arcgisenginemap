var map, navToolbar;
var navOption; // 当前选择的操作
require(["dojo/parser", "esri/map", "esri/toolbars/navigation",
            "dojo/query", 'dojo/_base/fx', "dojo/fx/easing", "dojo/domReady!"],
            function (parser, Map, Navigation, query, fx, easing) {
                parser.parse();
                var map;
                map = new esri.Map("map", {
                    logo: false
                });
                var layer = new esri.layers.ArcGISTiledMapServiceLayer("http://localhost:6080/arcgis/rest/services/TSCMap/MapServer");
                map.addLayer(layer);


              
           












                map.on('load', setupNavBar);

                function setupNavBar() {
                    navToolbar = new Navigation(map);

                    query(".navItem img").onmouseover(function (evt) {
                        fx.anim(evt.target.parentNode, {
                            backgroundColor: '#CCCCCC'
                        }, 200, easing.bounceOut);
                    }).onmouseout(function (evt) {
                        if (evt.target.parentNode.id != navOption) {
                            fx.anim(evt.target.parentNode, {
                                backgroundColor: '#FFFFFF'
                            });
                        }
                        else {
                            fx.anim(evt.target.parentNode, {
                                backgroundColor: '#DADADA'
                            });
                        }
                    }).onclick(function (evt) {

                        fx.anim(evt.target.parentNode, {
                            backgroundColor: '#999999'
                        }, 200, easing.linear, function () {
                            dojo.anim(evt.target.parentNode, {
                                backgroundColor: '#CCCCCC'
                            }, 0);
                        });
                        navEvent(evt.target.parentNode.id);
                    });

                    navEvent('deactivate');
                }

                function navEvent(id) {
                    switch (id) {
                        case 'pan':
                            map.enablePan();
                            navToolbar.activate(Navigation.PAN);

                            if (navOption) {
                                fx.anim(document.getElementById(navOption), {
                                    backgroundColor: '#FFFFFF'
                                });
                            }
                            navOption = id;
                            break;
                        case 'zoomprev':
                            // navToolbar.zoomToPrevExtent();
                            map.panDown();
                            break;

                        case 'zuoyi': //
                            map.panRight();
                            break; //


                        case 'youyi': //
                            map.panLeft();  //
                            break; //

//                        case 'divxy': //
//                            dojo.connect(map, "onMouseMove", function (e) {
//                                var mp = e.mapPoint;
//                                var sp = e.screenPoint;
//                                div1.innerHTML = mp.x + "/" + sp.x;
//                                div2.innerHTML = mp.y + "/" + sp.y;
//                            }); //
//                            break; //





                        case 'zoomnext':
                            // navToolbar.zoomToNextExtent();
                            map.panUp();
                            break;
                        case 'extent':
                            navToolbar.zoomToFullExtent();
                            break;
                        case 'zoomin':
                            navToolbar.activate(Navigation.ZOOM_IN);
                            if (navOption) {
                                fx.anim(document.getElementById(navOption), {
                                    backgroundColor: '#FFFFFF'
                                });
                            }
                            navOption = id;
                            break;
                        case 'zoomout':
                            navToolbar.activate(Navigation.ZOOM_OUT);
                            if (navOption) {
                                fx.anim(document.getElementById(navOption), {
                                    backgroundColor: '#FFFFFF'
                                });
                            }
                            navOption = id;
                            break;
                        case 'deactivate':
                            navToolbar.deactivate();
                            if (navOption) {
                                fx.anim(document.getElementById(navOption), {
                                    backgroundColor: '#FFFFFF'
                                });
                            }
                            navOption = id;
                            break;
                    }
                }
            });