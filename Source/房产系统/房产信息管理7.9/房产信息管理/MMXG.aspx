<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MMXG.aspx.cs" Inherits="房产信息管理.MMXG1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="text-align:center;  background-image: url('/image/bj2.jpg');  font-weight:bold;  background-position:center;background-repeat: no-repeat; margin-top: 0px; height: 537px; width: 807px;">
    <br /><br /><br /><br />
        <br />
        <br />
        <br />
        <br />
        <br />
     <asp:Label ID="lb1" style="font-weight:bold" runat="server" Text="密码修改" 
            Width="176px" Height="35px" Font-Size="X-Large"></asp:Label><br /><br /><br />
      <asp:Label ID="lb2" runat="server" Text="原始密码"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb1" runat="server" ></asp:TextBox><br /><br />
      &nbsp;
      <asp:Label ID="lb3" runat="server" Text="新密码"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb2" runat="server" Width="153px" ></asp:TextBox><br /><br />
      <asp:Label ID="lb4" runat="server" Text="确认密码"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb3" runat="server" ></asp:TextBox><br /><br /><br /><br />
        <asp:Button ID="bt1" style="font-weight:bold" runat="server" Text="确认修改" 
            Height="25px" />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bt2" style="font-weight:bold" runat="server" Text="取消" 
            Height="23px" Width="83px" />
    </div>
    </form>
</body>
</html>
