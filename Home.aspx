<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 1625px;
        }
        .style3
        {
            width: 168px;
        }
        .style5
        {
            width: 160px;
        }
        .style8
        {
            width: 172px;
        }
        .style9
        {
            width: 134px;
        }
        .style10
        {
            width: 169px;
        }
        .style11
        {
            width: 166px;
        }
        .style12
        {
            width: 162px;
        }
        .style13
        {
            width: 101px;
        }
        .style14
        {
            width: 45px;
        }
        .style15
        {
            width: 11px;
        }
        .style16
        {
            width: 111px;
        }
        .style17
        {
            width: 225px;
        }
        .style18
        {
            width: 21px;
        }
        .style19
        {
            width: 111px;
            height: 30px;
        }
        .style20
        {
            width: 21px;
            height: 30px;
        }
        .style21
        {
            width: 225px;
            height: 30px;
        }
        .style23
        {
            width: 111px;
            height: 7px;
        }
        .style24
        {
            width: 21px;
            height: 7px;
        }
        .style25
        {
            width: 225px;
            height: 7px;
        }
        .style26
        {
            height: 7px;
        }
        .style27
        {
            width: 111px;
            height: 2px;
        }
        .style28
        {
            width: 21px;
            height: 2px;
        }
        .style29
        {
            width: 225px;
            height: 2px;
        }
        .style30
        {}
        .style35
        {
            width: 111px;
            height: 19px;
        }
        .style36
        {
            width: 21px;
            height: 19px;
        }
        .style37
        {
            width: 225px;
            height: 19px;
        }
        .style38
        {
            height: 19px;
        }
    </style>
</head>
<body background="assets/images/nbvg.jpg" style="background-attachment: fixed;" 
    bgcolor="#9c9a9f">
    <form id="form1" runat="server">
    <div style="background-image: url('assets/titlback.jpg'); height: 228px; width: 1125px; font-family: verdana; font-size: medium; font-weight: bold; color: #FFFFFF; position: relative; top: 0px; left: 97px;">
    
        <table style="width: 98%; height: 124px;">
            <tr>
                <td class="style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="130px" 
                        ImageUrl="~/assets/logo_new1.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style15">
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:ImageButton ID="login_btn" runat="server" Height="38px" 
                        ImageUrl="~/assets/login_btn.png" onclick="ImageButton1_Click" 
                        Visible="False" 
                             OnMouseOver="src='assets/login_btn_click.png';"
                         OnMouseOut="src='assets/login_btn.png';"  />
                         
                    &nbsp;&nbsp;<br />
                    <asp:ImageButton ID="sign_up_btn" runat="server" Height="38px" 
                        ImageUrl="~/assets/signup_btn.png" onclick="ImageButton2_Click" 
                        Visible="False" 
                        OnMouseOver="src='assets/signup_btn_click.png';"
                         OnMouseOut="src='assets/signup_btn.png';" />
                    <br />
                    <asp:ImageButton ID="logout_btn" 
                        runat="server" ImageUrl="~/assets/logout_btn.png" Height="38px" 
                        onclick="logout_btn_Click" Visible="False" 
                            OnMouseOver="src='assets/logout_btn_click.png';"
                         OnMouseOut="src='assets/logout_btn.png';"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                </td>
            </tr>
        </table>
        <hr />
        <table style="width: 96%; margin-left: 22px;">
            <tr>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="38px" 
                        ImageUrl="~/assets/home_btn.png"
                         OnMouseOver="src='assets/home_btn_click.png';"
                         OnMouseOut="src='assets/home_btn.png';" onclick="ImageButton4_Click" />
                </td>
                
                <td class="style5">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="38px" 
                        ImageUrl="~/assets/postads_btn.png" onclick="ImageButton6_Click"
                         OnMouseOver="src='assets/postads_btn_click.png';"
                         OnMouseOut="src='assets/postads_btn.png';" />
                </td>
                <td class="style12">
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="38px" 
                        ImageUrl="~/assets/myposts_btn.png" onclick="ImageButton7_Click"
                        OnMouseOver="src='assets/myposts_btn_click.png';"
                         OnMouseOut="src='assets/myposts_btn.png';" />
                </td>
                <td class="style11">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="38px" 
                        ImageUrl="~/assets/feedback_btn.png" onclick="ImageButton8_Click"
                           OnMouseOver="src='assets/feedback_btn_click.png';"
                         OnMouseOut="src='assets/feedback_btn.png';" />
                </td>
                <td class="style8">
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="38px" 
                        ImageUrl="~/assets/about_btn.png" onclick="ImageButton9_Click" 
                        OnMouseOver="src='assets/about_btn_click.png';"
                         OnMouseOut="src='assets/about_btn.png';"/>
                </td>
                <td>
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style13">

                    <asp:ImageButton ID="ImageButton3" runat="server" Height="38px" 
                        ImageUrl="~/assets/location_btn.png"
                          OnMouseOver="src='assets/location_btn_click.png';"
                         OnMouseOut="src='assets/location_btn.png';" 
                        onclick="ImageButton3_Click" />
                    </td>
            </tr>
        </table>
        <hr />
        <br />
        
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            Width="1125px" CellPadding="4" Font-Bold="False" Font-Italic="False" 
            Font-Names="Kartika" Font-Overline="False" Font-Size="Medium" 
            Font-Strikeout="False" Font-Underline="False" ForeColor="#333333" 
            style="margin-top: 2px; margin-left: 0px; margin-right: 18px;" 
            onselectedindexchanged="DataList1_SelectedIndexChanged" 
            ondeletecommand="DataList1_DeleteCommand" 
            onitemcommand="DataList1_ItemCommand1">
            <FooterStyle BackColor="White" Font-Bold="False" ForeColor="White" />
            <AlternatingItemStyle BackColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            
            <FooterTemplate><asp:Label  Height="200px" Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString()) %>' runat="server" ID="lblNoRecord" Font-Names="Kartika" Font-Size="Large" ForeColor="#333333"   Text="No Ad,s To Display..."></asp:Label></FooterTemplate>
            
            <ItemTemplate>
                userid:
                <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ScrapsConnectionString2 %>" 
            SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
        <br />
       
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Terms Of Use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Contact Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback<br />
        <br />
        <br />
       
&nbsp;</div>
    </form>
</body>
</html>
