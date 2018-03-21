using System;
using System.Collections;
using System.Configuration;
using System.IO;
using System.Net;
using System.Text;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    public static string GetResponse(string sURL)
    {
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(sURL);
        request.MaximumAutomaticRedirections = 4;
        request.Credentials = CredentialCache.DefaultCredentials;
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream receiveStream = response.GetResponseStream();
        StreamReader readStream = new StreamReader(receiveStream, Encoding.UTF8);
        string sResponse = readStream.ReadToEnd();
        response.Close();
        readStream.Close();
        return sResponse;
    }

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
       

        cosname = (string)Session["userid"];
        Label13.Text = cosname;

        connect();
        cmd.CommandText = "Select * from signup where userid='" + cosname +  "'";
        SqlDataReader buff = cmd.ExecuteReader();
        buff.Read();
        if (buff.HasRows == true)
        {

              

            city.Text = buff[3].ToString();
            state.Text = buff[2].ToString();
            email.Text = buff[5].ToString();
            Label16.Text = buff[4].ToString();

            buff.Close();
            disconnect();


        }
        else
        {
         

        }

       
      

         
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("home.aspx");
        

    }
    protected void btn_submit_Click(object sender, ImageClickEventArgs e)
    {
        string cosname;

        cosname = (string)Session["userid"];
       

        try
        {

            string path = Server.MapPath("images/");
            if (FileUpload1.HasFile && FileUpload2.HasFile)
            {

                string ext = Path.GetExtension(FileUpload1.FileName);

                if (ext == ".jpg" || ext == ".png" || ext == ".jpeg")
                {

                    string sUserID = "satishkarwar";
                    string sPwd = "password123";
                    string sNumber = "91" + Label16.Text;
                    string sSID = "websms";
                    string sMessage = "hello " + cosname + ",\nYou Have Been Sucessfully Posted Your Ad. \nYour Details : \n category-" + listbox_category.Text + "\n State-" + state.Text + "\n City-" + city.Text + "\n Email-" + email.Text + "\n Price-" + txtbox_price.Text + " \n Thank You Visiting www.scraps.in";
                    string sURL = "http://smslane.com/vendorsms/pushsms.aspx?user=" + sUserID + "&password=" +
                         sPwd + "&msisdn=" + sNumber + "&sid=" + sSID + "&msg=" + sMessage + "&mt=0&fl=0";
                    string sResponse = GetResponse(sURL);


                    connect();
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name1 = "~/images/" + FileUpload1.FileName;
                    FileUpload2.SaveAs(path + FileUpload2.FileName);
                    string name2 = "~/images/" + FileUpload2.FileName;




                    cmd.CommandText = "insert into post_ads(userid,username,category,phoneno,address,city,state,email,photo1,photo2,price)values(?,?,?,?,?,?,?,?,?,?,?)";
                    // cmd.Parameters.AddWithValue("sr_no", Label13.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("userid", Label13.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("username", txtbox_username.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("category", listbox_category.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("phoneno", Label16.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("address", txtbox_address.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("city", city.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("state", state.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("email", email.Text.ToString().Trim());
                    cmd.Parameters.AddWithValue("photo1", name1.ToString());
                    cmd.Parameters.AddWithValue("photo2", name2.ToString());
                    cmd.Parameters.AddWithValue("price", txtbox_price.Text.ToString().Trim());

                    cmd.ExecuteNonQuery();
                    disconnect();
                     Response.Redirect("home.aspx");
                     


                }


                else
                {
                    Label10.Text = "can upload only jpg and png";
                }
            }
            else
            {
                Label10.Text = "select both images";

            }

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error In Internet Connection. Please Try Again!!!')</script>");
        }

               
          

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Clear();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        
            Response.Redirect("postads.aspx");
       
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {

     
            Response.Redirect("Feedback.aspx");
      
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("category.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
       
            Response.Redirect("my_posts.aspx");
       
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("about_page.aspx");
    }
    protected void logout_btn_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void listbox_category_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtbox_address_TextChanged(object sender, EventArgs e)
    {


    }
    protected void btn_refresh_Click(object sender, ImageClickEventArgs e)
    {
        txtbox_username.Text = "";
        txtbox_price.Text = "";
        txtbox_address.Text = "";
        
            
    }
    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
    }
}