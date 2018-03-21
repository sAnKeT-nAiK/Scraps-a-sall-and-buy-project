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
    public void bind()
    {
        connect();
        SqlDataAdapter da = new SqlDataAdapter("select * from feedback", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "feedback");
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
        SqlCommand cmd = new SqlCommand("delete  from feedback where sr_no='" + sid.Text + "'", cn);
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

        TextBox textdis = (TextBox)row.FindControl("discription_box");

        TextBox textusername = (TextBox)row.FindControl("username_box");


        GridView1.EditIndex = -1;

        //if (textpassword.Text == "")
        //{
        //    Response.Write("<script>alert('Please Specify Stock Name')</script>");
        //    return;
        //}

        connect();
        SqlCommand cmd = new SqlCommand("update  feedback set email='" + textcity.Text + "',description='" + textdis.Text + "',username='" + textusername.Text + "' where sr_no='" + lbl.Text + "'", cn);
        cmd.ExecuteNonQuery();

        cn.Close();

        bind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}
