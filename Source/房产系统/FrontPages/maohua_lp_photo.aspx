<%@ PAGE LANGUAGE="C#" AUTOEVENTWIREUP="TRUE" CODEBEHIND="MAOHUA_LP_PHOTO.ASPX.CS"
    Inherits="房产系统.maohua_lp_photo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>茂华唐山中心</title>
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
            height: 456px;
        }
        #p1
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
            height: 716px;
        }
        #p2
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
            height: 218px;
        }
        #p3
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
            height: 456px;
        }
        #p4
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
            height: 456px;
        }
        #p5
        {
            border: 1px solid gray;
            margin-top: 10px;
            margin-left: 250px;
            width: 1045px;
            height: 456px;
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
        <span style="font-size: 10px"><a href="start.aspx">唐山新房</a> > <a href="">路北楼盘</a> >
            <a href="maohua.aspx">茂华唐山中心</a></span><br />
        <br />
    </div>
    <asp:Image runat="server" ID="img" ImageUrl="~/i/w1.png" />
    <br />
    <font size="6px" color="black">&nbsp; 茂华唐山中心</font><br />
    <br />
    <span style="border: 1px solid gray;margin-left:34px">待售</span>&nbsp;&nbsp; <span
        style="border: 1px solid gray">双卫</span>&nbsp;&nbsp; <span style="border: 1px solid gray">
            板楼</span>&nbsp;&nbsp;<span style="border: 1px solid gray">普通住宅</span>&nbsp;&nbsp;
    <span style="border: 1px solid gray">毛坯</span>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div id="dh" style="background: RGB(223,223,223)">
        <table style="width: 1197px; height: 30px">
            <tr>
                <td style="height: 24px; width: 33%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="maohua.aspx"><font color="black">楼盘首页</font></a>
                </td>
                <td style="height: 24px; width: 33%; background-color: red">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="maohua_lp_photo.aspx"><font color="black">楼盘相册</font></a>
                </td>
                <td style="height: 24px; width: 33%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="maohua_lp_detail.aspx"><font color="black">楼盘详情</font></a>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div id="left">
        <tr>
            <a href="">
                <asp:Image runat="server" Width="129px" Height="36px" ImageUrl="~/i1/shijingtu.png"
                    BackColor="Red" /></a></tr>
        <br />
        <tr>
            <asp:Image runat="server" Width="129px" Height="36px" ImageUrl="~/i1/huxingtu.png" /></tr>
        <br />
        <tr>
            <asp:Image runat="server" Width="129px" Height="36px" ImageUrl="~/i1/jiaotongtu.png" /></tr>
        <br />
        <tr>
            <asp:Image runat="server" Width="129px" Height="36px" ImageUrl="~/i1/xiaoguotu.png" /></tr>
        <br />
        <tr>
            <asp:Image runat="server" Width="129px" Height="36px" ImageUrl="~/i1/yangbanjian.png" /></tr>
        <br />
        <tr>
            <asp:Image runat="server" Width="129px" Height="36px" ImageUrl="~/i1/peitaotu.png" /></tr>
        <br />
    </div>
    <span style="margin-left: 20px; font-weight: bold">实景图</span>
    <div id="p">
        <asp:Image runat="server" ID="i1" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p1.jpg" />
        <asp:Image runat="server" ID="i2" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p2.jpg" />
        <asp:Image runat="server" ID="i3" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p3.jpg" />
        <asp:Image runat="server" ID="i4" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p4.jpg" /><br />
        <font size="2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;茂华唐山中心202#外保温安装实景</font> <font
            size="2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;茂华唐山中心202#203#外保温安装实景</font> <font size="2px">
                &nbsp;&nbsp;&nbsp;&nbsp; 茂华唐山中心202#外保温安装实景</font> <font size="2px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;茂华唐山中心202#203#外保温安装实景</font>
        <br />
        <br />
        <br />
        <asp:Image runat="server" ID="i5" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p5.jpg" />
        <asp:Image runat="server" ID="i6" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p6.jpg" />
        <asp:Image runat="server" ID="i7" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p7.jpg" />
        <asp:Image runat="server" ID="i8" Width="243px" Height="160px" ImageUrl="~/i1/maohua_lp_p8.jpg" /><br />
        <font size="2px">&nbsp;&nbsp;&nbsp;&nbsp;茂华唐山中心202#203#外保温安装实景</font> <font size="2px">
            &nbsp;&nbsp;&nbsp;茂华唐山中心202#203#外保温安装实景</font> <font size="2px">&nbsp;&nbsp;&nbsp;&nbsp;茂华唐山中心202#203#外保温安装实景</font>
        <font size="2px">&nbsp;&nbsp;&nbsp;茂华唐山中心202#203#外保温安装实景</font>
    </div>
    <br />
    <span style="margin-left: 250px; font-weight: bold">户型图</span><br />
    <div id="p1">
        <asp:Image runat="server" ID="h1" Width="243px" Height="160px" Style="border-bottom: 1px solid gray"
            ImageUrl="~/i1/maohua_hx_p1.jpg" />
        <asp:Image runat="server" ID="h2" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p2.jpg" />
        <asp:Image runat="server" ID="h3" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p3.jpg" />
        <asp:Image runat="server" ID="h4" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p4.jpg" /><br />
        <span style="font-size: 2px; margin-left: 55px">茂华唐山中心201#B3户型&nbsp;2室2厅</span>
        <span style="font-size: 2px; margin-left: 73px">茂华唐山中心201#A1户型&nbsp;1室1厅</span>
        <span style="font-size: 2px; margin-left: 73px">茂华唐山中心201#B1户型&nbsp;2室1厅</span>
        <span style="font-size: 2px; margin-left: 73px">茂华唐山中心201#B4户型&nbsp;2室2厅</span><br />
        <span style="font-size: 2px; margin-left: 55px">面积：85.00m²</span> 
        <span style="font-size: 2px;margin-left: 169px">面积：59.00m²</span> 
        <span style="font-size: 2px; margin-left: 169px">面积：69.00m²</span> 
        <span style="font-size: 2px; margin-left: 169px">面积：88.00m²</span>
        <br />
        <br />
        <asp:Image runat="server" ID="h5" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p5.jpg" />
        <asp:Image runat="server" ID="h6" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p6.jpg" />
        <asp:Image runat="server" ID="h7" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p7.jpg" />
        <asp:Image runat="server" ID="h8" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p8.jpg" /><br />
        <span style="font-size: 2px; margin-left: 55px">茂华唐山中心201#B5户型&nbsp;2室2厅</span>
        <span style="font-size: 2px; margin-left: 71px">茂华唐山中心201#B6户型&nbsp;2室2厅</span>
        <span style="font-size: 2px; margin-left: 63px">茂华唐山中心202#203#B7户型&nbsp;2室2厅</span>
        <span style="font-size: 2px; margin-left: 48px">茂华唐山中心202#203#B8户型&nbsp;2室2厅</span><br />
        <span style="font-size: 2px; margin-left: 55px">面积：87.00m²</span> 
        <span style="font-size: 2px; margin-left: 167px">面积：89.00m²</span>
        <span style="font-size: 2px; margin-left: 159px">面积：86.00m²</span> 
        <span style="font-size: 2px; margin-left: 168px">面积：86.00m²</span>
        <br />
        <br />
        <asp:Image runat="server" ID="h9" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p9.jpg" />
        <asp:Image runat="server" ID="h10" Width="243px" Height="160px" ImageUrl="~/i1/maohua_hx_p10.jpg" /><br />
        <span style="font-size: 2px; margin-left: 43px">茂华唐山中心202#203#C1户型&nbsp;2室2厅</span>
        <span style="font-size: 2px; margin-left: 48px">茂华唐山中心202#203#C2户型&nbsp;3室2厅</span><br />
        <span style="font-size: 2px; margin-left: 43px">面积：135.00m²</span> <span style="font-size: 2px;
            margin-left: 162px">面积：136.00m²</span>
    </div>
    <br />
    <span style="margin-left: 250px; font-weight: bold">交通图</span><br />
    <div id="p2">
        <asp:Image runat="server" ID="j1" Width="243px" Height="160px" ImageUrl="~/i1/maohua_jt.jpg"/><br />
        <div style="font-size: 2px;margin-top:8px;margin-left: 85px; height: 7px;">茂华唐山中心区位图</div>
    </div>
    <br />
    <span style="margin-left: 250px; font-weight: bold">效果图</span><br />
    <div id="p3">
        <asp:Image runat="server" ID="x1" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p1.jpg" />
        <asp:Image runat="server" ID="x2" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p2.jpg"/>
        <asp:Image runat="server" ID="x3" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p3.jpg" />
        <asp:Image runat="server" ID="x4" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p4.jpg" /><br />
        <span style="font-size: 2px;margin-left: 80px">茂华唐山中心夜间鸟瞰</span> 
        <span style="font-size: 2px;margin-left: 133px">茂华唐山中心外立面</span> 
        <span style="font-size: 2px;margin-left: 140px">茂华唐山中心外立面</span> 
        <span style="font-size: 2px;margin-left: 133px">茂华唐山中心夜间鸟瞰</span>
        <br />
        <br />
        <br />
        <asp:Image runat="server" ID="x5" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p5.jpg" />
        <asp:Image runat="server" ID="x6" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p6.jpg" />
        <asp:Image runat="server" ID="x7" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p7.jpg" />
        <asp:Image runat="server" ID="x8" Width="243px" Height="160px" ImageUrl="~/i1/maohua_xg_p8.jpg" /><br />
        <span style="font-size: 2px;margin-left: 93px">茂华唐山中心沿街</span> 
        <span style="font-size: 2px;margin-left: 144px">茂华唐山中心外立面</span> 
        <span style="font-size: 2px;margin-left: 140px">茂华唐山中心外立面</span>
        <span style="font-size: 2px;margin-left: 146px">茂华唐山中心沿街</span>
    </div> <br />
    <span style="margin-left: 250px; font-weight: bold">样板间</span><br />
    <div id="p4">
        <asp:Image runat="server" ID="y1" Width="243px" Height="160px" ImageUrl="~/i1/maohua_ybj_p1.jpg" />
        <asp:Image runat="server" ID="y2" Width="243px" Height="160px" ImageUrl="~/i1/maohua_ybj_p2.jpg"/>
        <asp:Image runat="server" ID="y3" Width="243px" Height="160px" ImageUrl="~/i1/maohua_ybj_p3.jpg" />
        <asp:Image runat="server" ID="y4" Width="243px" Height="160px" ImageUrl="~/i1/maohua_ybj_p4.jpg" /><br />
        <span style="font-size: 2px;margin-left: 63px">茂华唐山中心soho户型办公室</span> 
        <span style="font-size: 2px;margin-left: 90px">茂华唐山中心soho户型茶水间</span> 
        <span style="font-size: 2px;margin-left: 95px">茂华唐山中心soho户型办公间</span> 
        <span style="font-size: 2px;margin-left: 88px">茂华唐山中心soho户型办公室</span>
        <br />
        <br />
        <br />
        <asp:Image runat="server" ID="y5" Width="243px" Height="160px" ImageUrl="~/i1/maohua_ybj_p5.jpg" />
        <asp:Image runat="server" ID="y6" Width="243px" Height="160px" ImageUrl="~/i1/maohua_ybj_p6.jpg" />
        <asp:Image runat="server" ID="y7" Width="243px" Height="160px" ImageUrl="~/i1/maohua_ybj_p7.jpg" /><br />
        <span style="font-size: 2px;margin-left: 58px">茂华唐山中心203#楼C1户型客厅</span> 
        <span style="font-size: 2px;margin-left: 98px">茂华唐山中心C1户型次卧</span> 
        <span style="font-size: 2px;margin-left: 116px">茂华唐山中心C1户型卧室</span>
    </div><br />
    <span style="margin-left: 250px; font-weight: bold">配套图</span><br />
    <div id="p5">
    <asp:Image runat="server" ID="pt1" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p1.jpg" />
        <asp:Image runat="server" ID="pt2" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p2.jpg"/>
        <asp:Image runat="server" ID="pt3" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p3.jpg" />
        <asp:Image runat="server" ID="pt4" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p4.jpg" /><br />
        <span style="font-size: 2px;margin-left: 38px">茂华唐山中心项目附近唐山第五幼儿园</span> 
        <span style="font-size: 2px;margin-left: 58px">茂华唐山中心项目附近唐山54中学</span> 
        <span style="font-size: 2px;margin-left: 70px">茂华唐山中心项目周边信息大厦</span> 
        <span style="font-size: 2px;margin-left: 83px">茂华唐山中心项目周边凤凰园</span>
        <br />
        <br />
        <br />
        <asp:Image runat="server" ID="pt5" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p5.jpg" />
        <asp:Image runat="server" ID="pt6" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p6.jpg" />
        <asp:Image runat="server" ID="pt7" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p7.jpg" />
        <asp:Image runat="server" ID="pt8" Width="243px" Height="160px" ImageUrl="~/i1/maohua_pt_p8.jpg" /><br />
        <span style="font-size: 2px;margin-left: 58px">茂华唐山中心项目周边农业银行</span> 
        <span style="font-size: 2px;margin-left: 63px">茂华唐山中心项目周边张家口商业银行</span> 
        <span style="font-size: 2px;margin-left: 62px">茂华唐山中心项目周边现代医院</span>
        <span style="font-size: 2px;margin-left: 82px">茂华唐山中心项目周边天津银行</span>
    </div>
    </form>
</BODY>
</HTMl>
