<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postads.aspx.cs" Inherits="_Default" %>

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
        .style19
        {
            width: 13px;
        }
        .style20
        {
            width: 195px;
        }
        .style21
        {
            width: 195px;
            height: 55px;
        }
        .style22
        {
            width: 13px;
            height: 55px;
        }
        .style23
        {
            height: 55px;
            width: 434px;
        }
        .style24
        {
            width: 195px;
            height: 82px;
        }
        .style25
        {
            width: 13px;
            height: 82px;
        }
        .style26
        {
            height: 82px;
            width: 434px;
        }
        .style27
        {
            width: 434px;
        }
        .style28
        {
            width: 195px;
            height: 128px;
        }
        .style29
        {
            width: 13px;
            height: 128px;
        }
        .style30
        {
            width: 434px;
            height: 128px;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="logout_btn" 
                        runat="server" ImageUrl="~/assets/logout_btn.png" Height="38px" 
                        onclick="logout_btn_Click" 
                            OnMouseOver="src='assets/logout_btn_click.png';"
                         OnMouseOut="src='assets/logout_btn.png';" CausesValidation="False"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                        onclick="ImageButton3_Click1" />
                    </td>
            </tr>
        </table>
                <hr />
      <br />
        <div style="background-position: left; font-family: 'Courier New', Courier, monospace; font-size: 35px; color: #FFFFFF; font-weight: normal; position: absolute; top: 236px; left: -1px; width: 1124px; background-image: url('assets/titlback.jpg');">
            &nbsp;&nbsp; Post Add&#39;s:</div>
            
            <br />
        <br />
            
            <div style="height: 787px; background-color: #F4F7FC;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                <asp:Label ID="Label14" runat="server" ForeColor="#666666" Text="Welcome" 
                    Font-Names="Segoe UI" Font-Bold="False" Font-Size="X-Large"></asp:Label>
&nbsp;<asp:Label ID="Label13" runat="server" ForeColor="#666666" Font-Names="Segoe UI" 
                    Font-Bold="False" Font-Size="X-Large"></asp:Label><asp:Label ID="Label15" 
                    runat="server" Font-Names="Segoe UI" ForeColor="#666666" 
                    Text="Please Insert Your Product Details :" Font-Bold="False" 
                    Font-Size="X-Large"></asp:Label><br />
            <table style="width:63%; height: 653px; margin-left: 191px; background-color: #CCCCCC; margin-right: 3px;">
                <tr>
                    <td class="style21">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Product Title"></asp:Label>
                    </td>
                    <td class="style22">:</td>
                       :<td class="style23">
                            <br />
                         <asp:TextBox ID="txtbox_username" runat="server" Height="23px" Width="132px" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" ></asp:TextBox>
                        </span>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtbox_username" ErrorMessage="Enter Product name!!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator>
                            <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtbox_username" 
                                ErrorMessage="Enter Product Name With Min 15 max 30 character" 
                                Font-Bold="False" ValidationExpression="^[\s\S]{15,30}$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;
                        <asp:Label ID="Label3" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Category"></asp:Label>
                    </td>
                    <td class="style25">
                        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <td class="style26">
                        <asp:DropDownList ID="listbox_category" runat="server" 
                            onselectedindexchanged="listbox_category_SelectedIndexChanged" 
                            Height="32px" Width="119px" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;">
                            <asp:ListItem>car</asp:ListItem>
                            <asp:ListItem>bike</asp:ListItem>
                            <asp:ListItem>bicycle</asp:ListItem>
                            <asp:ListItem>mobile</asp:ListItem>
                            <asp:ListItem>books</asp:ListItem>
                            <asp:ListItem>pets</asp:ListItem>
                            <asp:ListItem>toys</asp:ListItem>
                            <asp:ListItem>sports items</asp:ListItem>
                            
                            
                            <asp:ListItem>scraps bike</asp:ListItem>
                            <asp:ListItem>scraps car</asp:ListItem>
                            <asp:ListItem>scraps mobile</asp:ListItem>
                            <asp:ListItem>others</asp:ListItem>
                            
                            
                            <asp:ListItem></asp:ListItem>
                            
                            
                        </asp:DropDownList>
                        <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="listbox_category" ErrorMessage="Choose Category !!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator></td>
                </tr>
                
                  <tr>
                    <td class="style28">
                        &nbsp;
                        <asp:Label ID="Label5" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Discription"></asp:Label>
                      </td>
                    <td class="style29">
                                                :</td>
                    <td class="style30">
                        <asp:TextBox ID="txtbox_address" runat="server" Height="70px" 
                            TextMode="MultiLine" Width="197px" 
                            ontextchanged="txtbox_address_TextChanged" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtbox_address" ErrorMessage="Enter description !!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator><br />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtbox_address" 
                            ErrorMessage="Enter Discription with Min 30 max 100 character !!" Font-Bold="False" 
                            ValidationExpression="^[\s\S]{30,100}$"></asp:RegularExpressionValidator></td>
                </tr>
                  <tr>
                    <td class="style20">
                        &nbsp;
                        <asp:Label ID="Label6" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Photo(1)"></asp:Label>
                      </td>
                    <td class="style19">
                        :</td>
                    <td class="style27">
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" Width="217px" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"/>
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="#666666"></asp:Label><br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="Enter Image !!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator></td>
                </tr>
                  <tr>
                    <td class="style20">
                        &nbsp;
                        <asp:Label ID="Label7" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Photo(2)"></asp:Label>
                      </td>
                    <td class="style19">
                        :</td>
                    <td class="style27">
                        <asp:FileUpload ID="FileUpload2" runat="server" Height="25px" Width="218px" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" ForeColor="#666666"></asp:Label>
                        <br />
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="FileUpload2" ErrorMessage="Enter Image !!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator></td>
                </tr>
                  <tr>
                    <td class="style20">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;" Text="Price"></asp:Label>
                      </td>
                    <td class="style19">
                       :</td>
                    <td class="style27" style="color: #333333">
                        <asp:TextBox ID="txtbox_price" runat="server" Height="26px" Width="131px" style="font-family: 'Segoe UI'; font-weight: lighter; color: #333333;"></asp:TextBox>
                        &nbsp;Rs
                        <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtbox_price" ErrorMessage="Enter Price !!!" 
                                Font-Bold="False"></asp:RequiredFieldValidator></td>
                </tr>
                  <tr>
                    <td class="style20">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="btn_submit" runat="server" Height="40px" 
                            ImageUrl="~/assets/submit_btn.png" onclick="btn_submit_Click" />
                      </td>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style27">
                        &nbsp;&nbsp;
                        <asp:ImageButton ID="btn_refresh" runat="server" Height="40px" 
                            ImageUrl="~/assets/refresh_btn.png" CausesValidation="False" 
                            onclick="btn_refresh_Click"/>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                            Font-Names="Segoe UI Light" ForeColor="#666666"></asp:Label>
                      </td>
                </tr>
            </table>
            <br />
            &&nbsp;<asp:Label ID="city" runat="server" ForeColor="#333333" Visible="False"></asp:Label>&nbsp;
                    <asp:Label ID="state" runat="server" ForeColor="#333333" Visible="False"></asp:Label>
&nbsp;
                    <asp:Label ID="email" runat="server" ForeColor="#333333" Visible="False"></asp:Label>
            &nbsp;<asp:Label ID="Label16" runat="server" ForeColor="#333333" Visible="False"></asp:Label><br />
            <br />
&nbsp;
        </div>
        <br />
        
            <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Terms Of 
        Use&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Help&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contect 
        Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Feedback               <br />
                    <br />
                    <br />
    
    </div>
    </form>
</body>
</html>