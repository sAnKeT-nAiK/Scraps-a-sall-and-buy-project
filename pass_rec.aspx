<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pass_rec.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Untitled Page</title>
        <style type="text/css">
            #form2
            <style type="text/css">
        .style1
        {
        }
        .style3
        {
            width: 151px;
        }
        .style8
        {
            width: 178px;
        }
        .style9
        {
            width: 106px;
        }
        .style10
        {
            width: 522px;
        }
        .style11
        {
                width: 88px;
            }
        .style2
        {
            width: 374px;
        }
        .style12
        {
                width: 359px;
            }
        .style14
        {
            width: 178px;
            height: 29px;
        }
        .style15
        {
            width: 151px;
            height: 29px;
        }
        .style16
        {
            height: 29px;
        }
            .style17
            {
                width: 440px;
            }
            .style18
            {
                width: 121px;
            }
        </style>
    </head>
<body background="assets/images/nbvg.jpg" style="background-attachment: fixed;" 
    bgcolor="#9c9a9f">
    <form id="form2" runat="server">
    
        <div style="background-color: #F4F7FC; height: 550px; width: 829px; margin-left: 220px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="130px" 
                        ImageUrl="~/assets/logo_new1.png" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Title" runat="server" Font-Bold="False" Font-Names="Verdana" 
                Font-Size="Larger" ForeColor="#333333" Text="--Forgot Password !!--"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
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
    

     <div style="position:absolute; left:317px; top:299px; width: 823px; height: 341px; margin-top: 3px;">
    
    
     <asp:Panel ID="userid_panel" runat="server" Height="85px" Width="728px">
        <table style="width: 88%; height: 71px;">
            <tr>
                <td class="style17" 
                    style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Enter User ID :&nbsp; </td>
                <td class="style1">
                    <asp:TextBox ID="txt_id" runat="server" Height="25px" Width="169px" 
                        style="margin-left: 0px"></asp:TextBox>
                </td>
                <td class="style10">
                 <span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
                        
                    <asp:Button ID="btn_check" runat="server" onclick="btn_check_Click" 
                    Text="Check" Width="142px" Height="29px" BackColor="Silver" 
                        BorderColor="#666666" />
                    </span>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_id" ErrorMessage="*Enter user ID"></asp:RequiredFieldValidator>
                </td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="email_panel" runat="server" Height="77px" Visible="False" 
        Width="689px">
        <table style="width: 99%;">
            <tr>
                <td class="style14"
                style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;">
                    <asp:Label ID="Label2" runat="server" Text="Enter your e-mail"></asp:Label>
                </td>
                <td class="style15">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_mail" runat="server" Height="30px" Width="298px" ></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;<asp:Button ID="btn_email" runat="server" Text="Send" 
                        onclick="btn_email_Click"  Width="142px" Height="29px" BackColor="Silver" 
                        BorderColor="#666666"  />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_mail" ErrorMessage="*Entre e-mail"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
         </asp:Panel>
        <asp:Panel ID="mobileno_pael" runat="server" Visible="False" Height="61px" 
        Width="648px">
            <table style="width:100%;">
                <tr>
                    <td style="font-family: 'Segoe UI'; color: #333333">
                        Enter Your Mobile Number:</td>
                    <td>
                        <asp:TextBox ID="txt_mob" runat="server"  
                            Width="217px"></asp:TextBox>
                        <asp:Button ID="btn_sms" runat="server" Text="Send" onclick="btn_sms_Click" 
                           Width="142px" Height="29px" BackColor="Silver" 
                        BorderColor="#666666"  />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="2">
                        &nbsp;</td>
                    <td rowspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txt_mob" ErrorMessage="*Enter mobile Number"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        
        <asp:Panel ID="option_panel" runat="server" Height="32px" Visible="False" 
        Width="655px">
            <table style="width:100%;">
                <tr>
                    <td style="font-family: 'Segoe UI'; color: #333333">
                        <asp:Label ID="Lbl" runat="server" 
                            Text="We are sending OTP How do u want to receive?"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btn_otpemail" runat="server" CausesValidation="False" 
                            onclick="btn_otpemail_Click" Text="Email" Width="142px" Height="29px" BackColor="Silver" 
                        BorderColor="#666666"  />
                    </td>
                    <td>
                        <asp:Button ID="btn_otpsms" runat="server" CausesValidation="False" 
                             onclick="btn_otpsms_Click" Text="SMS" 
                            Width="142px" Height="29px" BackColor="Silver" 
                        BorderColor="#666666"  />
                    </td>
                </tr>
            </table>
            <br />
    </asp:Panel>
        
        <br />
    </asp:Panel2>
    <asp:Panel ID="OTP_panel" runat="server" Visible="False" Width="551px">
        <table style="width:100%;">
            <tr>
                <td class="style11" style="font-family: 'Segoe UI'; color: #333333">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Enter OTP"></asp:Label>
                    &nbsp;:</td>
                <td class="style18">
                    <asp:TextBox ID="txt_otp" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:Button ID="btn_otpsubmit" runat="server" Text="Submit" 
                        onclick="btn_otpsubmit_Click" Width="142px" Height="29px" BackColor="Silver" 
                        BorderColor="#666666" />
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt_otp" ErrorMessage="*enter OTP"></asp:RequiredFieldValidator>
                </td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="changepassword_panel" runat="server" Visible="False">
        <table style="width: 100%; height: 127px;">
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12"  style="font-family: 'Segoe UI'; color: #333333">
                    Please Enter New Password:</td>
                <td class="style2">
                    <asp:TextBox ID="txt_newpass" runat="server" Height="24px" Width="276px"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txt_newpass" ErrorMessage="*enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12"  style="font-family: 'Segoe UI'; color: #333333">
                    Confirm Password:</td>
                <td class="style2">
                    <asp:TextBox ID="txt_confirmpass" runat="server" Height="24px" Width="276px"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txt_confirmpass" ErrorMessage="*enter confirm password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btn_change" runat="server" onclick="Button1_Click" 
                    Text="Change Password" Width="142px" Height="29px" BackColor="Silver" 
                        BorderColor="#666666" />
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style2" style="font-family: 'Segoe UI'; color: #333333">
                    <asp:Label ID="lbl_result" runat="server"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    
    
    
      </div>
    </form>
</body>
</html>
