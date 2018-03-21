<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loc_sort.aspx.cs" Inherits="loc_sort" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">




 <title>Untitled Page</title>
        <style type="text/css">
            #form2
            {
                height: 663px;
            }
            .style1
            {
            }
            .style2
            {
                width: 203px;
            }
            .style3
            {
                height: 89px;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Verdana" 
                Font-Size="Larger" ForeColor="#333333" Text="--Select Location--"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
        <table style="width:100%; margin-left: 217px;">
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="listbox_state" runat="server" 
                            Height="48px" Width="106px" onselectedindexchanged="listbox_city_SelectedIndexChanged" 
                            AutoPostBack="True" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                            <asp:ListItem>Assam</asp:ListItem>
                            <asp:ListItem>Bihar</asp:ListItem>
                            <asp:ListItem>Chhattisgarh</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Gujarat</asp:ListItem>
                            <asp:ListItem>Haryana</asp:ListItem>
                            <asp:ListItem>Himachal Pradesh</asp:ListItem>
                            <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                            <asp:ListItem>Jarkhand</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Madhya Pradesh</asp:ListItem>
                            <asp:ListItem>Maharastra</asp:ListItem>
                            <asp:ListItem>Manipur</asp:ListItem>
                            <asp:ListItem>Meghalaya</asp:ListItem>
                            <asp:ListItem Value="Mizoram">Mizoram</asp:ListItem>
                            <asp:ListItem>Nagaland</asp:ListItem>
                            <asp:ListItem>Orissa</asp:ListItem>
                            <asp:ListItem>Punjab</asp:ListItem>
                            <asp:ListItem>Rajasthan</asp:ListItem>
                            <asp:ListItem>Sikkim</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Telangana</asp:ListItem>
                            <asp:ListItem>Tripura</asp:ListItem>
                            <asp:ListItem>Uttar Pradesh</asp:ListItem>
                            <asp:ListItem>Uttarkhand</asp:ListItem>
                            <asp:ListItem>West Bengal</asp:ListItem>
                        </asp:DropDownList>
                </td>
                <td>
          <span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
    <asp:DropDownList ID="listbox_city" runat="server" Height="48px" Width="106px" 
                        style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" 
                        Enabled="False" 
                        onselectedindexchanged="listbox_city_SelectedIndexChanged"  >
    </asp:DropDownList>
        </span>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);"><asp:Button ID="Button1" runat="server" onclick="Button1_Click"  Text="Submit" 
                        BackColor="#7C4882" BorderColor="#442747" 
            BorderStyle="Ridge" Font-Bold="False" Font-Italic="False" 
            Font-Names="Verdana" Font-Overline="False" Font-Size="Medium" 
            Font-Strikeout="False" ForeColor="White" Height="36px" Width="134px" />
        </span>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      
        </span>
                </td>
            </tr>
            <tr>
                <td class="style1" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
        </span>
             <br />
        <br />
        <br />
    
        <br />
        <br />
        <br />
        <br />
    
        <br />
        <br />
    
    </div>
    <br />
    <br />
    <br />
    <br />
        <br />
            &nbsp;<br />
            &nbsp;
            <br />
&nbsp;
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    

     </form>
  
    
    
</body>
</html>



