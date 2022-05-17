<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shibo_lp_detail.aspx.cs" Inherits="房产系统.shibo_lp_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>世博广场</title>
    <style type="text/css">
        #tb
        {
            margin-top: 98px;
            margin-left: 100px;
            height: 37px;
            width: 600px;
        }
        #top
        {
            margin-top: 20px;
            margin-left: 100px;
            border-bottom: 1px dotted;
            width: 1200px;
        }
        a:link
        {
            text-decoration: none;
        }
        a:hover
        {
            text-decoration: underline;
        }
        #img
        {
            margin-top: 20px;
            margin-left: 100px;
            float: left;
        }
        #dh
        {
            margin-left: 100px;
            width: 1197px;
            height: 30px;
            color: Black;
            font-size: 20px;
            border-bottom-color: Red;
        }
        #center
        {
            float:left;
            border: 1px solid rgb(172,210,233);
            margin-left: 100px;
            width: 877px;
        
        }
        #right
        {
            margin-left:987px;
            width:307px;
            height:350px;
            border: 1px solid rgb(172,210,233);
        }
        #right-down
        {
            margin-top:20px;
            margin-left:987px;
            width:307px;
            height:319px;
            border: 1px solid rgb(172,210,233);
        }
        .style2
        {
            width: 75px;
        }
        .style4
        {
            width: 294px;
        }
        .style5
        {
            width: 11%;
        }
        .style7
        {
            width: 318px;
        }
        .style8
        {
            width: 143px;
        }
        .style9
        {
            width: 848px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <input type="text" runat="server" id="tb" placeholder="请输入关键字" />
    <asp:Button runat="server" ID="btn1" Width="60px" Height="40px" Text="搜索" Style="color: red;
        font-size: 20px; margin-left: 0px;" /><br />
    <div id="top">
        <span style="font-size: 10px"><a href="start.aspx">唐山新房</a> > <a href="">路南楼盘</a> >
            <a href="shibo.aspx">世博广场</a></span><br />
        <br />
    </div>
    <asp:Image runat="server" ID="img" ImageUrl="~/i2/w1.png" />
    <br />
    <font size="6px" color="black">&nbsp; 世博广场</font><br />
    <br />
   <span style="border:1px solid gray;background-color:rgb(204,204,204);margin-left:34px">新盘首开</span>&nbsp;&nbsp; <span style="border:1px solid gray">南北通透</span>&nbsp;&nbsp;  <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp;<span style="border:1px solid gray">板楼</span>&nbsp;&nbsp;<span style="border:1px solid gray">普通住宅</span>&nbsp;&nbsp; <span style="background-color:Red;color:white">划片小学</span><span style="border:1px solid gray">唐山市路南区实验上小学</span>
    <br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div id="dh" style="background: RGB(223,223,223)">
        <table style="width: 1197px; height: 30px">
            <tr>
                <td style="height: 24px; width: 33%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="shibo.aspx"><font color="black">楼盘首页</font></a>
                </td>
                <td style="height: 24px; width: 33%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="shibo_lp_photo.aspx"><font color="black">楼盘相册</font></a>
                </td>
                <td style="height: 24px; width: 33%; background-color: red">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shibo_lp_detail.aspx"><font color="black">楼盘详情</font></a>
                </td>
            </tr>
        </table>
    </div>
    <br />
  <div id="center">
        <table style="width: 877px; height: 24px;background: RGB(224,237,248)">
            <tr>
                <td style="height: 24px; width: 25%;font-color:black;border-right:1px solid rgb(172,210,233);font-weight:bold">&nbsp; 世博广场基本信息</td>
                <td style="height: 24px; width: 75%;border-bottom:1px solid rgb(172,210,233)"></td>
            </tr>
        </table>
        <table style="width:820px;margin-top:20px; margin-left:25px">
        <tr>
        <td class="style2"><asp:Image ID="Image1" runat="server" ImageUrl="~/i/jbxx.png" /></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">物业类别:</td>
        <td class="style4"><asp:Label ID="Label1" runat="server"  style="font-size:14px;width:30%;"></asp:Label></td>
        <td style="font-color:black;font-size:15px;font-weight:bold;" class="style5">项目特色:</td>
        <td class="style7"><asp:Label ID="Label2" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">建筑类别:</td>
        <td class="style4"><asp:Label ID="Label3" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        <td style="font-color:black;font-size:15px;font-weight:bold;" class="style5">装修状况:</td>
        <td class="style7"><asp:Label ID="Label4" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">容积率:</td>
        <td class="style4"><asp:Label ID="Label5" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        <td style="font-color:black;font-size:15px;font-weight:bold;" class="style5">绿化率:</td>
        <td class="style7"><asp:Label ID="Label6" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">开盘时间:</td>
        <td class="style4"><asp:Label ID="Label7" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        <td style="font-color:black;font-size:15px;font-weight:bold;" class="style5">交房时间:</td>
        <td class="style7"><asp:Label ID="Label8" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">物业费:</td>
        <td class="style4"><asp:Label ID="Label9" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        <td style="font-color:black;font-size:15px;font-weight:bold;" class="style5">物业公司:</td>
        <td class="style7"><asp:Label ID="Label10" runat="server"  style="font-size:14px;width:30%"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">开发商:</td>
        <td class="style4"><asp:Label ID="Label11" runat="server"  style="font-size:14px;width:600px"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">售楼地址:</td>
        <td class="style4"><asp:Label ID="Label12" runat="server"  style="font-size:14px;width:600px"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">物业地址:</td>
        <td class="style4"><asp:Label ID="Label13" runat="server"  style="font-size:14px;width:600px"></asp:Label></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">交通状况:</td>
        <td class="style4"><asp:Label ID="Label14" runat="server"  style="font-size:14px;width:600px"></asp:Label></td>
        </tr>
        </table>
        <table style="width:820px; margin-left:25px;border-bottom:1px dotted rgb(212,212,212)">
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;width:19%" 
                class="style8">世博广场房价:</td>
        <td class="style4"><asp:Label ID="Label15" runat="server"  style="font-size:18px;width:600px;color:red;font-weight:bold"></asp:Label></td>
        </tr>
        <tr style="height:30px"></tr>
        </table><br />
       <table style="width:820px;margin-top:30px; margin-left:25px;border-bottom:1px dotted rgb(212,212,212);font-size:14px">
        <tr>
        <td class="style2"><asp:Image ID="Image3" runat="server" ImageUrl="~/i/xmpt.png" /></td>
        </tr>
        <tr>
        <td>
        <asp:Repeater runat="server" ID="rp1">
        <ItemTemplate>
        <div style=" width:820px; height:200px;"><%#Eval("equipment") %></div> 
        </ItemTemplate>
        </asp:Repeater></td>
        </tr>
        <tr style="height:30px"></tr>
        </table>
       <table style="width:820px;margin-top:30px; margin-left:25px;border-bottom:1px dotted rgb(212,212,212)">
        <tr>
        <td class="style2"><asp:Image ID="Image2" runat="server" ImageUrl="~/i/jtzk.png" /></td>
        </tr>
        <tr style="height:30px">
        <td><asp:Label ID="Label16" runat="server" style="font-size:14px;width:820px;margin-left:2px"><br /><br /><br /></asp:Label></td>
        </tr>
        <tr style="height:30px"></tr>
        </table> 
       <table style="width:820px;margin-top:30px; margin-left:25px;border-bottom:1px dotted rgb(212,212,212);font-size:14px">
        <tr>
        <td class="style2"><asp:Image ID="Image4" runat="server" ImageUrl="~/i/lczk.png" /></td>
        </tr>
        <tr>
        <td>
        <asp:Repeater runat="server" ID="Repeater1">
        <ItemTemplate>
        <div style=" width:820px; height:100px;"><%#Eval("floor_condition") %></div> 
        </ItemTemplate>
        </asp:Repeater></td>
        </tr>
        <tr style="height:30px"></tr>
        </table>
       <table style="width:820px;margin-top:30px; margin-left:25px;border-bottom:1px dotted rgb(212,212,212)">
        <tr>
        <td><asp:Image runat="server" ImageUrl="~/i/cwxx.png" /></td>
        </tr>
        <tr style="height:30px">
        <td><asp:Label ID="Label17" runat="server" style="font-size:14px;width:820px;margin-left:2px"><br /><br /><br /></asp:Label></td>
        </tr>
        <tr style="height:30px"></tr>
        </table> 
       <table style="width:820px;margin-top:30px; margin-left:25px">
        <tr>
        <td class="style2"><asp:Image ID="Image5" runat="server" ImageUrl="~/i/xgxx.png" /></td>
        </tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">占地面积:</td>
        <td class="style9"><asp:Label ID="Label18" runat="server"  style="font-size:14px;width:30%;"></asp:Label></td></tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">建筑面积:</td>
        <td class="style9"><asp:Label ID="Label19" runat="server"  style="font-size:14px;width:30%;"></asp:Label></td></tr>
        <tr style="height:30px">
        <td style="font-color:black;font-size:15px;font-weight:bold;padding-left:5px;" 
                class="style2">产权年限:</td>
        <td class="style9"><asp:Label ID="lbl20" runat="server"  style="font-size:14px;width:30%;"></asp:Label></td></tr>
        <tr style="height:30px"></tr>
        </table>
  </div>
  <div id="right">
  <table style="width:307px;height:320px">
  <tr><div style="font-weight:bold;margin-top:8px;border-bottom:1px solid rgb(199,204,211);width:307px"><font color="blue">&nbsp;唐山热门楼盘</font></div></tr><br />
  <tr><span style="background-color:rgb(238,238,238);font-weight:bold;margin-left:10px"><font color="black">楼盘名称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区县</font></span></tr><br /><br />
  <tr><span style="margin-left:10px"><a href="longze.aspx">龙泽国际</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高新区</span></tr><br />
  <tr><div style="margin-left:10px;margin-top:10px"><a href="boyue.aspx">铂悦山</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路北</div></tr>
  <tr><div style="margin-left:10px;margin-top:10px"><a href="wanke.aspx">万科新里程</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路北</div></tr>
  <tr><div style="margin-left:10px;margin-top:10px"><a href="dianjian.aspx">电建地产首郡</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路北</div></tr>
  <tr><div style="margin-left:10px;margin-top:10px"><a href="anlian.aspx">安联优悦城</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路北</div></tr>
  <tr><div style="margin-left:10px;margin-top:10px"><a href="xintiandi.aspx">新天地美域</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路北</div></tr>
  <tr><div style="margin-left:10px;margin-top:10px"><a href="runda.aspx">润达万科金域蓝湾</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路北</div></tr>
  <tr><div style="margin-left:10px;margin-top:10px"><a href="shibo.aspx">世博广场</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路南</div></tr><tr>
  <tr><div style="margin-left:10px;margin-top:10px"><a href="nanhu.aspx">南湖明珠</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;路南</div></tr>
  </table>
  </div>
  <div id="right-down">
  <table style="width:307px;height:320px">
  <tr><div style="font-weight:bold;margin-top:8px;border-bottom:1px solid rgb(199,204,211);width:307px"><font color="blue">&nbsp;购房指南</font></div></tr><br />
  <tr><span style="margin-left:10px"><a href="http://zhishi.fang.com/detail/ts_108197.html">青岛停车费的收费标准&nbsp;租车位一个月...</a></span></tr><br />
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_6912.html" >普通住宅定义解析&nbsp;多为多层住宅和高...</a></div></tr>
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_41173.html" >多层和小高层的区别&nbsp;多层一般高于10...</a></div></tr>
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_6163.html" >多层住宅概念解读及优缺点分析</a></div></tr>
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_42076.html">高层住宅居住成本有多高&nbsp;要比多层住...</a></div></tr>
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_43403.html" >多层住宅和高层住宅各方面条件的比较</a></div></tr>
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_41296.html">多层和小高层的划分标准？是多层好还...</div></tr>
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_41178.html" >多层住宅容积率一般是多少？容积率...</a></div></tr><tr>
  <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_44746.html">襄阳市普通住宅物业服务收费管理规范</a></div></tr>
   <tr><div style="margin-left:10px;margin-top:8px"><a href="http://zhishi.fang.com/detail/ts_46447.html" >长春新房契税不等&nbsp;长春执行普通住宅...</a></div></tr>
  </table>
  </div>
    </form>
    </body>
    </html>