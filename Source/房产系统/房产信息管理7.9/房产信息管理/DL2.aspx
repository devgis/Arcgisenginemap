<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DL2.aspx.cs" Inherits="房产信息管理.DL2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;  background-image: url('/image/bj2.jpg');  font-weight:bold;  background-position:center;background-repeat: no-repeat; margin-top: 0px; height: 454px; width: 720px;"><br /><br /><br /><br />
    <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl="~/FM.aspx" 
           Text="<<返回主页" Font-Size="Large"></asp:HyperLink>
        <br />
        <br />
        <br /><br />
    <asp:Label ID="lb1" style="font-weight:bold" runat="server" Text="特殊用户登陆界面" 
            Width="212px" Height="35px" Font-Size="X-Large"></asp:Label><br /><br /><br />
        <br />
      <asp:Label ID="lb2" runat="server" Text="用户名"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb1" runat="server" ></asp:TextBox><br /><br /><br />
      &nbsp;
      <asp:Label ID="lb3" runat="server" Text="密码"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb2" runat="server" Width="153px" ></asp:TextBox><br /><br /><br /><br />
       <asp:Button ID="bt1" style="font-weight:bold" runat="server" Text="确认登陆" 
            Height="25px" onclick="bt1_Click" />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bt2" style="font-weight:bold" runat="server" Text="取消" 
            Height="23px" Width="83px" onclick="bt2_Click" /><br />
            <br />
            <asp:Label runat="server" ID="lab1"></asp:Label>
    </div>
    </form>
</body>
</html>
