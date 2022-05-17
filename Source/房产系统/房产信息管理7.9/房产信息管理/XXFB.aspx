<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XXFB.aspx.cs" Inherits="房产信息管理.XXFB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="text-align:center;  background-image: url('/image/bj2.jpg');  font-weight:bold;  background-position:center;background-repeat: no-repeat; margin-top: 0px; height: 537px; width: 807px;">
    <br /><br /><br /><br />
    <asp:Label style="font-weight:bold; text-align:center;"  ID="lb1" runat="server" Text="消息发布"  
            Font-Size="XX-Large"></asp:Label><br /><br /><br />
      <asp:Label ID="lb2" runat="server" Text="消息标题:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb1" runat="server" ></asp:TextBox>
      
        <br />
        <br />
        <br />
      
      <div>
      <asp:Label ID="Label1" runat="server"  Text="消息内容:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox1" runat="server" Height="199px" Width="497px" ></asp:TextBox><br /><br /><br /><br />
      &nbsp;
        <asp:Button ID="bt1" runat="server" Font-Bold=True  Text="发布" Height="31px" 
              Width="63px" Font-Size="Medium" />&nbsp;&nbsp;&nbsp;
         <asp:Button ID="bt2" runat="server" Font-Bold=True Text="取消" Font-Size="Medium" 
              Height="28px" Width="59px" />
    </div>
    </div>
    </form>
</body>
</html>
