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

public partial class _Default : System.Web.UI.Page
{

    string otp = string.Empty;
    OleDbConnection cn = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();

    void connect()
    {
        cn.ConnectionString = "Provider=SQLOLEDB; Data Source = (local); Initial Catalog = scraps; Integrated Security=SSPI";
        cmd.Connection = cn;
        cn.Open();
    }

    void disconnect()
    {

        cmd.Parameters.Clear();
        cn.Close();
    }
    void generate()
    {
        string numbers = "1234567890";
        string characters = numbers;
        int length = 8;
        for (int i = 0; i < length; i++)
        {
            string character = string.Empty;
            do
            {
                int index = new Random().Next(0, characters.Length);
                character = characters.ToCharArray()[index].ToString();
            } while (otp.IndexOf(character) != -1);
            otp += character;
        }
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    HttpContext.Current.Response.Cache.SetNoServerCaching();
        //    HttpContext.Current.Response.Cache.SetNoStore();

        //     Response.Redirect("pass_rec.aspx");

        //}
    }
    protected void btn_check_Click(object sender, EventArgs e)
    {

        connect();
        cmd.CommandText = "select userid from signup where userid='" + txt_id.Text + "'";
        OleDbDataReader buff = cmd.ExecuteReader();
        buff.Read();
        if (buff.HasRows != false)
        {
            option_panel.Visible = true;
            userid_panel.Visible = false;
            Session["uidsession"] = buff[0].ToString();
            return;
        }
        else
        {
            Response.Write("<script>alert('User ID is not matching with any')</script>");
        }
    }
    protected void btn_email_Click(object sender, EventArgs e)
    {
        string emailid = "";
        connect();
        cmd.CommandText = "select email from signup where userid='" + txt_id.Text + "'";
        OleDbDataReader buff = cmd.ExecuteReader();
        buff.Read();
        if (buff.HasRows != false)
        {
            emailid = buff[0].ToString();
        }
        if (emailid == txt_mail.Text)
        {
            generate();
            string toAddress = txt_mail.Text.Trim();
            string subject = "Password Recovery from Scraps.in";
            string body = "Your OTP for Password recovery is = " + otp + " Do not share with anyone";
            string r = SendEmail(toAddress, subject, body);
            Response.Write("<script>alert('OTP is sent please cheak your Inbox...!!!')</script>");
            OTP_panel.Visible = true;
            email_panel.Visible = false;
            Session["otpsession"] = otp.ToString();
        }
        else
        {
            Response.Write("<script>alert('Email ID is not matching...!!!')</script>");
        }
    }
    protected void btn_sms_Click(object sender, EventArgs e)
    {
        string mob = "";
        connect();
        cmd.CommandText = "select phoneno from signup where userid='" + txt_id.Text + "'";
        OleDbDataReader buff = cmd.ExecuteReader();
        buff.Read();
        if (buff.HasRows != false)
        {
            mob = buff[0].ToString();
            //return;
        }
        if (mob == txt_mob.Text)
        {

            generate();

            string sUserID = "satishkarwar";
            string sPwd = "password123";
            string sNumber = "91" + txt_mob.Text;
            string sSID = "websms";
            string sMessage = "Your OTP for password recovery is " + otp.ToString() + " Do not share!!. Scraps.in";
            string sURL = "http://smslane.com/vendorsms/pushsms.aspx?user=" + sUserID + "&password=" +
                 sPwd + "&msisdn=" + sNumber + "&sid=" + sSID + "&msg=" + sMessage + "&mt=0&fl=0";
            string sResponse = GetResponse(sURL);
            Session["otpsession"] = otp.ToString();

            OTP_panel.Visible = true;
            mobileno_pael.Visible = false;
            //lbl_result.Text = sResponse;

        }
        else
        {
            Response.Write("<script>alert('Mobile number is not matching...!!!')</script>");
        }
    }
    protected void btn_otpemail_Click(object sender, EventArgs e)
    {
        userid_panel.Visible = false;
        email_panel.Visible = true;
        mobileno_pael.Visible = false;
        option_panel.Visible = false;
    }
    protected void btn_otpsms_Click(object sender, EventArgs e)
    {
        userid_panel.Visible = false;
        mobileno_pael.Visible = true;
        email_panel.Visible = false;
        option_panel.Visible = false;
        
    }
    protected void btn_otpsubmit_Click(object sender, EventArgs e)
    {
        if (txt_otp.Text == Session["otpsession"].ToString())
        {
            changepassword_panel.Visible = true;
            OTP_panel.Visible = false;


        }
        else
        {
            Response.Write("<script>alert('OTP is wrong...!!! Please try Again...!!!')</script>");
            OTP_panel.Visible = false;
            email_panel.Visible = true;
            txt_mail.Text = "";
            txt_otp.Text = "";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txt_newpass.Text != txt_confirmpass.Text)
        {
            lbl_result.Text = "Confirmation Password doesnot match!!!";
            return;
        }

        connect();
        cmd.CommandText = "update signup set password=? where userid='" + Session["uidsession"].ToString() + "'";
        cmd.Parameters.AddWithValue("password", txt_newpass.Text);
        cmd.ExecuteNonQuery();
        disconnect();

        lbl_result.Text = "Your Password is changed!!!";

        Response.Redirect("login.aspx");

    }


    protected string SendEmail(string toAddress, string subject, string body)
    {
        string result = "Message Sent Successfully..!!";
        string senderID = "shashinaik08@gmail.com";// use sender’s email id here..
        const string senderPassword = "8095927131"; // sender password here…
        //try
        //{
        SmtpClient smtp = new SmtpClient
        {
            Host = "smtp.gmail.com", // smtp server address here…
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            // UseDefaultCredentials = true,
            Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
            Timeout = 50000,
        };
        MailMessage message = new MailMessage(senderID, toAddress, subject, body);
        smtp.Send(message);
        //}
        //catch (Exception ex)
        //{
        result = "Mail Sent";
        return result;
    }

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
}
