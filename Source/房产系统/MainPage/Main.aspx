<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="房产系统.MainPage.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html;charset=uf-8" />
    <title>唐山市房产查询分析系统</title>
    <meta http-equiv="Content-Type" content="text/html" />
    <link href="../Styles/layout.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/style.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="stylesheet" type="text/css" href="http://localhost/arcgis_js_api/library/3.9/3.9/js/dojo/dijit/themes/tundra/tundra.css" />
    <link rel="stylesheet" type="text/css" href="http://localhost/arcgis_js_api/library/3.9/3.9/js/esri/css/esri.css" />
    <link rel="stylesheet" href="http://localhost/arcgis_js_api/library/3.9/3.9/js/dojo/dijit/themes/claro/claro.css" />
    <link rel="stylesheet" href="http://localhost/arcgis_js_api/library/3.9/3.9/js/dojo/dojox/grid/resources/Grid.css" />
    <style type="text/css">
        
    </style>
    <script type="text/javascript" src="http://localhost/arcgis_js_api/library/3.9/3.9/init.js"></script>
    <script src="../Script/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="../js/try.js" type="text/javascript"></script>
    <%--<script type="text/javascript" src="../js/toolbar.js"></script>--%>
    <script type="text/javascript" src="../js/map.js"></script>
    <script runat="server">

    </script>
</head>
<body id="tundra" onload="switc(),switchSide(),switchSidenew()">
    <form id="form1" runat="server">
    <div id="container">
        <div id="header" style="background-image: url('../picture/logo.jpg'); margin-right: 25px;
            margin-left: 25px; font-size: x-large; font-family: 微软雅黑; color: #660000;">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            唐山市房产查询分析系统</div>
        <div id="menu" style="margin-right: 25px; margin-left: 25px">
            <ul id="nav">
                <li><a href="route.htm">到这去</a>
                   <%-- <ul>
                        <li><a href="route.htm">最短路径</a></li>
                        <li><a href="">公交查询</a></li>
                    </ul>--%>
                </li>
                <li><a href="../FrontPages/Buffer.htm">搜周边</a>
                    <%--<ul>
                        <li>
                            <asp:Button ID="lin" runat="server" BorderStyle="none" Text="" Background="none" /></li>
                        <li><a href="../FrontPages/Buffer.htm">自定义</a></li>
                        <li><a href="">点</a></li>
                    </ul>--%>
                </li>
                <li><a href="MainLouPan.htm">楼盘查询</a>
                   <%-- <ul>
                        <li><a href="MainLouPan.htm">楼盘名称</a>
                            <ul>
                                <li><a href="">PHP</a></li>
                                <li><a href="">MySQL</a></li>
                                <li><a href="">XSLT</a></li>
                                <li><a href="">Ajax</a></li>
                            </ul>
                        </li>--%>
                       <%-- <li><a href="">楼盘位置</a>
                            <ul>
                                <li><a href="">captcha</a></li>
                                <li><a href="">gallery</a></li>
                                <li><a href="">animation</a></li>
                            </ul>
                        </li>--%>
                    <%--</ul>--%>
                </li>
                <li><a href="Base.aspx">主页</a></li>
            </ul>
        </div>
        <div id="mainContent">
            <%--<div id="sidebar"style="margin-left:25px">

  </div>--%>
            <%--  <div id="main">--%>
            <div id="small" style="margin-right: 25px; width: 35px; background-color: #335399;">
                <div id="pan" class="navItem" style="height: 40px; background-color: #335399; margin-left: 3px;">
                    <%--<img alt="" class="navItem" src="../picture/i_pan.png" title="平移" />--%>
                    <%-- <input id="Button8" type="button" value="拖动" />--%>
                </div>
                <div id="zoomin" class="navItem" style="height: 40px; background-color: #335399;">
                    <%--<img alt="" class="navItem" src="../picture/i_zoomin.png" title="放大" />--%>
                    <%--<input id="Button1" type="button" value="放大" />--%>
                </div>
                <div id="zoomout" style="height: 37px; background-color: #335399;" class="navItem">
                    <%--<img alt="" class="navItem" src="../picture/i_zoomout.png" title="缩小" />--%>
                    <%--<input id="Button2" type="button" value="缩小" />--%>
                </div>
                <%--  <div id="pan" class="navItem"
            style="height: 40px; background-color: #99FF66; margin-left: 3px;" >
         <img alt="" class="navItem" src="../picture/i_pan.png" title="平移"/></div>--%>
                <div id="Div1" style="height: 37px; background-color: #335399;" class="navItem">
                 <%--   <img alt="" class="navItem" src="../picture/shangyi.png" title="上移" />--%>
                    <%--<input id="Button3" type="button" value="上移" />--%>
                </div>
                <div id="Div2" style="height: 37px; background-color: #335399;" class="navItem">
                 <%--   <img alt="" class="navItem" src="../picture/xiayi.png" title="下移" />--%>
                    <%--<input id="Button4" type="button" value="下移" />--%>
                </div>
                <div id="Div3" style="height: 37px; background-color: #335399;" class="navItem">
                 <%--   <img alt="" class="navItem" src="../picture/zuoyi.png" title="左移" />--%>
                    <%--<input id="Button5" type="button" value="左移" />--%>
                </div>
                <div id="Div4" style="height: 37px; background-color: #335399;" class="navItem">
                    <%--<img alt="" class="navItem" src="../picture/youyi.png" title="右移" />--%>
                    <%--<input id="Button6" type="button" value="右移" />--%>
                </div>
                <div id="Div5" style="height: 37px; background-color: #335399;" class="navItem">
                    <%--<img  alt="" class="navItem" src="../picture/i_zoomfull.png" title="鹰眼"/>--%>
                    <%-- <input id="Button9" type="button" value="鹰眼" />--%>
                </div>
                <div id="HomeButton" style="position: absolute">
                </div>
            </div>
            <div id="map" class="map" style="margin: 10px; padding: 10px; background-color: #FFFFFF;">
            </div>
        </div>
    </div>
    <%-- <div id="footer" style="margin-right:25px;margin-left:25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href ="http://www.tshbj.gov.cn/portal/manage/manage.action"></a> </div>
</div>--%>
    <input type="hidden" id="sideStatus" value="1" />
    </form>
</body>
</html>
