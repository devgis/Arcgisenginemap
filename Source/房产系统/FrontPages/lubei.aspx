<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lubei.aspx.cs" Inherits="房产系统.lubei" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>路北楼盘</title>
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
    .normal
    {
        background-color:white;
    }
    .change
    {
        background-color:gray;
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
  <div id="sl">&nbsp;区域&nbsp;&nbsp; <a href="">不限</a>&nbsp;&nbsp; <a href="">路北<</a>&nbsp;&nbsp; <a href="">路南</a><br />
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
    <div id="p" onmouseover="this.className='change'" onmouseout="this.className='normal'">
    <a href="maohua.aspx"><asp:Image runat="server" ID="img" Width="200" Height="140px" ImageUrl="~/FrontPages/i/maohua.jpg" /></a>
        <div id="lp">
            <br />
            <a href="maohua.aspx">茂华唐山中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bolder;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7000</span>元/m²</div>
        <div id="js">&nbsp;&nbsp;&nbsp; 一居（1）二居（7）三居（2）
        </div>
        <div id="wz">&nbsp;&nbsp;&nbsp; 新华道与友谊路交叉口东北角<span style="font-weight:bold;color:red">&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">610957</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">334套可售</span>&nbsp;&nbsp; <span style="border:1px solid gray">疯狂6折房</span>&nbsp;&nbsp; <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp; <span style="background-color:Red;color:white">划片</span><span style="border:1px solid gray">唐山五十四中</span>
        </div>
        </div>
        <div id="p1" onmouseover="this.className='change'" onmouseout="this.className='normal'">
    <a href="fengning.aspx"><asp:Image runat="server" ID="img1" Width="200" Height="140px" ImageUrl="~/FrontPages/i/fengning.jpg" /></a>
        <div id="lp1">
            <br />
            <a href="fengning.aspx">丰宁锦苑</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bold;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;5380</span>元/m²</div>
        <div id="js1">&nbsp;&nbsp;&nbsp; 一居（1）二居（5）
        </div>
        <div id="wz1">&nbsp;&nbsp;&nbsp; 长宁道与唐丰路交叉口东北角<span style="font-weight:bold;color:red">&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">802497</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">291套可售</span>&nbsp;&nbsp; <span style="border:1px solid gray">5380元起</span>&nbsp;&nbsp; <span style="border:1px solid gray">小户型</span>&nbsp;&nbsp; <span style="background-color:Red;color:white">划片</span><span style="border:1px solid gray">龙泉中学</span>
        </div>
        </div>
        <div id="p2" onmouseover="this.className='change'" onmouseout="this.className='normal'">
    <a href="runda.aspx"><asp:Image runat="server" ID="img2" Width="200" Height="140px" ImageUrl="~/FrontPages/i/runda.jpg" /></a>
        <div id="lp2">
            <br />
            <a href="runda.aspx">润达万科金域蓝湾</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bold;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5500</span>元/m²</div>
        <div id="js2">&nbsp;&nbsp;&nbsp; 二居（4）三居（11）
        </div>
        <div id="wz2">&nbsp;&nbsp;&nbsp; 建华东道与河东路交汇处<span style="font-weight:bold;color:red">&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">673716</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">99套可售</span>&nbsp;&nbsp; <span style="border:1px solid gray">小户型</span>&nbsp;&nbsp;  <span style="border:1px solid gray">南北通透</span>&nbsp;&nbsp;<span style="border:1px solid gray">双卫</span>&nbsp;&nbsp; <span style="border:1px solid gray">板楼</span>
        </div>
        </div>
        <div id="p3">
    <a href=""><asp:Image runat="server" ID="Image1" Width="200" Height="140px" ImageUrl="~/FrontPages/i/tangcheng.jpg" /></a>
        <div id="lp3">
            <br />
            <a href="">唐城壹零壹</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bold;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11000</span>元/m²</div>
        <div id="js3">&nbsp;&nbsp;&nbsp; 一居（1）二居（3）三居（5）四居（2）
        </div>
        <div id="wz3">&nbsp;&nbsp;&nbsp;&nbsp;翔云道与友谊路德交汇处东侧<span style="font-weight:bold;color:red">&nbsp;
           &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">664920</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">144套可售</span>&nbsp;&nbsp; <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp; <span style="border:1px solid gray">板楼</span>&nbsp;&nbsp; <span style="background-color:red;color:White">划片</span><span style="border:1px solid gray">唐山市路北区光明实验小学</span>
        </div>
        </div>
        <div id="p4" onmouseover="this.className='change'" onmouseout="this.className='normal'">
    <a href=""><asp:Image runat="server" ID="img4" Width="200" Height="140px" ImageUrl="~/FrontPages/i/shiji.jpg" /></a>
        <div id="lp4">
            <br />
            <a href="">世纪龙庭二期</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bold;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 价格待定</span></div>
        <div id="js4">&nbsp;&nbsp;&nbsp; 一居（3）二居（9）三居（16）
        </div>
        <div id="wz4">&nbsp;&nbsp;&nbsp;&nbsp;建设路以东，龙泽路以西，龙富南道以北，大学道以南<span style="font-weight:bold;color:red">&nbsp;
           &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">660348</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">南北通透</span>&nbsp;&nbsp; <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp; <span style="border:1px solid gray">塔楼</span>&nbsp;&nbsp; <span style="border:1px solid gray">普通住宅</span>&nbsp;&nbsp; <span style="border:1px solid gray">毛坯</span>&nbsp;&nbsp; 
        </div>
        </div>
        <div id="p5" onmouseover="this.className='change'" onmouseout="this.className='normal'">
    <a href=""><asp:Image runat="server" ID="img5" Width="200" Height="140px" ImageUrl="~/FrontPages/i/hengmao.jpg" /></a>
        <div id="lp5">
            <br />
            <a href="">恒茂国际都会</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight:bold;font-size:20px;color:red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6500</span>元/m²</div>
        <div id="js5">&nbsp;&nbsp;&nbsp; 一居（1）二居（8）三居（6）
        </div>
        <div id="wz5">&nbsp;&nbsp;&nbsp;&nbsp;建设路与长宁道交汇处（远洋城对角）<span style="font-weight:bold;color:red">&nbsp;
           &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 400</span>-<span style="font-weight:bold;color:red">890</span>-<span style="font-weight:bold;color:red">0000</span>转<span style="font-weight:bold;color:red">627222</span></div>
         <div>&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp; <span style="border:1px solid gray">139套可售</span>&nbsp;&nbsp; <span style="border:1px solid gray">南北通透</span>&nbsp;&nbsp; <span style="border:1px solid gray">双卫</span>&nbsp;&nbsp; <span style="background-color:red;color:White">划片</span><span style="border:1px solid gray">唐山市路北区裕华道第二小学</span>
        </div>
        </div><br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        共<span style="color:Red;font-weight:bold">15</span>条 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="background-color:red;color:white;text-align:center;font-size:20px"><asp:label ID="Label1" runat="server" Width="30px" Height="40px"><a href="lubei.aspx">1</a></asp:label></span>&nbsp; <span style="border:1px solid gray;text-align:center;font-size:20px;color:Black"><asp:label ID="Label2" runat="server" Width="30px" Height="40px"><a href="lubei_two.aspx">2</a></asp:label></span>&nbsp; <span style="border:1px solid gray;text-align:center;font-size:20px;color:Black"><asp:label ID="Label3" runat="server" Width="30px" Height="40px"><a href="lubei_three.aspx">3</a></asp:label></span>&nbsp; 
        
    </form>
</body>
</html>

