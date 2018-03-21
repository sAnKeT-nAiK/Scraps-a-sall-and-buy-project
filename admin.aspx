<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>Untitled Page</title>
        <style type="text/css">
            .style4
            {
                height: 77px;
            }
            .style5
            {
                height: 65px;
            }
            .style6
            {
                height: 64px;
            }
            .style7
            {
                height: 69px;
            }
            #form2
            {
                height: 663px;
            }
        </style>
    </head>
<body background="assets/images/nbvg.jpg" style="background-attachment: fixed;" 
    bgcolor="#9c9a9f">
    <form id="form2" runat="server">
    
        <div style="background-color: #F4F7FC; height: 650px; width: 829px; margin-left: 220px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="130px" 
                        ImageUrl="~/assets/logo_new1.png" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana" 
                Font-Size="Larger" ForeColor="#333333" Text="--ADMIN--"></asp:Label>
            <br />
            <br />
            <br />
            &nbsp;
            <br />
&nbsp;
            <br />
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    

    <div style="height: 360px; width: 484px; font-family: verdana; font-size: medium; font-weight: bold; color: #FFFFFF; position: relative; top: -473px; left: 403px; background-color: #C0C0C0; margin-top: 15px;">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table style="width:108%; height: 321px;">
            <tr>
                <td class="style5">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Edit Posts" BackColor="#7C4882" BorderColor="#442747" 
            BorderStyle="Ridge" Font-Bold="False" Font-Italic="False" 
            Font-Names="Segoe UI" Font-Overline="False" Font-Size="Larger" 
            Font-Strikeout="False" ForeColor="White" Height="44px" Width="252px" />
                </td>
            </tr>
            <tr>
                <td class="style4">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Edit Feedback" BackColor="#7C4882" BorderColor="#442747" 
            BorderStyle="Ridge" Font-Bold="False" Font-Italic="False" 
            Font-Names="Segoe UI" Font-Overline="False" Font-Size="Larger" 
            Font-Strikeout="False" ForeColor="White" Height="44px" Width="251px"  />
                </td>
            </tr>
            <tr>
                <td class="style6">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Edit Signup"  BackColor="#7C4882" BorderColor="#442747" 
            BorderStyle="Ridge" Font-Bold="False" Font-Italic="False" 
            Font-Names="Segoe UI" Font-Overline="False" Font-Size="Larger" 
            Font-Strikeout="False" ForeColor="White" Height="44px" Width="252px" /></td>
            </tr>
            <tr>
                <td class="style7">
                         
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                       <asp:Button ID="Button4" runat="server"  Text="Logout" 
            BackColor="#7C4882" BorderColor="#442747"  
            BorderStyle="Ridge" Font-Bold="False" Font-Italic="False" 
            Font-Names="Segoe UI" Font-Overline="False" Font-Size="Larger" 
            Font-Strikeout="False" ForeColor="White" Height="44px" Width="253px" 
                           onclick="Button4_Click"  />
            </td>
            </tr>
            </table>
        <br />
  
 
       </div>
      
    </form>
    
    
</body>
</html>




 
