using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Data.OleDb;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class viewstock : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();


    void connect()
    {
        cn.ConnectionString = "Server=DESKTOP-6KEV15I\\MSSQL;  Initial Catalog=Scraps; Integrated Security=SSPI";
        cmd.Connection = cn;
        cn.Open();
    }

    void disconnect()
    {
        cmd.Parameters.Clear();
        cn.Close();
    }
    public void bind()
    {
        connect();
        SqlDataAdapter da = new SqlDataAdapter("select * from signup", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "signup");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        cn.Close();
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        string cosname = "";
        cosname = (string)Session["username"];

       // Button2.Visible = false;
      
        if (!IsPostBack)
        {
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();

            if (cosname == null)
            {
             //   Response.Redirect("login.aspx");
                //Label2.Visible = false;
                //Label7.Visible = false;end
                //Label1.Visible = false;
                //Button2.Visible = true;
                //Button1.Visible = false;
                //GridView1.Visible = false;


            }
        
            bind();
            //GridView1.EditIndex = 0;
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label sid = (Label)row.FindControl("userid");
        connect();
        SqlCommand cmd = new  SqlCommand ("delete  from signup where userid='" + sid.Text + "'", cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        bind();  

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind(); 
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;

        bind();  
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

        Label lbl = (Label)row.FindControl("userid");

        TextBox textcity = (TextBox)row.FindControl("city_box");

       TextBox textstate = (TextBox)row.FindControl("state_box");

       TextBox textusername = (TextBox)row.FindControl("username_box");

       TextBox textphone = (TextBox)row.FindControl("phoneno_box");

       TextBox textemail = (TextBox)row.FindControl("email_box");

       TextBox textpassword = (TextBox)row.FindControl("pasword_box");

        GridView1.EditIndex = -1;

        if (textpassword.Text == "")
        {
            Response.Write("<script>alert('Please Specify Stock Name')</script>");
            return;
        }

        connect();
        SqlCommand cmd = new SqlCommand("update  signup set city='" + textcity.Text + "', state='" + textstate.Text + "',username='" + textusername.Text + "',phoneno='" + textphone.Text + "',email='" + textemail.Text + "',password='" + textpassword.Text + "' where userid='" + lbl.Text + "'", cn);
        cmd.ExecuteNonQuery();

        cn.Close();

        bind();  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session.RemoveAll();
        Response.Redirect("admin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Session.RemoveAll();
        //Response.Redirect("adminstrator.aspx");
    }
}
