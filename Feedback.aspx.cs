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
using System.Xml.Linq;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{

    OleDbConnection cn = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();


    void connect()
    {
        cn.ConnectionString = "Provider=SQLOLEDB; Data Source = (local); Initial Catalog=Scraps; Integrated Security=SSPI";
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
        string cosname;
        cosname = (string)Session["userid"];


        if (cosname == null)
        {
            //   FormsAuthentication.RedirectFromLoginPage();
            Response.Redirect("login.aspx");
            return;

        }
        else
        {
           
        }
        

    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        //try
        //{
           
            connect();
            cmd.CommandText = "insert into feedback(username,email,description)values(?,?,?)";
            cmd.Parameters.AddWithValue("username",txtbox_username.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("email",txtbox_city.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("description", txtbox_description.Text.ToString().Trim());
            cmd.ExecuteNonQuery();
            disconnect();
            Label4.Text = "Sucessfully Posted...";

            Response.Redirect("Feedback.aspx");
        //}
        //catch( Exception ex)
        //{
        //    Label5.Text = "Invalid Values";
        //}
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx", false);
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void txtbox_description_TextChanged(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("category.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("postads.aspx");
     
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("my_posts.aspx");
       
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        
            Response.Redirect("Feedback.aspx");
      

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("about_page.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        txtbox_username.Text = "";
        txtbox_city.Text = "";
        txtbox_description.Text = "";
    }
    protected void txtbox_city_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
    }
}
