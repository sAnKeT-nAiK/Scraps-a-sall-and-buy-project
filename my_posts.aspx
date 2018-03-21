<%@ Page Language="C#" AutoEventWireup="true" CodeFile="my_posts.aspx.cs" Inherits="my_posts" %>

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
            width: 242px;
        }
        .style16
        {
            width: 111px;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="logout_btn" 
                        runat="server" ImageUrl="~/assets/logout_btn.png" Height="38px" 
                        onclick="logout_btn_Click"  
                            OnMouseOver="src='assets/logout_btn_click.png';"
                         OnMouseOut="src='assets/logout_btn.png';"  />
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
    
    </div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="userid" 
            DataSourceID="SqlDataSource1" CellPadding="4" Font-Names="Kartika" 
        Font-Size="Medium" ForeColor="#333333" 
        style="margin-left: 99px; margin-right: 548px; margin-top: 19px;" 
        Width="1121px"  OnDeleteCommand="DataList1_DeleteCommand" 

        onselectedindexchanged="DataList1_SelectedIndexChanged" 
 
        
       OnRowDeleting="GridView1_RowDeleting"
           EmptyDataText="There is not posts....!!!!" >
           
           
                   <FooterStyle BackColor="White" Font-Bold="False" ForeColor="White" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <FooterTemplate><asp:Label  Height="200px" Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString()) %>' 
runat="server" ID="lblNoRecord" Font-Names="Kartika" Font-Size="Large" ForeColor="#333333"   Text="No 
Ad,s To Display..."></asp:Label></FooterTemplate>
       <ItemTemplate>
                &nbsp;
                                
                <br />
                &nbsp; &nbsp;&nbsp;<asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' 
                    Font-Bold="True" Font-Underline="True" />
                <br />
                <br />
                &nbsp;&nbsp; <asp:Image ID="Image3" runat="server" Height="250px"  ImageUrl='<%# Eval("photo1") %>' />
                &nbsp;&nbsp; <asp:Image ID="Image4" runat="server" Height="250px"  ImageUrl='<%# Eval("photo2") %>' />
                
                <br />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<table 
                    style="width: 78%; margin-left: 25px; height: 201px; margin-bottom: 0px;">
                    <tr>
                        <td class="style35">
                            <b>Category</b>&nbsp;</td>
                        <td class="style36">
                            :</td>
                        <td class="style37">
                            <asp:Label ID="categoryLabel0" runat="server" Text='<%# Eval("category") %>' />
                        </td>
                        <td class="style38">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <b>Contact no</b>&nbsp;</td>
                        <td class="style24">
                            :</td>
                        <td class="style25">
                            <asp:Label ID="phonenoLabel0" runat="server" Text='<%# Eval("phoneno") %>' />
                        </td>
                        <td class="style26">
                        </td>
                    </tr>
                    <tr>
                        <td class="style27">
                            Email</td>
                        <td class="style28">
                            :</td>
                        <td class="style29">
                            <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
                        </td>
                        <td class="style30" rowspan="6" style="font-size: xx-large; color: #FF4040">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            &nbsp; Rs:<asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                Font-Size="XX-Large" Font-Underline="False" ForeColor="#FF4040" 
                                Text='<%# Eval("price") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            State</td>
                        <td class="style20">
                            :</td>
                        <td class="style21">
                            <asp:Label ID="stateLabel1" runat="server" Text='<%# Eval("state") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            City</td>
                        <td class="style18">
                            :</td>
                        <td class="style17">
                            <asp:Label ID="cityLabel1" runat="server" Text='<%# Eval("city") %>' />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <b>Price</b></td>
                        <td class="style18">
                            :</td>
                        <td class="style17">
                            <asp:Label ID="priceLabel0" runat="server" Text='<%# Eval("price") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <b>Discription</b></td>
                        <td class="style18">
                            :</td>
                        <td class="style17">
                            <asp:Label ID="addressLabel0" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                    </tr>
                </table>
                &nbsp;
                <hr />
                <br />
            </ItemTemplate>
    </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" 
            SelectCommand="SELECT DISTINCT * FROM [post_ads] WHERE ([userid] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="cosname" Name="userid" 
                    SessionField="userid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
