<%@ Page Language="C#" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

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
                        ImageUrl="~/assets/login_btn.png" 
                        Visible="False" 
                             OnMouseOver="src='assets/login_btn_click.png';"
                         OnMouseOut="src='assets/login_btn.png';" onclick="login_btn_Click"  />
                         
                    <br />
                    <asp:ImageButton ID="logout_btn" 
                        runat="server" ImageUrl="~/assets/logout_btn.png" Height="38px" 
                        onclick="logout_btn_Click" Visible="False" 
                            OnMouseOver="src='assets/logout_btn_click.png';"
                         OnMouseOut="src='assets/logout_btn.png';"  />
                    <br />
                    <asp:ImageButton ID="sign_up_btn" runat="server" Height="38px" 
                        ImageUrl="~/assets/signup_btn.png"  
                        Visible="False" 
                        OnMouseOver="src='assets/signup_btn_click.png';"
                         OnMouseOut="src='assets/signup_btn.png';" onclick="sign_up_btn_Click" />
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
        <div style="background-position: left; font-family: 'Courier New', Courier, monospace; font-size: 35px; color: #FFFFFF; font-weight: normal; position: absolute; top: 242px; left: -1px; width: 1124px; background-image: url('assets/titlback.jpg');">
            &nbsp;&nbsp; SELECT CETOGARY:</div>
            
            <div style="height: 848px;">
                <br />
            <br />
                <table style="width:100%; height: 829px;">
                    <tr>
                        <td>
                <asp:ImageButton ID="ImageButton10" runat="server" Height="68px" 
                    ImageUrl="~/assets/bike_items.png" Width="1122px" 
                    onclick="ImageButton10_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:ImageButton ID="ImageButton11" runat="server" Height="68px"  
                    ImageUrl="~/assets/car_items.png" Width="1122px" onclick="ImageButton11_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="68px"  
                    ImageUrl="~/assets/cycle_items.png" Width="1122px" onclick="ImageButton1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="68px"  
                    ImageUrl="~/assets/mobiles_items.png" Width="1122px" 
                    onclick="ImageButton2_Click" />
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton12" runat="server" Height="68px"  
                    ImageUrl="~/assets/books_items.png" Width="1122px" 
                    onclick="ImageButton12_Click"/>
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton13" runat="server" Height="68px"  
                    ImageUrl="~/assets/pets_items.png" Width="1122px" 
                    onclick="ImageButton13_Click" />
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton14" runat="server" Height="68px"  
                    ImageUrl="~/assets/toys_items.png" Width="1122px" 
                    onclick="ImageButton14_Click" />
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton15" runat="server" Height="68px"  
                    ImageUrl="~/assets/sports_items.png" Width="1122px" 
                    onclick="ImageButton15_Click" />
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton16" runat="server" Height="68px"  
                    ImageUrl="~/assets/scrapbikes_items.png" Width="1122px" 
                    onclick="ImageButton16_Click" />
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton17" runat="server" Height="68px"  
                    ImageUrl="~/assets/scrapcar_items.png" Width="1122px" 
                    onclick="ImageButton17_Click" />
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton18" runat="server" Height="68px"  
                    ImageUrl="~/assets/scrapmob_items.png" Width="1122px" 
                    onclick="ImageButton18_Click" />
                           </td>
                    </tr>
                     <tr>
                        <td>
                <asp:ImageButton ID="ImageButton19" runat="server" Height="68px"  
                    ImageUrl="~/assets/other_items.png" Width="1122px" 
                    onclick="ImageButton19_Click" />
                           </td>
                    </tr>
                </table>
                <br />
                <br />
                &nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
        </div>
        &nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Terms Of 
        Use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contect 
        Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Feedback
        <br />
    
    </div>
    </form>
</body>
</html>