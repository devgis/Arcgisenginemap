<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shouye.aspx.cs" Inherits="房产信息管理.shouye" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image:url('image/11.jpg'); background-repeat:no-repeat; height: 199px;">
        <div style="text-align:center"><br />
         <asp:Label ID="lb1" runat="server" Text="房产信息查询" Font-Size="XX-Large" ></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lb2" runat="server" Text="Hi!你好"></asp:Label><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="bt1" runat="server" Text="登陆" />&nbsp;&nbsp;
         <asp:Button ID="bt2" runat="server" Text="注册" />  
        </div>
    </div>
   
    <div style="width: 866px; height: 380px;"><br />&nbsp;
   
      <asp:TextBox ID="tb1" runat="server"></asp:TextBox>&nbsp;
      <asp:Button style=" font-weight:bold" ID="bt3" runat="server" Text="搜一下" /><br /><br />&nbsp;
      <asp:Label ID="lb3" Text="区域：" runat="server"></asp:Label>&nbsp;
      <asp:Button ID="bt4" Text="路北" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt5" Text="路南" runat="server" BackColor="#FFFFE1"  ForeColor="Black" /><br /><br />&nbsp;
    
      <asp:Label ID="lb4" Text="类型：" runat="server"></asp:Label>&nbsp;
      <asp:Button ID="bt6" Text="住宅" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt7" Text="别墅" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt8" Text="写字楼" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt9" Text="商铺" runat="server" BackColor="#FFFFE1"  ForeColor="Black" /><br /><br />&nbsp;
      
      <asp:Label ID="lb5" Text="户型：" runat="server"></asp:Label>&nbsp;
      <asp:Button ID="bt10" Text="一室" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt11" Text="二室" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;&nbsp;
      <asp:Button ID="bt12" Text="三室" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt13" Text="三室以上" runat="server" BackColor="#FFFFE1"  ForeColor="Black" /><br /><br />&nbsp;

      <asp:Label ID="lb6" Text="价格/平方米：" runat="server"></asp:Label>&nbsp;
      <asp:Button ID="bt14" Text="6000以下" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt15" Text="6000-8000" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="bt16" Text="8000-10000" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;
      <asp:Button ID="bt17" Text="10000以上" runat="server" BackColor="#FFFFE1"  ForeColor="Black" />&nbsp;

      
    </div>
   
    </form>
</body>
</html>
