<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yonghuguanli.aspx.cs" Inherits="房产信息管理.yonghuguanli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div  style="background-image:url('image/bj2.jpg'); background-repeat:no-repeat; height: 575px; background-position:center; width: 822px; margin-right: 0px; margin-top: 6px; text-align:center;" ><br /><br /><br /><br />
        &nbsp;
    <asp:Label style="font-weight:bold; text-align:center;"  ID="lb1" runat="server" Text="用户管理"  
            Font-Size="XX-Large"></asp:Label><br /><br />

   <%-- <table style="text-align:center" >
    <tr>
    <td class="style1">用户编号</td>
    <td class="style9">用户名</td>&nbsp;&nbsp;&nbsp;&nbsp;
    <td class="style6">密码</td>&nbsp;&nbsp;&nbsp;
    <td class="style10">公司名称</td>
    <td class="style7">管理</td>
    </tr>
    </table>--%>

    <asp:Repeater runat="server" ID="RepeaterShow">
    <ItemTemplate>
    <table style="text-align:center">
    <tr>
      <td>&nbsp;&nbsp; <a href='ZY_NR.aspx?zy_id=<%#Eval("ZY_ID") %>'>用户编号：</td><%#Eval("ZY_BT") %></a></td>
      <td>&nbsp;&nbsp;用户名：<%#Eval("ZY_FBSJ","{0:d}") %></td>
      
     <td> &nbsp;&nbsp;公司名称： <%#Eval("ZY_FS","{0:d}") %></td>
     <td>&nbsp;&nbsp;
       <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl="~/zhujiemian.aspx" Text="编辑"></asp:HyperLink>&nbsp;&nbsp;
       <asp:HyperLink runat="server" ID="HyperLink1" NavigateUrl="~/zhujiemian.aspx" Text="删除"></asp:HyperLink>
     </td>
    </tr>
    </table>
    </ItemTemplate> </asp:Repeater>
    </div>
    </form>
</body>
</html>
