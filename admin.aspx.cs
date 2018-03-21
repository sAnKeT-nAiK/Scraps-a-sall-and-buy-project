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

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_signup.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_post_ads.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_feedback.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
}
