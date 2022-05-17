<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maohua.aspx.cs" Inherits="房产系统.maohua" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>茂华唐山中心</title>
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
        margin-top:20px;
        margin-left:100px;
        border-bottom:1px dotted;
        width:1000px;  
    }
    a:link
    {
        text-decoration:none;
    }
    a:hover
    {
        text-decoration:underline;
        color:black;
    }
    #img
    {
        margin-top:20px;
        margin-left:100px;
        float:left;
    }
    #img1
    {
        margin-top:10px;
        margin-left:10px;
        float:left;
    } 
   #dh
    {
        margin-left:100px;
        width: 1197px;
        height:30px;
        color:Black;
        font-size:20px;
        border-bottom-color:Red;
     }
     #center
     {
        margin-top:20px;
        margin-left:100px;
        width: 1200px;
        height:340px;
     } 
     #price
     {
          padding-top:15px;
          padding-left:10px;
          margin-top:10px;
          margin-left:20px;
          background-color:rgb(255,242,233);
         
     }
      #kaipan
     {
          padding-top:15px;
          padding-left:10px;
          margin-top:20px;
          margin-left:20px;
           background-color:rgb(255,242,233);
     }
     #position
     {
          padding-top:15px;
          padding-left:10px;
          margin-top:20px;
          margin-left:20px;
          background-color:rgb(255,242,233);
     }
     #huxing
     {
          padding-top:15px;
          padding-left:10px;
          margin-top:20px;
          margin-left:20px;
           background-color:rgb(255,242,233);
     }
        .style1
        {
            height: 34px;
            width: 53%;
        }
        .style2
        {
            height: 28px;
            width: 53%;
        }
        .style3
        {
            height: 34px;
            width: 23%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <input type=text runat="server" ID="tb" placeholder="请输入关键字" />
   <asp:Button runat="server" ID="btn1" width="60px" Height="40px" Text="搜索" 
            style="color:red;font-size:20px; margin-left: 0px;" /><br />
    <div id="top"><span style="font-size:10px"><a href="start.aspx">唐山新房</a> > <a href="">路北楼盘</a> > <a href="maohua.aspx">茂华唐山中心</a></span><br />
        <br />
    </div>
    <asp:Image runat="server" ID="img" ImageUrl="~/FrontPages/i/w1.png" />
    <br />
    <font size="6px" color="black">&nbsp; 茂华唐山中心</font><br />
    <br />
    <span style="border:1px solid gray;margin-left:34px">待售</span>&nbsp;&nbsp; <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp;  <span style="border:1px solid gray">板楼</span>&nbsp;&nbsp;<span style="border:1px solid gray">普通住宅</span>&nbsp;&nbsp; <span style="border:1px solid gray">毛坯</span>
    <br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div id="dh" style=" background:RGB(223,223,223)">
    <table style=" width:1197px;  height:30px">
       <tr>
         <td style=" height:24px; width:33%;background-color:red ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="maohua.aspx"><font color="black" >楼盘首页</font></a></td>
         <td style=" height:24px; width:33%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="maohua_lp_photo.aspx"><font color=black>楼盘相册</font></a></td>
         <td style=" height:24px; width:33% ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="maohua_lp_detail.aspx"><font color=black >楼盘详情</font></a></td>
       </tr>
       </table></div>
       <div id="center">
    <asp:Image runat="server" ID="img1" Width="480px" Height="320px" ImageUrl="i1/maohua_x1.jpg" style="margin-top:" />
    <table runat="server" width="680px" height=""  
               style="margin-left:517px;">
    <tr style="with:680px;height:28px">
    <td style="with:150px;font-weight:bold;padding-top:10px" class="style3">价格：</td>
    <td><asp:Label runat="server" ID="price" Width="550px" Height="28px"  ></asp:Label></td>
    </tr>
     <tr style="with:680px;height:28px">
    <td style="with:150px;font-weight:bold;padding-top:10px" class="style3">最新开盘：</td>
    <td><asp:Label runat="server" ID="kaipan" Width="550px" Height="28px" ></asp:Label></td>
    </tr>
     <tr style="with:680px;height:28px">
    <td style="with:150px;font-weight:bold;padding-top:10px" class="style3">楼盘地址：</td>
    <td><asp:Label runat="server" ID="position" Width="550px" Height="28px" ></asp:Label></td>
    </tr>
     <tr style="with:680px;height:28px">
    <td style="with:150px;font-weight:bold;padding-top:10px" class="style3">主力户型：</td>
    <td><asp:Label runat="server" ID="huxing" Width="550px" Height="28px" ></asp:Label></td>
    </tr>
    </table>
     <table id="Table1" runat="server" width="680px" height=""  
               style="margin-left:517px;">
    <tr style="with:680px;height:28px">
    <td class="style2">&nbsp;&nbsp; <a href="maohua_lp_detail.aspx"><font color="red" size="3px">更多详细信息>></font></a>&nbsp;&nbsp; </td></tr>
    </table>
    </div>
    <br /><br /><br />
    </form>
</body>
</html>
