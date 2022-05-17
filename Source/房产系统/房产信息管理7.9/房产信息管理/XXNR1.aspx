<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XXNR1.aspx.cs" Inherits="房产信息管理.XXNR1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #txtTopicContent
        {
            height: 131px;
            width: 351px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;  background-image: url('/image/bj2.jpg');  font-weight:bold;  background-position:center;background-repeat: no-repeat; margin-top: 0px; height: 537px; width: 807px;">
    <br /><br /><br /><br />
    <asp:Label style="font-weight:bold; text-align:center;"  ID="Label3" runat="server" Text="消息编辑"  
            Font-Size="XX-Large"></asp:Label><br /><br /><br />
      <asp:Label ID="Label4" runat="server" Text="消息标题:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
      
        <br />
      
        <br />
        <br />
        <br />
      
      <div>
      <asp:Label ID="Label5" runat="server"  Text="消息内容:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;
      <textarea 
            runat="server" clientidmode="Static" id="txtTopicContent" class="content1" 
        onclick="return txtTopicContent_onclick()" 
            name="S1"></textarea>
      <br />
          <br />
          <br /><br />
      &nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold=True  Text="编辑" Height="31px" 
              Width="63px" Font-Size="Medium" onclick="Button3_Click" />&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button4" runat="server" Font-Bold=True Text="取消" Font-Size="Medium" 
              Height="28px" Width="59px" onclick="Button4_Click" />&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button1" runat="server" Font-Bold=True Text="返回" Font-Size="Medium" 
              Height="28px" Width="59px" onclick="Button1_Click" /><br /><br />
              <asp:Label ID="lab6" runat="server"  Text="" Font-Size="Large"></asp:Label>
               <%-- 为LinkButton添加隐藏域--%>
 <input type="hidden" id ="hiddenHouseInfoID1" clientidmode="Static"  runat="server"/>
    </div>
    </div>
    </form>
</body>
</html>
