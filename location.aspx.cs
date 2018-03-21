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
using System.Data.SqlClient;

public partial class location : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string cos;

        cos = (string)Session["DropDownList2"];
     


        // Label1.Text= GridView1.Columns.
        string cosname;
        cosname = (string)Session["userid"];

        if (cosname == null)
        {
            //   FormsAuthentication.RedirectFromLoginPage();
            login_btn.Visible = true;
            sign_up_btn.Visible = true;
            logout_btn.Visible = false;

        }
        else
        {
            login_btn.Visible = false;
            sign_up_btn.Visible = false;
            logout_btn.Visible = true;
        }



    }







    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void logout_btn_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
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
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
    }
}
