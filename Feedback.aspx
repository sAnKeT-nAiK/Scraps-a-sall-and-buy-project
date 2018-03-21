<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="_Default" %>

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
        .style20
        {
            width: 409px;
        }
        .style21
        {
            width: 139px;
        }
        .style23
        {
            width: 31px;
        }
        .style24
        {
            width: 139px;
            height: 138px;
        }
        .style25
        {
            width: 31px;
            height: 138px;
        }
        .style26
        {
            width: 409px;
            height: 138px;
        }
        .style27
        {
            height: 138px;
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
                    &nbsp;
                    <asp:ImageButton ID="logout_btn" 
                        runat="server" ImageUrl="~/assets/logout_btn.png" Height="38px" 
                        onclick="logout_btn_Click" 
                            OnMouseOver="src='assets/logout_btn_click.png';"
                         OnMouseOut="src='assets/logout_btn.png';" CausesValidation="False"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                         
                    &nbsp;&nbsp; 
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
        <div style="background-position: left; font-family: 'Courier New', Courier, monospace; font-size: 35px; color: #FFFFFF; font-weight: normal; position: absolute; top: 244px; left: 0px; width: 1124px; background-image: url('assets/titlback.jpg');">
            &nbsp;FEEDBACK:</div>
            
            <div style="height: 1001px; background-color: #F4F7FC;">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                    SelectCommand="SELECT * FROM [feedback] ORDER BY [sr_no] DESC">
                </asp:SqlDataSource>
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                \<br />
                <table style="width:53%; background-color: #CCCCCC; margin-left: 22px; height: 378px;">
                    <tr>
                        <td class="style43">
                            <table style="width: 176%; height: 318px;">
                    <tr>
                        <td class="style21">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Username" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:Label>
                        </td>
                        <td class="style23">
                            :</td>
                        <td class="style20">
                            <span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
                            <asp:TextBox 
                                ID="txtbox_username" runat="server" Height="30px" 
                                style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" 
                                Width="160px"></asp:TextBox></span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtbox_username" ErrorMessage="Please Enter Username!!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator><div style="position: absolute; top: 305px; left: 610px; height: 400px; width: 131px;">
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
                                Font-Bold="False" Font-Italic="False" Font-Names="Kartika" Font-Overline="False" 
                                Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" 
                                ForeColor="#666666" HorizontalAlign="Justify" 
                                onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatLayout="Flow" 
                                Width="433px" style="margin-top: 0px; margin-left: 25px;">
                                <ItemTemplate>
                                    U<b>sername:</b>
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                    <br />
                                    Email<b>:</b>
                                    <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("email") %>' />
                                    <br />
                                    D<b>escription:</b>
                                    <asp:Label ID="descriptionLabel" runat="server" 
                                        Text='<%# Eval("description") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            </div>
                        </td>
                        <td class="style38">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Email" 
                                style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:Label>
                        </td>
                        <td class="style23">
                            :</td>
                        <td class="style20">
                            <span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
                            <br />
                            <asp:TextBox 
                                ID="txtbox_city" runat="server" Height="30px" 
                                ontextchanged="txtbox_city_TextChanged" 
                                style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" 
                                Width="160px"></asp:TextBox></span><asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtbox_city" ErrorMessage="Please Enter Email!!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator><br />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtbox_city" ErrorMessage="Enter Valid Email !!" 
                                Font-Bold="False" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                        <td class="style39">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24">
                            &nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Description" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:Label>
                        </td>
                        <td class="style25">
                            :</td>
                        <td class="style26">
                            <span style="color: rgb(0 ,0 , 0); font-family: 'Times New Roman'; font-size: 20px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(227, 227, 227);">
  
                            <asp:TextBox ID="txtbox_description" runat="server" Height="100px" 
                                Width="200px" MaxLength="100" 
                                ontextchanged="txtbox_description_TextChanged" TextMode="MultiLine" 
                                style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333; margin-left: 0px;" 
                                Wrap="False"></asp:TextBox></span><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtbox_description" 
                                ErrorMessage="Please Enter Description!!!" Font-Bold="False"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style27">
                                        </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            &nbsp;
                            <asp:ImageButton ID="ImageButton10" runat="server" Height="40px" 
                                ImageUrl="~/assets/submit_btn.png" onclick="ImageButton10_Click" />
                        </td>
                        <td class="style23">
                        </td>
                        <td class="style20">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton 
                                ID="ImageButton11" runat="server" Height="40px" 
                                ImageUrl="~/assets/refresh_btn.png" CausesValidation="False" 
                                onclick="ImageButton11_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="style41">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                        </td>
                        <td class="style23">
                        </td>
                        <td class="style20">
                            <asp:Label ID="Label5" runat="server" ForeColor="#333333"></asp:Label>
                        </td>
                        <td class="style42">
                            &nbsp;</td>
                    </tr>
                </table>
           
                        </td>
                    </tr>
                    <tr>
                        <td class="style43">
                            &nbsp;</td>
                    </tr>
                </table>
           
            <br />
            <br />
&nbsp;
                </div>
       <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Terms Of 
        Use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contect 
        Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Feedback          r />
                    <br />
    
    </div>
    </form>
</body>
</html>

