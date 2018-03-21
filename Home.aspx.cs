using System;
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
using System.Collections;
using System.IO;

public partial class _Default : System.Web.UI.Page 
{
    int sr_number; 

   //void  binddatalist()
   //     {
   //     DirectoryInfo dir = new DirectoryInfo(MapPath("images"));
   //     FileInfo files=dir.GetFiles();
   //     ArrayList listitems=new ArrayList();
   //     foreach(FileInfo info in files)
   //     {
   //         DataList1.DataSource=listitems;
   //         DataList1.DataBind();
   //     }
        //}
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack == true)
        {
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();
        }
        else
        {
        }

        string cosname;
        cosname = (string)Session["userid"];

        if (cosname == null)
        {
            //   FormsAuthentication.RedirectFromLoginPage();
            //login_btn.Visible = true;
            sign_up_btn.Visible = true;
            logout_btn.Visible = false;

        }
        else
        {
            //login_btn.Visible = false;
            sign_up_btn.Visible = false;
            logout_btn.Visible = true;
        }
        
    }


        
                    // connect();
                    //cmd.CommandText = "Select image_1 from upload where image_id='gggg' ";
                    // OleDbDataReader buff = cmd.ExecuteReader();
                    // buff.Read();
                    // if (buff.HasRows == true)
                    // {

                    //     string a = buff[0].ToString();
                    //     imgupld.ImageUrl = a.ToString();
                    //     buff.Close();
                    //     disconnect();
                         
                    // }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {

        
            Response.Redirect("Feedback.aspx");
       
      
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("postads.aspx");
     
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     //FormsAuthentication.SignOut();
     //  Session.Abandon();
     //  Roles.DeleteCookie();
     // Session.Clear();
        Session.RemoveAll();
      //  Session.Clear();
        //string cosname = "";
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {


            Response.Redirect("my_posts.aspx");
       
    }
    
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("category.aspx");
    }
    protected void logout_btn_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("about_page.aspx");
    }
   
    protected void login_btn_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
   /* protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }*/
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
    }
   /* protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }*/
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
      
        
    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        
    }


    protected void Button1_Click3(object sender, EventArgs e)
    {

    }
    protected void Button10_Click(object sender, EventArgs e)
    {

    }
   
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "myCommand":
                // more code could go here

                Label myLabel = (Label)e.Item.FindControl("sr_no");
                sr_number = int.Parse(myLabel.Text);

                // more code could go here
                break;
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
