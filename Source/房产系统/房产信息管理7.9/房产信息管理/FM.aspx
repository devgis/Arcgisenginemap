<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FM.aspx.cs" Inherits="房产信息管理.di1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image:url('image/bj20.gif'); background-repeat:no-repeat; height: 782px; background-position:center">
    <div style="text-align:center; height: 659px;">
    <div style="background-image:url('image/bj211.png'); background-repeat:no-repeat; background-position:center; height: 354px; text-align:center; width: 1266px;" >
     <br />
    &nbsp;<asp:Label 
            style="background-color: Transparent;background-image: url('/image/k6111.png');  font-weight:bold;  background-position:bottom; background-repeat: no-repeat; margin-top: 0px;"      
              ID="lb1" runat="server" 
            Font-Size="XX-Large"  Width="544px" 
            Height="141px" ></asp:Label>
             &nbsp;&nbsp;<br />
             
       
    </div>
     
    
       
       
     
     <div style="background-image:url('image/an5.png'); background-repeat:no-repeat; height: 330px; background-position:center; margin-top: 0px;" >
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lb2" runat="server" style=" font-weight:bold" Text="Hi,你好!要看房吗？"></asp:Label>
     
     <asp:Button style="background-color: Transparent;background-image: url(/image/an7.png);  font-weight:bold;  background-position:right center;background-repeat: no-repeat"   
             ID="bt2" runat="server" Height="68px" Text="购房者点击进入"  Width="203px" 
            Font-Size="Large" onclick="bt2_Click" />
    </div>
        
    <asp:Button style="background-color: Transparent;background-image: url(/image/an9.jpg); font-weight:bold;   background-position:center;background-repeat: no-repeat"  
            ID="bt1" runat="server" Height="57px" Text="管理员登陆"  Width="188px"  
            Font-Size="Large" onclick="bt1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:Button style="background-color: Transparent;background-image: url(/image/an7.png); font-weight:bold;   background-position:center;background-repeat: no-repeat"  
            ID="bt4" runat="server" Height="57px" Text="特殊用户登陆"  Width="188px"  
            Font-Size="Large" onclick="bt4_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button style="background-color: Transparent;background-image: url(/image/an8.jpg); font-weight:bold;  background-position: center;background-repeat: no-repeat"   
           ID="bt3" runat="server" Height="57px" Text="注册"  Width="210px" 
            Font-Size="Large" onclick="bt3_Click" />

           
    </div>
   </div>
    </form>
</body>
</html>
