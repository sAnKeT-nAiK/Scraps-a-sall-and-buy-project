<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

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
        .style16
        {
            width: 809px;
            height: 58px;
        }
        .style19
        {
        }
        .style20
        {
            width: 198px;
        }
        .style21
        {
            width: 98px;
            height: 68px;
        }
        .style22
        {
            width: 198px;
            height: 68px;
        }
        .style23
        {
            width: 24px;
            height: 68px;
        }
        .style24
        {
            height: 68px;
            width: 809px;
        }
        .style25
        {
            width: 98px;
            height: 58px;
        }
        .style26
        {
            width: 198px;
            height: 58px;
        }
        .style27
        {
            width: 24px;
            height: 58px;
        }
        .style28
        {
            width: 809px;
        }
        .style29
        {
            height: 71px;
            width: 98px;
        }
        .style30
        {
            width: 198px;
            height: 71px;
        }
        .style31
        {
            width: 24px;
            height: 71px;
        }
        .style32
        {
            width: 809px;
            height: 71px;
        }
        .style33
        {
            width: 98px;
        }
        .style34
        {
            width: 24px;
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
                    <asp:ImageButton ID="logout_btn" 
                        runat="server" ImageUrl="~/assets/logout_btn.png" Height="38px" 
                        onclick="logout_btn_Click" Visible="False" 
                            OnMouseOver="src='assets/logout_btn_click.png';"
                         OnMouseOut="src='assets/logout_btn.png';" CausesValidation="False"  />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:ImageButton ID="login_btn" runat="server" Height="38px" 
                        ImageUrl="~/assets/login_btn.png" onclick="ImageButton1_Click" 
                        Visible="False" 
                             OnMouseOver="src='assets/login_btn_click.png';"
                         OnMouseOut="src='assets/login_btn.png';" CausesValidation="False"  />
                         
                    &nbsp;&nbsp; 
                    <asp:ImageButton ID="sign_up_btn" runat="server" Height="38px" 
                        ImageUrl="~/assets/signup_btn.png" onclick="ImageButton2_Click" 
                        Visible="False" 
                        OnMouseOver="src='assets/signup_btn_click.png';"
                         OnMouseOut="src='assets/signup_btn.png';" CausesValidation="False" />
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
                         OnMouseOut="src='assets/postads_btn.png';" 
                         CausesValidation="False" />
                </td>
                <td class="style12">
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="38px" 
                        ImageUrl="~/assets/myposts_btn.png" onclick="ImageButton7_Click"
                        OnMouseOver="src='assets/myposts_btn_click.png';"
                         OnMouseOut="src='assets/myposts_btn.png';"
                         CausesValidation="False"  />
                </td>
                <td class="style11">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="38px" 
                        ImageUrl="~/assets/feedback_btn.png" onclick="ImageButton8_Click"
                           OnMouseOver="src='assets/feedback_btn_click.png';"
                         OnMouseOut="src='assets/feedback_btn.png';"
                         CausesValidation="False"  />
                </td>
                <td class="style8">
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="38px" 
                        ImageUrl="~/assets/about_btn.png" onclick="ImageButton9_Click" 
                        OnMouseOver="src='assets/about_btn_click.png';"
                         OnMouseOut="src='assets/about_btn.png';"
                         CausesValidation="False" />
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
                         CausesValidation="False" onclick="ImageButton3_Click" />
                    </td>
            </tr>
        </table>
                <hr />
      <br />
        <div style="background-position: left; font-family: 'Courier New', Courier, monospace; font-size: 35px; color: #FFFFFF; font-weight: normal; position: absolute; top: 240px; left: -1px; width: 1125px; background-image: url('assets/titlback.jpg');">
            &nbsp;&nbsp; Signup:</div>
            
            <br />
        <br />
        <div style="background-color: #F4F7FC; height: 700px; margin-top: 0px; position: absolute; top: 283px; left: -1px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" 
                Text="Create Your Acount For Free" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <br />
            &nbsp;<table 
                
                
                
                style="width:67%; height: 589px; margin-left: 245px; background-color: #CCCCCC; margin-right: 2px;">
                <tr>
                    <td class="style29" style="margin-left: 40px">
                        </td>
                    <td class="style30" style="margin-left: 40px">
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="User ID"></asp:Label>
                    </td>
                    <td class="style31">
                        :</td>
                    <td class="style32">
                        <asp:TextBox ID="txtbox_userid" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                        &nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtbox_userid" 
                            ErrorMessage="Minimum 5 characters max 20 required !!" Font-Bold="False" 
                            ValidationExpression="^[\s\S]{5,20}$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtbox_userid" ErrorMessage="Enter Userid!!" 
                            Font-Bold="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style33">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;
                        <asp:Label ID="Label2" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="User Name"></asp:Label>
                    </td>
                    <td class="style34">
                        :</td>
                    <td class="style28">
                    
                        <asp:TextBox ID="txtbox_username" runat="server" 
                            ontextchanged="txtbox_username_TextChanged" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Enter User Name!!!" Font-Bold="False" 
                            ControlToValidate="txtbox_username"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        </td>
                    <td class="style22">
                        &nbsp;
                        
                             <asp:Label ID="Label3" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="State"></asp:Label>
                    </td>
                    <td class="style23">
                        :</td>
                    <td class="style24">
                        <asp:DropDownList ID="listbox_state" runat="server" 
                            onselectedindexchanged="listbox_city_SelectedIndexChanged" 
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
                        &nbsp;
                        </td>
                </tr>
                
                <tr>
                    <td class="style33">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;
                        <asp:Label ID="Label14" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="City"></asp:Label>
                    </td>
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style28">
                        <asp:DropDownList ID="listbox_city" runat="server" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                            Enabled="False" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="Enter State First!!!" Font-Bold="False" 
                            ControlToValidate="listbox_city"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                  <tr>
                    <td class="style33">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Phone No"></asp:Label>
                      </td>
                    <td class="style34">
                        :</td>
                    <td class="style28">
                        <asp:TextBox ID="txtbox_ph_no" runat="server" 
                            style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" 
                            MaxLength="10"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtbox_ph_no" ErrorMessage="Enter Valid Number !!!" 
                            Font-Bold="False" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtbox_ph_no" ErrorMessage="Enter Phone No!!" 
                            Font-Bold="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
                    <td class="style33">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;
                        <asp:Label ID="Label5" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Email"></asp:Label>
                      </td>
                    <td class="style34">
                        :</td>
                    <td class="style28">
                        <asp:TextBox ID="txtbox_email" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;">@</asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtbox_email" ErrorMessage="Enter Valid Email !!!" 
                            Font-Bold="False" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                  <tr>
                    <td class="style33">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;
                        <asp:Label ID="Label7" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Password"></asp:Label>
                      </td>
                    <td class="style34">
                        :</td>
                    <td class="style28">
                        <asp:TextBox ID="txtbox_password" runat="server" TextMode="Password" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtbox_password" ErrorMessage="Enter Password!!" 
                            Font-Bold="False"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtbox_password" 
                            ErrorMessage="Enter Password With Atlest 6 digit. max 10 !!!" Font-Bold="False" 
                            ValidationExpression="^[\s\S]{6,10}$"></asp:RegularExpressionValidator>
                        <br />
                      </td>
                </tr>
                  <tr>
                    <td class="style25">
                        </td>
                    <td class="style26">
                        &nbsp;
                        <asp:Label ID="Label8" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Conform Password"></asp:Label>
                      </td>
                    <td class="style27">
                        :</td>
                    <td class="style16">
                        <asp:TextBox ID="txtbox_confirm_password" runat="server" TextMode="Password" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtbox_confirm_password" ControlToValidate="txtbox_password" 
                            ErrorMessage="Password Do Not Match!!!" Font-Bold="False"></asp:CompareValidator><br />
                        &nbsp;</td>
                </tr>
                  <tr>
                    <td class="style33">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="btn_submit" runat="server" Height="40px" 
                            ImageUrl="~/assets/submit_btn.png" onclick="btn_submit_Click" />
                      </td>
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style28">
                        <asp:ImageButton ID="btn_refresh" runat="server" Height="40px" 
                            ImageUrl="~/assets/refresh_btn.png" onclick="btn_refresh_Click" 
                            CausesValidation="False" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                            Font-Names="Segoe UI Light" ForeColor="#666666"></asp:Label>
                      </td>
                </tr>
                  <tr>
                    <td class="style19" colspan="4">
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            &nbsp;
        </div>
        <br />
        
        <br />
        
            <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Terms Of Use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contect 
        Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Feedback&nbsp;                     <br />
                    <br />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
