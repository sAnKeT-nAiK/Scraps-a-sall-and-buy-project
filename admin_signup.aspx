<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_signup.aspx.cs" Inherits="viewstock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">


  <title>Untitled Page</title>
        <style type="text/css">
            #form2
            {
                height: 663px;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Verdana" 
                Font-Size="Larger" ForeColor="#333333" Text="--Update Signup Table--"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Back" BackColor="#7C4882" BorderColor="#442747" 
            BorderStyle="Ridge" Font-Bold="False" Font-Italic="False" 
            Font-Names="Verdana" Font-Overline="False" Font-Size="Larger" 
            Font-Strikeout="False" ForeColor="White" Height="44px" Width="166px" /><br />
            &nbsp;
            <br />
&nbsp;
            <br />
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    

     <div style=" position:absolute; left:931px; top: 10px; height: 1px; width: 270px; background-color: black;">
           </div>
    <div style="position:absolute; left:233px; top:292px; width: 820px; height: 178px; margin-top: 3px;">
    
        <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" 
            OnRowDeleting="GridView1_RowDeleting" AutoGenerateEditButton="True" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            OnRowEditing="GridView1_RowEditing" 
            OnRowCancelingEdit="GridView1_RowCancelingEdit" 
            OnRowUpdating="GridView1_RowUpdating" 
            EmptyDataText="There is Items to display....!!!!" Width="819px" Height="84px" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
            style="margin-top: 0px">
                <Columns >  
            
             <asp:TemplateField HeaderText ="User ID"> 
             <ItemTemplate><asp:Label ID="userid" runat ="server" Text ='<%#Eval("userid") %>'></asp:Label>
             </ItemTemplate>
             </asp:TemplateField>  
             
             
             <asp:TemplateField HeaderText="Username" >
             <ItemTemplate><asp:Label ID="username" runat ="server" Text ='<%#Eval("username") %>'></asp:Label>
             </ItemTemplate>   
             
             <EditItemTemplate >  
             <asp:TextBox ID="username_box" runat ="server" Text ='<%#Eval("username") %>'></asp:TextBox>  
             </EditItemTemplate>  

             </asp:TemplateField> 
             
             
              


            <asp:TemplateField HeaderText="State" >
             <ItemTemplate><asp:Label ID="stockrate" runat ="server" Text ='<%#Eval("state") %>'></asp:Label>
             </ItemTemplate>   
             
             <EditItemTemplate >  
             <asp:TextBox ID="state_box" runat ="server" Text ='<%#Eval("state") %>'></asp:TextBox>  
             </EditItemTemplate>  

             </asp:TemplateField>  

             <asp:TemplateField HeaderText="City" >
             <ItemTemplate><asp:Label ID="stockname" runat ="server" Text ='<%#Eval("city") %>'></asp:Label>
             </ItemTemplate>   
             
             <EditItemTemplate >  
             <asp:TextBox ID="city_box" runat ="server" Text ='<%#Eval("city") %>'></asp:TextBox>  
             </EditItemTemplate> 
              </asp:TemplateField>  
             
             <asp:TemplateField HeaderText="phoneno" >
             <ItemTemplate><asp:Label ID="phoneno" runat ="server" Text ='<%#Eval("phoneno") %>'></asp:Label>
             </ItemTemplate>   
             
             <EditItemTemplate >  
             <asp:TextBox ID="phoneno_box" runat ="server" Text ='<%#Eval("phoneno") %>'></asp:TextBox>  
             </EditItemTemplate>
              </asp:TemplateField> 
             
             
             <asp:TemplateField HeaderText="Email" >
             <ItemTemplate><asp:Label ID="email" runat ="server" Text ='<%#Eval("email") %>'></asp:Label>
             </ItemTemplate>   
             
             <EditItemTemplate >  
             <asp:TextBox ID="email_box" runat ="server" Text ='<%#Eval("email") %>'></asp:TextBox>  
             </EditItemTemplate> 
             </asp:TemplateField>  

                <asp:TemplateField HeaderText="password" >
             <ItemTemplate><asp:Label ID="password" runat ="server" Text ='<%#Eval("password") %>'></asp:Label>
             </ItemTemplate>   
             
             <EditItemTemplate >  
             <asp:TextBox ID="pasword_box" runat ="server" Text ='<%#Eval("password") %>'></asp:TextBox>  
             </EditItemTemplate> 
             </asp:TemplateField> 
             
              

             
             
 

                
                
                
             
                    <asp:CommandField ShowDeleteButton="True" />

       
           
        </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" HorizontalAlign="Center" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

        
        
        
        </asp:GridView>
      </div>
    </form>
  
    
    
</body>
</html>




