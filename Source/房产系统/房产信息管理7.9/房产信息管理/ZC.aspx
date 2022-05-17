<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZC.aspx.cs" Inherits="房产信息管理.ZC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 145px;
        }
        .style2
        {
            width: 204px;
        }
        .style3
        {
            width: 176px;
        }
        .style4
        {
            width: 247px;
        }
        .style5
        {
            width: 145px;
            height: 39px;
        }
        .style6
        {
            width: 204px;
            height: 39px;
        }
        .style7
        {
            width: 176px;
            height: 39px;
        }
        .style8
        {
            width: 247px;
            height: 39px;
        }
        .style9
        {
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
   <div style="text-align:center;  background-image: url('/image/bj2.jpg');  font-weight:bold;  background-position:center;background-repeat: no-repeat; margin-top: 0px; height: 520px; width: 802px;"><br /><br />
     <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl="~/FM.aspx" 
           Text="<<返回主页" Font-Size="Large"></asp:HyperLink>
      <div style="text-align:center;"></div>
       <br />
    <asp:Label ID="lb1" style="font-weight:bold" runat="server" Text="注册界面" 
            Width="176px" Height="35px" Font-Size="XX-Large"></asp:Label><br />
       <br /><br />
           <table>
           
           <tr>
           <td class="style1"><asp:Label ID="lb2" runat="server" Text="用户名"></asp:Label> </td>
           <td class="style2"> <asp:TextBox ID="tb1" runat="server" Width="149px" ></asp:TextBox></td>
           <td class="style3"><asp:Label ID="lb4" runat="server" Text="邮编"></asp:Label></td>
           <td class="style4"><asp:TextBox ID="tb5" runat="server" Width="153px" ></asp:TextBox></td>
           </tr>

           <tr>
           <td class="style1"> 
               <br />
               <asp:Label ID="lb3" runat="server" Text="密码"></asp:Label></td>
           <td class="style2">
               <br />
               <asp:TextBox ID="tb2" runat="server" Width="153px" ></asp:TextBox></td>
           <td class="style3"> 
               <br />
               <asp:Label ID="lb5" runat="server" Text="邮箱"></asp:Label></td>
           <td class="style4">
               <br />
               <asp:TextBox ID="tb6" runat="server" Width="153px" 
                   style="margin-left: 0px" ></asp:TextBox></td>
           </tr>

           <tr>
           <td class="style5">
               <br />
               <asp:Label ID="lb13" runat="server" Text="确认密码"></asp:Label></td>
           <td class="style6">
               <br />
               <asp:TextBox ID="tb3" runat="server" Width="147px" ></asp:TextBox></td>
           <td class="style7"> 
               <br />
               <asp:Label ID="lb7" runat="server" Text="公司名称"></asp:Label></td>
           <td class="style8"> 
               <br />
               <asp:TextBox ID="tb7" runat="server" Width="153px" ></asp:TextBox></td>
           </tr>

           <tr>
           <td class="style1">
               <br />
               <asp:Label ID="Label1" runat="server" Text="联系人"></asp:Label></td>
           <td class="style2">
               <br />
               <asp:TextBox ID="tb4" runat="server" Width="144px"  ></asp:TextBox>
               <br />
               </td>
           <td class="style3"> 
               <br />
               <asp:Label ID="Label2" runat="server" Text="公司地址"></asp:Label></td>
           <td class="style4">
               <br />
               <asp:TextBox ID="tb8" runat="server" Width="153px" ></asp:TextBox></td>
           </tr>
           <tr>&nbsp;&nbsp;&nbsp;
           <td class="style9" ><asp:Label ID="Label3" runat="server" Text="联系电话"></asp:Label> </td>
           <td class="style9" > 
               <asp:TextBox ID="tb9" runat="server" Width="149px"  ></asp:TextBox></td>
           </tr>
           </table>
   
      <br />
     
       <br />
     
       <asp:Button ID="bt1" style="font-weight:bold" runat="server" Text="确认注册" 
            Height="33px" Width="87px" onclick="bt1_Click" />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bt2" style="font-weight:bold" runat="server" Text="取消" 
            Height="30px" Width="87px" onclick="bt2_Click" /><br /><br />
            <asp:Label runat="server" ID="lab2"></asp:Label>
           
    </div>
    </form>
</body>
</html>
