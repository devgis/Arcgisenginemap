<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xinwen.aspx.cs" Inherits="房产信息管理.xinwen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
    <div>
     <table style="width: 100%; height: 100%">
        <tr><td colspan="2"></td></tr>
        <tr>
            <td style="width: 16%">
                <a href="xinwen.aspx" target="Show">点击1</a>
                <a href="fangchan.aspx" target="Show">点击2</a>
            </td>
            <td style="width: 84%">
             <iframe  id="Show" style="width: 100%;height:100%" ></iframe>
            </td>
        </tr>
    </table>
   </div>
    
    </form>
</body>
</html>
