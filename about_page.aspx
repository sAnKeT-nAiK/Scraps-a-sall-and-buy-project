<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about_page.aspx.cs" Inherits="about_page" %>

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
            width: 23px;
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
                         
                    <br />
                    <asp:ImageButton ID="logout_btn" 
                        runat="server" ImageUrl="~/assets/logout_btn.png" Height="38px" 
                        onclick="logout_btn_Click" Visible="False" 
                            OnMouseOver="src='assets/logout_btn_click.png';"
                         OnMouseOut="src='assets/logout_btn.png';"  />
                    &nbsp;<asp:ImageButton ID="sign_up_btn" runat="server" Height="38px" 
                        ImageUrl="~/assets/signup_btn.png" onclick="ImageButton2_Click" 
                        Visible="False" 
                        OnMouseOver="src='assets/signup_btn_click.png';"
                         OnMouseOut="src='assets/signup_btn.png';" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
                <td class="style10">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="38px" 
                        ImageUrl="~/assets/category_btn.png" onclick="ImageButton5_Click" 
                        OnMouseOver="src='assets/category_btn_click.png';"
                         OnMouseOut="src='assets/category_btn.png';"  />
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
        <div style="background-position: left; font-family: 'Courier New', Courier, monospace; font-size: 35px; color: #FFFFFF; font-weight: normal; position: absolute; top: 244px; left: 0px; width: 1124px; background-image: url('assets/titlback.jpg'); height: 524px;">
            &nbsp;About:
            <div style="height: 505px; background-color: #F4F7FC; width: 1125px; margin-bottom: 0px;">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;<div 
                    
                    
                    
                    style="position: absolute; top: 108px; left: 31px; height: 418px; width: 1015px; color: #333333; font-family: 'Segoe UI Symbol'; font-weight: normal; font-size: 18px;">
                    In this co-operate world everyone wants to do their task online. It has become 
                    necessary part of modern life. By developing this website buying and selling of 
                    old products can be done online more efficiently. Normally the owner sells his 
                    old products to scrapper and he does not get a good price for his old products 
                    to overcome this problem SCRAPS WEBSITE is designed. SCRAPS WEBSITE is designed 
                    to sell old products online. With the help of SCRAPS WEBSITE person can buy and 
                    sell his old products sitting at home. By using SCRAPS WEBSITE one can save his 
                    time and money and get his desired product with in short amount of time.
                    <br />
                    The main aim SCRAPS WEBSITE is reusing of old and unused products. In SCRAPS 
                    WEBSITE User can post ads of his products free of cost. Here user has to create 
                    an account to post his products SCRAPS WEBSITE provides only cash on delivery 
                    option for payment of purchased products. Buyer can select the product which he 
                    wants to buy and contact the seller by the details which seller has provided on 
                    the website.</div>
            </div>
       <br />
    &nbsp;&nbsp;<div 
                style="background-color: #333333; font-size: large; position: absolute; top: 546px; left: 0px; width: 1127px; height: 59px;">
&nbsp;&nbsp;
                <br />
&nbsp;Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp; Contect Us&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback&nbsp;
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    
    </div>
    </form>
</body>
</html>