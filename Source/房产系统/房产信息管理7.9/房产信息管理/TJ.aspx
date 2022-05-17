<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TJ.aspx.cs" Inherits="房产信息管理.TJ2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 252px;
        }
        .style2
        {
            width: 138px;
        }
        .style3
        {
            width: 317px;
        }
        .style4
        {
            width: 138px;
            height: 34px;
        }
        .style5
        {
            width: 317px;
            height: 34px;
        }
        .style6
        {
            width: 252px;
            height: 34px;
        }
        .style7
        {
            height: 34px;
        }
        .style8
        {
            width: 138px;
            height: 30px;
        }
        .style9
        {
            width: 317px;
            height: 30px;
        }
        .style10
        {
            width: 252px;
            height: 30px;
        }
        .style11
        {
            height: 30px;
        }
        .style12
        {
            width: 138px;
            height: 27px;
        }
        .style13
        {
            width: 317px;
            height: 27px;
        }
        .style14
        {
            width: 252px;
            height: 27px;
        }
        .style15
        {
            height: 27px;
        }
        .style16
        {
            width: 138px;
            height: 31px;
        }
        .style17
        {
            width: 317px;
            height: 31px;
        }
        .style18
        {
            width: 252px;
            height: 31px;
        }
        .style19
        {
            height: 31px;
        }
        .style20
        {
            width: 138px;
            height: 33px;
        }
        .style21
        {
            width: 317px;
            height: 33px;
        }
        .style22
        {
            width: 252px;
            height: 33px;
        }
        .style23
        {
            height: 33px;
        }
        .style24
        {
            width: 138px;
            height: 32px;
        }
        .style25
        {
            width: 317px;
            height: 32px;
        }
        .style26
        {
            width: 252px;
            height: 32px;
        }
        .style27
        {
            height: 32px;
        }
        .style28
        {
            width: 138px;
            height: 134px;
        }
        .style29
        {
            width: 317px;
            height: 134px;
        }
        .style30
        {
            width: 252px;
            height: 134px;
        }
        .style31
        {
            height: 134px;
        }
        .style32
        {
            width: 138px;
            height: 115px;
        }
        .style33
        {
            width: 317px;
            height: 115px;
        }
        .style34
        {
            width: 252px;
            height: 115px;
        }
        .style35
        {
            height: 115px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image:url('image/bj414.jpg'); height: 898px; text-align:center; width: 1148px;"><br /><br /><br />
        <asp:Label ID="Label1" Text="房 产 信 息 添 加" style="font-weight:bold"  runat="server" 
            Font-Size="XX-Large" ></asp:Label>
        <br /><br /><br /><br />
     <table align="center">
     <tr>
     <td class="style4"><asp:Label ID="lb1" Text="房产名称" style="font-weight:bold" runat="server" ></asp:Label></td>
     <td class="style5"><asp:TextBox ID="tb1B" runat="server" Width="150px"></asp:TextBox></td>
     <td class="style6"><asp:Label ID="lb3" Text="使用期限" style="font-weight:bold" runat="server" ></asp:Label></td>
     <td class="style7"><asp:TextBox ID="tbb1B" runat="server" Width="150px"></asp:TextBox> </td>
     </tr>
     <tr>
     <td class="style8"><asp:Label ID="lb2" Text="房价" style="font-weight:bold" runat="server" ></asp:Label></td>
     <td class="style9"><asp:TextBox ID="tb2B" runat="server" Width="88px"></asp:TextBox><asp:Label ID="lb6" runat="server" style="font-weight:bold" Text="/平方米"></asp:Label></td>
     <td class="style10"><asp:Label ID="lb4" Text="户型" style="font-weight:bold" runat="server" ></asp:Label></td>
     <td class="style11"><asp:DropDownList ID="DropDownList1" runat="server" 
            Height="17px" onselectedindexchanged="DropDownList1_SelectedIndexChanged"  AutoPostBack="true"
            style="margin-left: 0px" Width="150px">
         <asp:ListItem>一居</asp:ListItem>
         <asp:ListItem>两居</asp:ListItem>
         <asp:ListItem>三居</asp:ListItem>
         <asp:ListItem>四居</asp:ListItem>
        </asp:DropDownList></td>
     </tr>
     <tr>
     <td class="style12"><asp:Label ID="lb7" runat="server" style="font-weight:bold" Text="面积"></asp:Label></td>
     <td class="style13"><asp:TextBox ID="tb3B" runat="server"></asp:TextBox></td>
     <td class="style14"><asp:Label ID="lb9" runat="server" style="font-weight:bold" Text="建筑类别"></asp:Label></td>
     <td class="style15"><asp:DropDownList ID="DropDownList2" runat="server" 
             Height="22px" AutoPostBack="true"
            style="margin-left: 0px" Width="141px" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
         <asp:ListItem>住宅</asp:ListItem>
         <asp:ListItem>商铺</asp:ListItem>
         <asp:ListItem>别墅</asp:ListItem>
         <asp:ListItem>写字楼</asp:ListItem>
        </asp:DropDownList></td>
     </tr>
     <tr>
     <td class="style16"><asp:Label ID="lb10" runat="server" style="font-weight:bold" Text="容积率"></asp:Label></td>
     <td class="style17"><asp:TextBox ID="tb5B" runat="server"></asp:TextBox></td>
     <td class="style18"><asp:Label ID="lb11" runat="server" style="font-weight:bold" Text="绿化率"></asp:Label></td>
     <td class="style19"><asp:TextBox ID="tb6B" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
     <td class="style20"><asp:Label ID="lb12" style="font-weight:bold" runat="server" Text="物业费"></asp:Label></td>
     <td class="style21"><asp:TextBox ID="tb7B" runat="server" Width="68px"></asp:TextBox><asp:Label ID="lb13" runat="server" style="font-weight:bold" Text="/平方米•月"></asp:Label></td>
     <td class="style22"><asp:Label ID="lb14" runat="server" style="font-weight:bold" Text="物业公司"></asp:Label></td>
     <td class="style23"><asp:TextBox ID="tb8B" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
     <td class="style8"><asp:Label ID="lb15" style="font-weight:bold" runat="server" Text="开发商"></asp:Label></td>
     <td class="style9"><asp:TextBox ID="tb9B" runat="server"></asp:TextBox></td>
     <td class="style10"><asp:Label ID="lb18" runat="server" style="font-weight:bold" Text="发盘时间"></asp:Label></td>
     <td class="style11"><asp:TextBox ID="tb12B" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
     <td class="style16"><asp:Label ID="lb19" runat="server" style="font-weight:bold" Text="交房时间"></asp:Label></td>
     <td class="style17"><asp:TextBox ID="tb13B" runat="server"></asp:TextBox></td>
     <td class="style18"><asp:Label ID="lb21" runat="server" style="font-weight:bold" Text="建筑面积"></asp:Label></td>
     <td class="style19"><asp:TextBox ID="tb15B" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
     <td class="style24"><asp:Label ID="lb22" runat="server" style="font-weight:bold" Text="占地面积"></asp:Label></td>
     <td class="style25"><asp:TextBox ID="tb16B" runat="server"></asp:TextBox></td>
     <td class="style26"><asp:Label ID="lb24" runat="server" style="font-weight:bold" Text="装修状况"></asp:Label></td>
     <td class="style27"><asp:TextBox ID="tb18B" runat="server"></asp:TextBox></td>
     </tr>
     <tr>
     <td class="style28"><asp:Label ID="lb8" runat="server" style="font-weight:bold" Text="周边设施"></asp:Label></td>
     <td class="style29"><asp:TextBox ID="tb4B" runat="server" Height="101px" Width="253px"></asp:TextBox></td>
     <td class="style30"><asp:Label ID="lb16" runat="server" style="font-weight:bold" Text="售房地址"></asp:Label></td>
     <td class="style31"><asp:TextBox ID="tb10B" runat="server" Height="94px" Width="266px"></asp:TextBox></td>
     <tr>
     <td class="style32"><asp:Label ID="lb25" style="font-weight:bold" runat="server" Text="楼盘地址"></asp:Label></td>
     <td class="style33"><asp:TextBox ID="tb19B" runat="server" Height="90px" 
             Width="263px"></asp:TextBox></td>
     <td class="style34"><asp:Label ID="lb17" runat="server" style="font-weight:bold" Text="车位信息"></asp:Label></td>
     <td class="style35"><asp:TextBox ID="tb11B" runat="server" Height="83px" 
             Width="271px"></asp:TextBox></td>
     </tr>
     <tr>
     <td class="style2"><asp:Label ID="lb20" runat="server" style="font-weight:bold" Text="楼层状况"></asp:Label></td>
     <td class="style3"><asp:TextBox ID="tb14B" runat="server" Height="113px" Width="274px"></asp:TextBox></td>
     <td class="style1"><asp:Label ID="lb23" style="font-weight:bold" runat="server" Text="交通状况描述"></asp:Label></td>
     <td><asp:TextBox ID="tb17B" runat="server" Height="103px" Width="259px"></asp:TextBox></td>
     </tr>
     </tr>
     </table><br /><br />
     <asp:Button ID="bt1" style="font-weight:bold" runat="server" Text="确认添加" 
            Height="41px" Width="90px" Font-Size="Large" onclick="bt1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="bt2" style="font-weight:bold" runat="server" Text="取消" 
            Height="37px" Width="80px" Font-Size="Large" onclick="bt2_Click" />
        <br />
        &nbsp;
            <asp:Label ID="lab22" style="font-weight:bold" Font-Size="X-Large" 
            runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
