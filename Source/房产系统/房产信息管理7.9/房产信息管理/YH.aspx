<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YH.aspx.cs" Inherits="房产信息管理.XINWEN1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        { width: 16%;  height: 398px; }
        .style2
        { width: 72%;  
height: 398px; }
        .style3
        {
            height: 80px;
        }
        #txtTopicContent
        {
            width: 482px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="background-image:url('image/k3.jpg'); background-repeat:no-repeat; text-align:center; height: 724px;">
     <table style="width: 96%; height: 99%">
        <tr><td colspan="2" class="style3">
        <asp:Label 
            style="background-color: Transparent;background-image: url('/image/k631.png');  font-weight:bold;  background-position:bottom; background-repeat: no-repeat; margin-top: 0px;"      
              ID="lb1" runat="server" 
            Font-Size="XX-Large"  Width="671px" 
            Height="124px" ></asp:Label><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink runat="server" ID="HyperLink3" NavigateUrl="~/FM.aspx" 
           Text="退出" Font-Size="X-Large" ForeColor="#FFFFCC"></asp:HyperLink>
        </td></tr>
        <tr>
            <td class="style1">
                
        <asp:Button ID="bt1" 
                         
                        style="font-weight:bold; background-image:url('image/k2r.png'); background-repeat:no-repeat; margin-top: 3px; background-color:transparent; border-color:transparent;" 
                        runat="server" Text="房产信息"    Font-Size="X-Large" 
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
                        runat="server" Text="发布消息"    
                        Font-Size="X-Large" Height="111px" Width="313px" onclick="bt3_Click" />
                        
            </td>
            <td class="style2">
           
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex=0>
                    <asp:View ID="View1" runat="server">
                    <div  style="background-image:url('image/bj2.jpg'); background-repeat:no-repeat; height: 575px; background-position:center; width: 822px; margin-right: 0px; margin-top: 6px; text-align:center;" ><br /><br /><br /><br />
        &nbsp;
    <asp:Label style="font-weight:bold; text-align:center;"  ID="Label1" runat="server" Text="公司信息管理"  
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

    <asp:Repeater runat="server" ID="RepeaterShow" onitemcommand="RepeaterShow_ItemCommand" 
                            DataSourceID="SqlDataSource1">
    <ItemTemplate>
    <table style="text-align:center">
    <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<%# Container.ItemIndex + 1%></td>
    <td style=" width: 240px; height: 39px;">&nbsp;&nbsp;&nbsp;&nbsp;<a href='XXNR.aspx?HouseInfoid=<%#Eval("HouseInfoID") %>'>标题：<%#Eval("Title")%></a></td>
    <td style=" width: 240px; height: 39px;">&nbsp;&nbsp;&nbsp;&nbsp;时间：<%#Eval("ReleaseTime","{0:d}") %></td>
   
       <td style=" width: 260px; height: 39px;">&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="butt21" Text="删除" CommandArgument='<%#Eval("HouseInfoID")%>'  runat="server" onclick="butt21_Click" />
       
       
     </td>
    </tr>
    </table>
    </ItemTemplate> </asp:Repeater>
    

     <%-- 为LinkButton添加隐藏域--%>
 <input type="hidden" id ="hiddenHouseInfoID" clientidmode="Static"  runat="server"/>
    

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:EstateConnectionString %>" 
                            
                            SelectCommand="SELECT [HouseInfoID], [Title], [Contents], [State], [Editor], [ReleaseTime], [UID] FROM [Housinglnfo]">
                        </asp:SqlDataSource>
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
     <asp:Label ID="Label2" style="font-weight:bold" runat="server" Text="密码修改" 
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
                     <div style="text-align:center;  background-image: url('/image/bj2.jpg');  font-weight:bold;  background-position:center;background-repeat: no-repeat; margin-top: 0px; height: 537px; width: 807px;">
    <br /><br /><br /><br />
    <asp:Label style="font-weight:bold; text-align:center;"  ID="Label3" runat="server" Text="消息发布"  
            Font-Size="XX-Large"></asp:Label><br /><br /><br />
      <asp:Label ID="Label4" runat="server" Text="消息标题:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
      
        <br />
        <br />
        <br />
      
      <div>
      <asp:Label ID="Label5" runat="server"  Text="消息内容:" Font-Size="Large"></asp:Label>&nbsp;&nbsp;&nbsp;
      <textarea 
            runat="server" clientidmode="Static" id="txtTopicContent" class="content1" rows="10" 
        onclick="return txtTopicContent_onclick()" 
            name="S1"></textarea>
      <br /><br /><br /><br />
      &nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold=True  Text="发布" Height="31px" 
              Width="63px" Font-Size="Medium" onclick="Button3_Click" />&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button4" runat="server" Font-Bold=True Text="取消" Font-Size="Medium" 
              Height="28px" Width="59px" /><br /><br />
              <asp:Label ID="lab6" runat="server"  Text="" Font-Size="Large"></asp:Label>
    </div>
    </div>
                    </asp:View>
                </asp:MultiView>
           
            </td>
        </tr>
    </table>
   </div>

    </div>
    </form>
</body>
</html>
