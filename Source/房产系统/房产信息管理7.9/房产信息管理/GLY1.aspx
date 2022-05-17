<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GLY1.aspx.cs" Inherits="房产信息管理.GLY1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style6
        {
            width: 70px;
            border:1px solid red;
        }
        .style7
        {
            width: 37px;
        }
        .style8
        {
            width: 40px;
        }
        .style9
        {
            width: 43px;
        }
        .style10
        {
            width: 46px;
        }
        .style11
        {
            width: 48px;
        }
        .style12
        {
            width: 50px;
        }
        .style13
        {
            width: 53px;
        }
        .style14
        {
            width: 55px;
        }
        .style15
        {
            width: 58px;
        }
        .style16
        {
            width: 63px;
        }
        .style17
        {
            width: 64px;
        }
        .style18
        {
            width: 66px;
        }
        .style19
        {
            width: 71px;
        }
        .style20
        {
            width: 76px;
        }
        .style21
        {
            width: 83px;
        }
        .style22
        {
            width: 87px;
        }
        .style23
        {
            width: 91px;
        }
        .style24
        {
            width: 97px;
        }
        .style25
        {
            width: 110px;
        }
        .style26
        {
            width: 122px;
        }
        .style27
        {
            width: 123px;
        }
        .style28
        {
            width: 121px;
        }
        .style29
        {
            width: 120px;
        }
        .style30
        {
            width: 119px;
        }
        .style31
        {
            width: 118px;
        }
        .style32
        {
            width: 117px;
        }
        .style33
        {
            width: 116px;
        }
        .style34
        {
            width: 67px;
        }
        .style35
        {
            width: 70px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image:url('image/bj333.jpg'); background-repeat:no-repeat; text-align:center; height: 1030px;">
    <asp:Label 
            style="background-color: Transparent;background-image: url('/image/k621.png');  font-weight:bold;  background-position:bottom; background-repeat: no-repeat; margin-top: 0px;"      
              ID="lb1" runat="server" 
            Font-Size="XX-Large"  Width="710px" 
            Height="151px" ></asp:Label><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl="~/FM.aspx" 
           Text="退出" Font-Size="Large"></asp:HyperLink>
                <table style="text-align:center; height: 563px; margin-left: 32px; margin-top: 43px; margin-bottom: 0px; width: 1023px;" >
                <tr>
                <td class="style6"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="bt1" 
                         
                        style="font-weight:bold; background-image:url('image/k2r.png'); background-repeat:no-repeat; margin-top: 3px; background-color:transparent; border-color:transparent;" 
                        runat="server" Text="用户管理"    Font-Size="X-Large" 
                        Height="112px" Width="318px" onclick="bt1_Click" />
                    <br />
                    <br />
                    <br />
                <asp:Button ID="bt2" 
                        style="font-weight:bold; background-image:url('image/k2y.png'); background-repeat:no-repeat; margin-left: 1px; background-color:transparent; border-color:transparent;" 
                        runat="server" Text="密码修改"   
                        Font-Size="X-Large" Height="89px" Width="303px" onclick="bt2_Click" />
                    <br />
                    <br />
                    <br />
                <asp:Button ID="bt3" 
                        style="font-weight:bold;  background-image:url('image/k2j.png'); background-repeat:no-repeat; background-color:transparent; border-color:transparent;"  
                        runat="server" Text="房产信息管理"    
                        Font-Size="X-Large" Height="111px" Width="313px" onclick="bt3_Click" /><br /><br />

                        
                </td>
                <td width="400px" >
                
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                         <div  style="background-image:url('image/bj2.jpg'); background-repeat:no-repeat; height: 528px; background-position:center; width: 811px; margin-right: 0px; margin-top: 6px; text-align:center;" ><br /><br /><br /><br />
        &nbsp;
    <asp:Label style="font-weight:bold; text-align:center;"  ID="Label2" runat="server" Text="用户管理"  
            Font-Size="XX-Large"></asp:Label><br /><br />
         <asp:Repeater runat="server" ID="RepeaterShow1" onitemcommand="RepeaterShow_ItemCommand" 
                                 DataSourceID="SqlDataSource1">
    <ItemTemplate>
    <table style="text-align:center">
    <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<%# Container.ItemIndex + 1%></td>
    <td style=" width: 240px; height: 39px;">&nbsp;&nbsp;&nbsp;&nbsp;<a href='XXNR1.aspx?HouseInfoid=<%#Eval("HouseInfoID") %>'>标题：<%#Eval("Title")%></a></td>
    <td style=" width: 240px; height: 39px;">&nbsp;&nbsp;&nbsp;&nbsp;时间：<%#Eval("ReleaseTime","{0:d}") %></td>
   
       <td style=" width: 260px; height: 39px;">&nbsp;&nbsp;
      
      &nbsp;&nbsp;
    <asp:Button ID="butt21" Text="删除" runat="server" CommandArgument='<%#Eval("HouseInfoID")%>' onclick="butt21_Click" />

       
     </td>
    </tr>
    </table>
    </ItemTemplate> </asp:Repeater>  
    
       
    
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:EstateConnectionString2 %>" 
                                 SelectCommand="SELECT [HouseInfoID], [Title], [Contents], [State], [Editor], [UID], [ReleaseTime] FROM [Housinglnfo]">
                             </asp:SqlDataSource>
            <%-- 为LinkButton添加隐藏域--%>
 <input type="hidden" id ="hiddenHouseInfoID" clientidmode="Static"  runat="server"/>
            
  
    
    </div>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                        <div style="text-align:center;  background-image: url('/image/bj2.jpg');  font-weight:bold;  background-position:center;background-repeat: no-repeat; margin-top: 0px; height: 537px; width: 807px;">
    <br /><br /><br /><br />
        <br />
        <br />
        <br />
        <br />
        <br />
     <asp:Label ID="Label1" style="font-weight:bold" runat="server" Text="密码修改" 
            Width="176px" Height="35px" Font-Size="X-Large"></asp:Label><br /><br /><br />
      <asp:Label ID="lb2" runat="server" Text="原始密码"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb1" runat="server" ></asp:TextBox><br /><br />
      &nbsp;
      <asp:Label ID="lb3" runat="server" Text="新密码"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb2" runat="server" Width="153px" ></asp:TextBox><br /><br />
      <asp:Label ID="lb4" runat="server" Text="确认密码"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="tb3" runat="server" ></asp:TextBox><br /><br /><br /><br />
        <asp:Button ID="Button1" style="font-weight:bold" runat="server" Text="确认修改" 
            Height="25px" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" style="font-weight:bold" runat="server" Text="取消" 
            Height="23px" Width="83px" onclick="Button2_Click" /><br /><br />
            <asp:Label ID="lab1" runat="server" Text=""></asp:Label>
            
    </div>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                        <div style="background-image:url('image/bj414.jpg'); height: 898px; text-align:center; width: 1148px;"><br /><br /><br />
        <asp:Label ID="Label3" Text="房 产 信 息 添 加" style="font-weight:bold"  runat="server" 
            Font-Size="XX-Large" ></asp:Label>
        <br /><br /><br /><br />
     <table align="center">
     <tr>
     <td class="style4"><asp:Label ID="Label4" Text="房产名称" style="font-weight:bold" runat="server" ></asp:Label></td>
     <td class="style5"><asp:TextBox ID="tb1B" runat="server" Width="150px"></asp:TextBox></td>
     <td class="style6"><asp:Label ID="Label5" Text="使用期限" style="font-weight:bold" runat="server" ></asp:Label></td>
     <td class="style7"><asp:TextBox ID="tbb1B" runat="server" Width="150px"></asp:TextBox> </td>
     </tr>
     <tr>
     <td class="style8"><asp:Label ID="Label6" Text="房价" style="font-weight:bold" runat="server" ></asp:Label></td>
     <td class="style9"><asp:TextBox ID="tb2B" runat="server" Width="88px"></asp:TextBox><asp:Label ID="lb6" runat="server" style="font-weight:bold" Text="/平方米"></asp:Label></td>
     <td class="style10"><asp:Label ID="Label7" Text="户型" style="font-weight:bold" runat="server" ></asp:Label></td>
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
     <asp:Button ID="Button3" style="font-weight:bold" runat="server" Text="确认添加" 
            Height="41px" Width="90px" Font-Size="Large" onclick="Button3_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button4" style="font-weight:bold" runat="server" Text="取消" 
            Height="37px" Width="80px" Font-Size="Large" onclick="Button4_Click" />
        <br />
        &nbsp;
            <asp:Label ID="lab22" style="font-weight:bold" Font-Size="X-Large" 
            runat="server" ></asp:Label>
    </div>
                        </asp:View>
                    </asp:MultiView>
                
                </td>
                </tr>
                </table>
    </div>
    </form>
</body>
</html>
