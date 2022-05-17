<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="four.aspx.cs" Inherits="房产系统.four" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>房产信息查询</title>
    <style type="text/css">
    #tb
    {
        margin-top:98px;
        margin-left:100px;
        Height:37px;
        Width:600px;
    }
    #top
    {
        margin-top:30px;
        margin-left:100px;
        border:1px solid gray;
        width:1000px;
        height:495px;
        color:Gray;
    }
    #a1
    {
        margin-top:10px;
        margin-left:10px;
    }
    #sl
    {
   
        border-bottom:1px dotted;
    }
    a:link
    {
        text-decoration:none;
    }
    a:hover
    {
        text-decoration:underline;
        color:Red;
    }
    #p
    {
        margin-top:30px;
        margin-left:100px;
        width:1000px;
        height:160px;
        border:1px solid grey;
    }
     #p1
    {
        margin-top:20px;
        margin-left:100px;
        width:1000px;
        height:160px;
        border:1px solid grey;
    }
     #p2
    {
        margin-top:20px;
        margin-left:100px;
        width:1000px;
        height:160px;
        border:1px solid grey;
    }
     #p3
    {
        margin-top:20px;
        margin-left:100px;
        width:1000px;
        height:160px;
        border:1px solid grey;
    }
    #p4
    {
        margin-top:20px;
        margin-left:100px;
        width:1000px;
        height:160px;
        border:1px solid grey;
    }
    #p5
    {
        margin-top:20px;
        margin-left:100px;
        width:1000px;
        height:160px;
        border:1px solid grey;
    }
    #img
    {
        float:left;
        margin-top:10px;
        margin-left:10px;
    }
     #img1
    {
        float:left;
        margin-top:10px;
        margin-left:10px;
    }
    #img2
    {
        float:left;
        margin-top:10px;
        margin-left:10px;
    }
    #img3
    {
        float:left;
        margin-top:10px;
        margin-left:10px;
    }
    #img4
    {
        float:left;
        margin-top:10px;
        margin-left:10px;
    }
    #img5
    {
        float:left;
        margin-top:10px;
        margin-left:10px;
    }
    #lp
    {
        margin-top: 0px;
        margin-left:242px;
        width: 1090px;
    }
    #lp1
    {
        margin-top: 0px;
        margin-left:242px;
        width: 1090px;
    }
    #lp2
    {
        margin-top: 0px;
        margin-left:242px;
        width: 1090px;
    }
    #lp3
    {
        margin-top: 0px;
        margin-left:242px;
        width: 1090px;
    }
    #lp4
    {
        margin-top: 0px;
        margin-left:242px;
        width: 1090px;
    }
    #lp5
    {
        margin-top: 0px;
        margin-left:242px;
        width: 1090px;
    }
    #js
    {
        margin-top:20px;
    }
    #js1
    {
        margin-top:20px;
    }
     #js2
    {
        margin-top:20px;
    }
     #js3
    {
        margin-top:20px;
    }
     #js4
    {
        margin-top:20px;
    }
     #js5
    {
        margin-top:20px;
    }
    #wz
    {
        margin-top:20px;
        width:1590px;
    }
    #wz1
    {
        margin-top:20px;
        width:1590px;
    }
     #wz2
    {
        margin-top:20px;
        width:1590px;
    }
     #wz3
    {
        margin-top:20px;
        width:1590px;
    }
     #wz4
    {
        margin-top:20px;
        width:1590px;
    }
     #wz5
    {
        margin-top:20px;
        width:1590px;
    }
    input::-webkit-input-placeholder 
    {
        font-size:15px;
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <input type=text runat="server" ID="tb" placeholder="请输入关键字" />
   <asp:Button runat="server" ID="btn1" width="60px" Height="40px" Text="搜索" style="color:red;font-size:20px" />
    <div id="top">
        <div id="a1">
            <br />
            <font color="black"><a href=""><span style="font-family:@华文楷体;color:Black;font-weight:bold">楼盘搜索</span><br /></a></font>
            <br />
        </div><br />
        <br />
  <div id="sl">&nbsp;区域&nbsp;&nbsp; <a href="">不限</a>&nbsp;&nbsp; <a href="">路北</a>&nbsp;&nbsp; <a href="">路南</a><br />
      <br />
      <br />
        </div><br />
        <br />
  <div id="sl">&nbsp;类型&nbsp;&nbsp; <a href="">不限</a>&nbsp;&nbsp; <a href="">住宅</a>&nbsp;&nbsp; <a href="">经济适用房</a>&nbsp;&nbsp; <a href="">别墅</a>&nbsp;&nbsp; <a href="">写字楼</a>&nbsp;&nbsp; <a href="">商铺</a>&nbsp;&nbsp; <a href="">两限房</a><br />
      <br />
      <br />
        </div>
        <br />
        <br />
  <div id="sl"> &nbsp;价格&nbsp;&nbsp; <a href="">不限</a>&nbsp;&nbsp; <a href="">4000以下</a>&nbsp;&nbsp; <a href="">4000-5000</a>&nbsp;&nbsp; <a href="">5000-6000</a>&nbsp;&nbsp; <a href="">6000以上</a>&nbsp;&nbsp; 单位（元/㎡）<br />
      <br />
      <br />
        </div>
        <br />
        <br />
  <div id="sl"> &nbsp;特色&nbsp;&nbsp; <a href="">不限</a>&nbsp;&nbsp; <a href="">小户型</a>&nbsp;&nbsp; <a href="">精装修</a>&nbsp;&nbsp; <a href="">低总价</a>&nbsp;&nbsp; <a href="">学区房</a><br />
      <br />
      <br />
        </div>
        <br />
        <br />
  &nbsp;其他&nbsp;&nbsp; <asp:DropDownList runat="server" ID="ddl1">
  <asp:ListItem Text="销售状态不限" Selected></asp:ListItem>
  <asp:ListItem Text="在售楼盘" ></asp:ListItem>
  <asp:ListItem Text="待售楼盘" ></asp:ListItem>
  <asp:ListItem Text="停售楼盘" ></asp:ListItem>
  </asp:DropDownList>&nbsp;&nbsp;
  <asp:DropDownList runat="server" ID="ddl2">
  <asp:ListItem Text="户型不限" Selected></asp:ListItem>
  <asp:ListItem Text="一居" ></asp:ListItem>
  <asp:ListItem Text="两居" ></asp:ListItem>
  <asp:ListItem Text="三居" ></asp:ListItem>
  <asp:ListItem Text="四居" ></asp:ListItem>
  <asp:ListItem Text="五居" ></asp:ListItem>
  <asp:ListItem Text="五居以上" ></asp:ListItem>
  </asp:DropDownList>&nbsp;&nbsp;
  <asp:DropDownList runat="server" ID="ddl3">
  <asp:ListItem Text="开盘时间不限" Selected></asp:ListItem>
  <asp:ListItem Text="本月开盘" ></asp:ListItem>
  <asp:ListItem Text="下月开盘" ></asp:ListItem>
  <asp:ListItem Text="三月内开盘" ></asp:ListItem>
  <asp:ListItem Text="六月内开盘"></asp:ListItem>
  <asp:ListItem Text="前三个月已开" ></asp:ListItem>
  <asp:ListItem Text="前六个月已开" ></asp:ListItem>
  </asp:DropDownList>
        <br />
        <br />
    </div>
    <div id="p">
    <a href=""><asp:Image runat="server" ID="img" Width="200" Height="140px" ImageUrl="~/i/fuqiang.jpg" /></a>
        <div id="lp">
            <br />
            <a href="">富强城</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6300</span>元/m²</div>
        <div id="js">&nbsp;&nbsp;&nbsp; 一居（7）二居（10）三居（2）
        </div>
        <div id="wz">&nbsp;&nbsp;&nbsp; 北新道与华岩路交叉口西北侧<span style="font-weight:bold;color:red">&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">650529</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">93套可售</span>&nbsp;&nbsp; <span style="border:1px solid gray">小户型</span>&nbsp;&nbsp; <span style="border:1px solid gray">板楼</span>&nbsp;&nbsp; <span style="border:1px solid gray">塔楼</span>&nbsp;&nbsp; <span style="border:1px solid gray">商住楼</span>&nbsp;&nbsp; 
        </div>
        </div>
        <div id="p1">
    <a href=""><asp:Image runat="server" ID="img1" Width="200" Height="140px" ImageUrl="~/i/zijin.jpg" /></a>
        <div id="lp1">
            <br />
            <a href="">紫金锦苑</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bold;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;6800</span>元/m²</div>
        <div id="js1">&nbsp;&nbsp;&nbsp; 二居（1）三居（5）四居（1）
        </div>
        <div id="wz1">&nbsp;&nbsp;&nbsp; 北新道北侧，原唐山车管所用地<span style="font-weight:bold;color:red">&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">632790</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">103套可售</span>&nbsp;&nbsp; <span style="border:1px solid gray">大户型</span>&nbsp;&nbsp; <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp; <span style="background-color:Red;color:white">划片</span><span style="border:1px solid gray">唐山市路北区实验小学</span>
        </div>
        </div>
        <div id="p2">
    <a href=""><asp:Image runat="server" ID="img2" Width="200" Height="140px" ImageUrl="~/i/chengan.jpg" /></a>
        <div id="lp2">
            <br />
            <a href="">诚安友谊天地</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bold;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 价格待定</span></div>
        <div id="js2">&nbsp;&nbsp;&nbsp; 一居（4）二居（4）
        </div>
        <div id="wz2">&nbsp;&nbsp;&nbsp; 友谊路与国防道交叉口东南角<span style="font-weight:bold;color:red">&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">618684</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">小户型</span>&nbsp;&nbsp; <span style="border:1px solid gray">南北通透</span>&nbsp;&nbsp; <span style="border:1px solid gray">板楼</span>&nbsp;&nbsp; <span style="background-color:Red;color:white">划片</span><span style="border:1px solid gray">友谊中学</span>
        </div>
        </div>
        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        共<span style="color:Red;font-weight:bold">21</span>条 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <span style="border:1px solid gray;text-align:center;font-size:20px;color:Black"><asp:label ID="Label2" runat="server" Width="30px" Height="40px"><a href="start.aspx">1</a></asp:label></span>&nbsp; <span style="border:1px solid gray;text-align:center;font-size:20px;color:Black"><asp:label ID="Label3" runat="server" Width="30px" Height="40px"><a href="two.aspx">2</a></asp:label></span>&nbsp; <span style="border:1px solid gray;text-align:center;font-size:20px;color:Black"><asp:label ID="Label4" runat="server" Width="30px" Height="40px"><a href="three.aspx">3</a></asp:label></span>&nbsp;<span style="background-color:red;color:white;text-align:center;font-size:20px"><asp:label ID="Label1" runat="server" Width="30px" Height="40px"><a href="four.aspx">4</a></asp:label></span> 
        
    </form>
</body>
</html>
