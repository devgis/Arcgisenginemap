<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shibo_lp_photo.aspx.cs" Inherits="房产系统.shibo_lp_photo" %>

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
        #p
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
           
        }
        #p1
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
        }
        #p2
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
            
        }
        #p3
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
             
        }
       
        #p5
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
           
        }
        #i1
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #i2
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #i3
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #i4
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #i5
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #i6
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #i7
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #i8
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #h1
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #h2
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #h3
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #h4
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #h5
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #h6
        {
            margin-top: 20px;
            margin-left: 3px;
        }
        #h7
        {
            margin-top: 20px;
            margin-left: 3px;
        }
        #h8
        {
            margin-top: 20px;
            margin-left: 3px;
        }
        #h9
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #h10
        {
            margin-top: 20px;
            margin-left: 3px;
        }
        #j1
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #x1
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #x2
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #x3
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #x4
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #x5
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #x6
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #x7
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #x8
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #y1
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #y2
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #y3
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #y4
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #y5
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #y6
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #y7
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #y8
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #pt1
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #pt2
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #pt3
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #pt4
        {
            margin-top: 10px;
            margin-left: 3px;
        }
        #pt5
        {
            margin-top: 20px;
            margin-left: 20px;
        }
        #pt6
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #pt7
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #pt8
        {
            margin-top: 20px;
            margin-left: 5px;
        }
        #left
        {
            border: 1px solid gray;
            margin-top: 28px;
            margin-left: 100px;
            width: 129px;
            height: 216px;
            float: left;
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
    <asp:Image runat="server" ID="img" ImageUrl="~/i4/w1.png" />
    <br />
    <font size="6px" color="black">&nbsp; 世博广场</font><br />
    <br />
   <span style="border:1px solid gray;background-color:rgb(204,204,204);margin-left:34px">新盘首开</span>&nbsp;&nbsp; <span style="border:1px solid gray">南北通透</span>&nbsp;&nbsp;  <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp;<span style="border:1px solid gray">板楼</span>&nbsp;&nbsp;<span style="border:1px solid gray">普通住宅</span>&nbsp;&nbsp; <span style="background-color:Red;color:white">划片小学</span><span style="border:1px solid gray">唐山市路南区实验上小学</span>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div id="dh" style="background: RGB(223,223,223)">
        <table style="width: 1197px; height: 30px">
            <tr>
                <td style="height: 24px; width: 33%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="shibo.aspx"><font color="black">楼盘首页</font></a>
                </td>
                <td style="height: 24px; width: 33%; background-color: red">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="shibo_lp_photo.aspx"><font color="black">楼盘相册</font></a>
                </td>
                <td style="height: 24px; width: 33%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="shibo_lp_detail.aspx"><font color="black">楼盘详情</font></a>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div id="left">
        <tr>
            <a href="">
                <asp:Image ID="Image1" runat="server" Width="129px" Height="36px" ImageUrl="~/FrontPages/i1/shijingtu.png"
                    BackColor="Red" /></a></tr>
        <br />
        <tr>
            <asp:Image ID="Image2" runat="server" Width="129px" Height="36px" ImageUrl="/FrontPages/i1/huxingtu.png" /></tr>
        <br />
        <tr>
            <asp:Image ID="Image3" runat="server" Width="129px" Height="36px" ImageUrl="~/i1/jiaotongtu.png" /></tr>
        <br />
        <tr>
            <asp:Image ID="Image4" runat="server" Width="129px" Height="36px" ImageUrl="~/i1/xiaoguotu.png" /></tr>
        <br />
        <tr>
            <asp:Image ID="Image5" runat="server" Width="129px" Height="36px" ImageUrl="~/i1/yangbanjian.png" /></tr>
        <br />
        <tr>
            <asp:Image ID="Image6" runat="server" Width="129px" Height="36px" ImageUrl="~/i1/peitaotu.png" /></tr>
        <br />
    </div>
    <span style="margin-left: 20px; font-weight: bold">实景图</span>
    <div id="p">
        <asp:Image runat="server" ID="i1" Width="243px" Height="160px" ImageUrl="~/i4/s1.jpg" />
        <asp:Image runat="server" ID="i2" Width="243px" Height="160px" ImageUrl="~/i4/s2.jpg" />
        <asp:Image runat="server" ID="i3" Width="243px" Height="160px" ImageUrl="~/i4/s3.jpg" />
        <asp:Image runat="server" ID="i4" Width="243px" Height="160px" ImageUrl="~/i4/s4.jpg" />
        <br />
        <br />
        <br />
        <asp:Image runat="server" ID="i5" Width="243px" Height="160px" ImageUrl="~/i4/s5.jpg" />
        <asp:Image runat="server" ID="i6" Width="243px" Height="160px" ImageUrl="~/i4/s6.jpg" />
        <asp:Image runat="server" ID="i7" Width="243px" Height="160px" ImageUrl="~/i4/s7.jpg" />
        <asp:Image runat="server" ID="i8" Width="243px" Height="160px" ImageUrl="~/i4/s8.jpg" /><br /><br />
    </div>
    <br />
    <span style="margin-left: 250px; font-weight: bold">户型图</span><br />
    <div id="p1">
        <asp:Image runat="server" ID="h1" Width="243px" Height="160px" Style="border-bottom: 1px solid gray"
            ImageUrl="~/i4/h1.jpg" />
        <asp:Image runat="server" ID="h2" Width="243px" Height="160px" ImageUrl="~/i4/h2.jpg" />
        <asp:Image runat="server" ID="h3" Width="243px" Height="160px" ImageUrl="~/i4/h3.jpg" />
        <asp:Image runat="server" ID="h4" Width="243px" Height="160px" ImageUrl="~/i4/h4.jpg" />
        <br />
        <br />
        <asp:Image runat="server" ID="h5" Width="243px" Height="160px" ImageUrl="~/i4/h5.jpg" />
        <asp:Image runat="server" ID="h6" Width="243px" Height="160px" ImageUrl="~/i4/h6.jpg" />
        <br /><br />
    </div>
    <br />
    <span style="margin-left: 250px; font-weight: bold">交通图</span><br />
    <div id="p2">
        <asp:Image runat="server" ID="j1" Width="243px" Height="160px" ImageUrl="~/i4/j1.jpg"/><br /><br />
    </div><br />
    <span style="margin-left: 250px; font-weight: bold">效果图</span><br />
    <div id="p3">
        <asp:Image runat="server" ID="x1" Width="243px" Height="160px" ImageUrl="~/i4/x1.jpg" />
    <br /><br />
    </div><br />
    <span style="margin-left: 250px; font-weight: bold">配套图</span><br />
    <div id="p5">
    <asp:Image runat="server" ID="pt1" Width="243px" Height="160px" ImageUrl="~/i4/p1.jpg" />
        <asp:Image runat="server" ID="pt2" Width="243px" Height="160px" ImageUrl="~/i4/p2.jpg"/>
        <asp:Image runat="server" ID="pt3" Width="243px" Height="160px" ImageUrl="~/i4/p3.jpg" />
        <asp:Image runat="server" ID="pt4" Width="243px" Height="160px" ImageUrl="~/i4/p4.jpg" />
        <br />
        <br />
        <br />
        <asp:Image runat="server" ID="pt5" Width="243px" Height="160px" ImageUrl="~/i4/p5.jpg" />
        <asp:Image runat="server" ID="pt6" Width="243px" Height="160px" ImageUrl="~/i4/p6.jpg" /><br />
        <br />
    </div>
    </form>
</BODY>
</HTMl>
