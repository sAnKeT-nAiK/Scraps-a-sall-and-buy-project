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

public partial class category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["category"] ="bike";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "bike";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "car";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "bicycle";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "mobile";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "books";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "pets";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "toys";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "scraps bike";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "sports items";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "scraps car";
        Response.Redirect("category_sorted.aspx");
    }
    protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "scraps mobile";
        Response.Redirect("category_sorted.aspx");
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
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
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
    protected void login_btn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void sign_up_btn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
    }
    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {
        Session["category"] = "others";
        Response.Redirect("category_sorted.aspx");
    }
}
