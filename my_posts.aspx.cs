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

public partial class my_posts : System.Web.UI.Page
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

    public void bind()
    {
        connect();
        OleDbDataAdapter da = new OleDbDataAdapter("select * from post_ads", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "emp");
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
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
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
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

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connect();
      //  cmd.CommandText = "delete * from post_ads where sr_no='" +la+"'";
        Response.Redirect("my_posts.aspx");
        //OleDbDataReader buff = cmd.ExecuteReader();
        //buff.Read();
        //if (buff.HasRows == true)
        //{



        //    Session["userid"] = buff[0].ToString();
        //    // Response.Redirect("postads.aspx");
        //    Response.Redirect("home.aspx");
        //    buff.Close();
        disconnect();
        //}
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {

       // Label sid = (Label)DataView.FindControl("userid");

        //DataRow = (DataRow)DataList1.r[e.RowIndex];
        //Label sid = (Label)row.FindControl("stockid");
        //connect();
        //OdbcCommand cmd = new OdbcCommand("delete  from stock where stock_id=" + sid.Text + "", cn);
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //bind();
        //int a = (int)DataList1.DataKeys[(int)e.Item.ItemIndex];
        ////      DataListItem row = (DataListItem)d.Rows[e.RowIndex];
        ////        Label sid = (Label)row.FindControl("stockid");
        
        //connect();
        //cmd.CommandText = "delete * from post_ads where sr_no='" ++"'";
        //      disconnect();
        //if(e.CommandArgument=="delete")
        //{
        //    this.DataList1.DeleteCommand;
        //    }


        //      Response.Redirect("postads.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
    }
}
