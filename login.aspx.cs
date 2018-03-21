using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    void connect()
    {
        cn.ConnectionString = "Server=DESKTOP-6KEV15I\\MSSQL; Initial Catalog=Scraps; Integrated Security=SSPI";
        cmd.Connection = cn;
        cn.Open();
    }

    void disconnect()
    {

        cmd.Parameters.Clear();
        cn.Close();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
      
      
    }
    
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        if(txtbox_username.Text=="admin" && txtbox_password.Text=="admin")

        {
            Response.Redirect("admin.aspx");
        }
        else
        {
        
         connect();
        cmd.CommandText = "Select * from signup where userid='" + txtbox_username.Text + "' and password ='" + txtbox_password.Text + "'";
        SqlDataReader buff = cmd.ExecuteReader();
        buff.Read();
        if (buff.HasRows == true)
        {

            
            
            Session["userid"] = buff[0].ToString();
           // Response.Redirect("postads.aspx");
            Response.Redirect("home.aspx");
            buff.Close();
            disconnect();


        }
        else
        {
            Label3.Text = "Invalid Password And Userid...";

            txtbox_username.Text = "";
            txtbox_password.Text = "";
            

        }
            

        }
    }


    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("postads.aspx");
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void ImageButton6_Click1(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("category.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("Feedback.aspx");
       
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
      
            Response.Redirect("my_posts.aspx");
      
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("about_page.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("pass_rec.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
        
    }
}
