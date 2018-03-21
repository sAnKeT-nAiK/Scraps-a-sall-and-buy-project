<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

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
        .style17
        {
            width: 699px;
        }
        .style20
        {
            width: 428px;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                 
                         
                  
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
                         OnMouseOut="src='assets/home_btn.png';" onclick="ImageButton4_Click" 
                        CausesValidation="False" />
                </td>
                <td class="style10">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="38px" 
                        ImageUrl="~/assets/category_btn.png" onclick="ImageButton5_Click" 
                        OnMouseOver="src='assets/category_btn_click.png';"
                         OnMouseOut="src='assets/category_btn.png';" CausesValidation="False"  />
                </td>
                <td class="style5">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="38px" 
                        ImageUrl="~/assets/postads_btn.png" onclick="ImageButton6_Click"
                         OnMouseOver="src='assets/postads_btn_click.png';"
                         OnMouseOut="src='assets/postads_btn.png';" CausesValidation="False" />
                </td>
                <td class="style12">
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="38px" 
                        ImageUrl="~/assets/myposts_btn.png" onclick="ImageButton7_Click"
                        OnMouseOver="src='assets/myposts_btn_click.png';"
                         OnMouseOut="src='assets/myposts_btn.png';" CausesValidation="False" />
                </td>
                <td class="style11">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="38px" 
                        ImageUrl="~/assets/feedback_btn.png" onclick="ImageButton8_Click"
                           OnMouseOver="src='assets/feedback_btn_click.png';"
                         OnMouseOut="src='assets/feedback_btn.png';" CausesValidation="False" />
                </td>
                <td class="style8">
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="38px" 
                        ImageUrl="~/assets/about_btn.png" onclick="ImageButton9_Click" 
                        OnMouseOver="src='assets/about_btn_click.png';"
                         OnMouseOut="src='assets/about_btn.png';" CausesValidation="False"/>
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
                         OnMouseOut="src='assets/location_btn.png';" CausesValidation="False" 
                        onclick="ImageButton3_Click" />
                    </td>
            </tr>
        </table>
                <hr />
      <br />
        <div style="background-position: left; font-family: 'Courier New', Courier, monospace; font-size: 35px; color: #FFFFFF; font-weight: normal; position: absolute; top: 242px; left: -1px; width: 1124px; background-image: url('assets/titlback.jpg');">
            &nbsp;&nbsp; Login:</div>
            
            <div style="height: 343px;">
                <br />
            <br />
               
            <div style="background-color: #F4F7FC; height: 522px; margin-top: 0px;">
            <br />
                &nbsp;
                <div style="position: absolute; top: 314px; left: 207px; height: 283px; width: 714px;">
                    <br />
                    <br />
                <table style="width:73%; height: 263px; margin-left: 57px; margin-top: 0px;" 
                        bgcolor="Silver">
                    <tr>
                        <td class="style17">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Enter UserId"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            :</td>
                        <td class="style20">
                         <span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
                            <asp:TextBox ID="txtbox_username" runat="server" Width="216px" Height="25px" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                            </span>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtbox_username" ErrorMessage="Enter User Name First !!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Enter Password"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                        <td class="style20">
                            <asp:TextBox ID="txtbox_password" runat="server" Width="217px" 
                                TextMode="Password" Height="26px" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtbox_password" ErrorMessage="Enter Password !!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton10" runat="server" Height="40px" 
                                ImageUrl="~/assets/login_btn.png" onclick="ImageButton10_Click" />
                        &nbsp;</td>
                        <td class="style20">
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                                ImageUrl="~/assets/signup_btn.png" onclick="ImageButton1_Click" 
                                CausesValidation="False" />
                            </td>
                    </tr>
                    <tr>
                        <td class="style17" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                                Font-Names="Segoe UI Light" ForeColor="Red"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                Font-Bold="False" Font-Underline="False" onclick="LinkButton1_Click" 
                                Font-Size="Small">Forgot Password ?</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                </div>
        </div>
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Terms Of Use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contect 
                Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;  </div>
    </form>
</body>
</html>
