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

public partial class Signup : System.Web.UI.Page
{

    OleDbConnection cn = new OleDbConnection();
    OleDbCommand cmd = new OleDbCommand();


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


        if (!IsPostBack)
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
    }

    protected void btn_submit_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            string sUserID = "satishkarwar";
            string sPwd = "password123";
            string sNumber = "91" + txtbox_ph_no.Text;
            string sSID = "websms";
            string sMessage = "hello " + txtbox_userid.Text + " You Have Been Sucessfully signup. Now you can post your ad's free of cost ";
            string sURL = "http://smslane.com/vendorsms/pushsms.aspx?user=" + sUserID + "&password=" +
                 sPwd + "&msisdn=" + sNumber + "&sid=" + sSID + "&msg=" + sMessage + "&mt=0&fl=0";
            string sResponse = GetResponse(sURL);
           


            connect();
            cmd.CommandText = "insert into signup(userid,username,state,city,phoneno,email,password)values(?,?,?,?,?,?,?)";
            cmd.Parameters.AddWithValue("userid", txtbox_userid.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("username", txtbox_username.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("state", listbox_state.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("city", listbox_city.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("phoneno", txtbox_ph_no.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("email", txtbox_email.Text.ToString().Trim());

            cmd.Parameters.AddWithValue("password", txtbox_password.Text.ToString().Trim());
            cmd.ExecuteNonQuery();
            disconnect();
            Response.Write("<script>alert('Signup Succesful. Please Login !!!')</script>");

            Response.Redirect("login.aspx", false);
       
            
        }

            catch (Exception ex)
        {
            Response.Write("<script>alert('Internet connection error!!!')</script>");
          
            txtbox_userid.Text = "";
        } 
            
        
        
    }

    protected void txtbox_username_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("about_page.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
    protected void btn_refresh_Click(object sender, ImageClickEventArgs e)
    {
        txtbox_userid.Text = "";
        txtbox_username.Text = "";
        txtbox_ph_no.Text = "";
        txtbox_email.Text = "@";
      
        txtbox_password.Text = "";
        txtbox_confirm_password.Text = "";
      
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
      
            Response.Redirect("my_posts.aspx");
     

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
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        
            Response.Redirect("Feedback.aspx");
        
    }
    protected void logout_btn_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("home.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void listbox_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        listbox_city.Items.Clear();

        listbox_city.Enabled = true;

        if (listbox_state.SelectedIndex == 1)
        {

            listbox_city.Items.Add("ITANAGAR");
            listbox_city.Items.Add("TAWANG");
            listbox_city.Items.Add("BHISMAKNAGAR");
            listbox_city.Items.Add("MALINITHAN");
            listbox_city.Items.Add("BOMDILA");
            listbox_city.Items.Add("BHALUKPONG");
            listbox_city.Items.Add("AKSHIGANGA");
            listbox_city.Items.Add("ZIRO");
            listbox_city.Items.Add("PASIGHAT");
            listbox_city.Items.Add("BASAR");
            listbox_city.Items.Add("BOMDILA");
            listbox_city.Items.Add("BHALUKPOPNG");
        }


        if (listbox_state.SelectedIndex == 2)
        {
            listbox_city.Items.Add("GUWAHATI");
            listbox_city.Items.Add("SILCHAR");
            listbox_city.Items.Add("JORHAT");
            listbox_city.Items.Add("NAGAON");
            listbox_city.Items.Add("TINSUKIA");
            listbox_city.Items.Add("TEZPUR");
            listbox_city.Items.Add("BONGAIGAON");
            listbox_city.Items.Add("AKSHIGANGA");
            listbox_city.Items.Add("KARIMGANJ");
            listbox_city.Items.Add("DHUBRI");
            listbox_city.Items.Add("DIPHU");
            listbox_city.Items.Add("NORTH LAKHIMPUR");
            listbox_city.Items.Add("LUMDING");
            listbox_city.Items.Add("GOALPARA");
            listbox_city.Items.Add("SIBSAGAR");
        }



        if (listbox_state.SelectedIndex == 3)
        {
            listbox_city.Items.Add("PATNA");
            listbox_city.Items.Add("GAYA");
            listbox_city.Items.Add("BHAGALPUR");
            listbox_city.Items.Add("MUZAFFARPUR");
            listbox_city.Items.Add("BIHARSARIF");
            listbox_city.Items.Add("DARBHANGA");
            listbox_city.Items.Add("PURNIA");
        }


        if (listbox_state.SelectedIndex == 4)
        {
            listbox_city.Items.Add("RAIPUR");
            listbox_city.Items.Add("DURGBHILIA");
            listbox_city.Items.Add("BILASPUR");
            listbox_city.Items.Add("KORBA");
            listbox_city.Items.Add("RAJNANDGAON");
            listbox_city.Items.Add("RAIGARH");
            listbox_city.Items.Add("JAGDAIPUR");
            listbox_city.Items.Add("AMBIKPUR");
            listbox_city.Items.Add("CHIRMINI");
            listbox_city.Items.Add("PAKHANJORE");
            listbox_city.Items.Add("DHAMTARI");
            listbox_city.Items.Add("MAHASAMUND");
        }


        if (listbox_state.SelectedIndex == 5)
        {
            listbox_city.Items.Add("PANAJI");
            listbox_city.Items.Add("CALANGUTE");
            listbox_city.Items.Add("VASCO DA GAMA");
            listbox_city.Items.Add("MARGAO");
            listbox_city.Items.Add("PONDA");
            listbox_city.Items.Add("MAPUCA");
            listbox_city.Items.Add("CURCHOREM");
            listbox_city.Items.Add("SANCOALE");
        }


        if (listbox_state.SelectedIndex == 6)
        {
            listbox_city.Items.Add("AHMEDABAD");
            listbox_city.Items.Add("SURAT");
            listbox_city.Items.Add("VAVADODARA");
            listbox_city.Items.Add("RAJKOT");
            listbox_city.Items.Add("BHAVNAGAR");
            listbox_city.Items.Add("JAMNAGAR");
            listbox_city.Items.Add("JUNAGADH");
            listbox_city.Items.Add("GANDHIDHAM");
            listbox_city.Items.Add("NADIAD");
            listbox_city.Items.Add("GANDHINAGAR");
            listbox_city.Items.Add("VAVADODARA");
            listbox_city.Items.Add("ANAND");
            listbox_city.Items.Add("MORBI");
            listbox_city.Items.Add("SURENDRANAGAR");
            listbox_city.Items.Add("BHARUCH");
            listbox_city.Items.Add("VAPI");
            listbox_city.Items.Add("NAVSARI");
            listbox_city.Items.Add("VERAVAL");
            listbox_city.Items.Add("PORBANDAR");
            listbox_city.Items.Add("GODHRA");
            listbox_city.Items.Add("BHUJ");
            listbox_city.Items.Add("ANKLESHVAR");
            listbox_city.Items.Add("BOTAD");
            listbox_city.Items.Add("PALANPUR");
            listbox_city.Items.Add("PATAN");
            listbox_city.Items.Add("DAHOD");
            listbox_city.Items.Add("RAJKOT");
            listbox_city.Items.Add("VALSAD");
            listbox_city.Items.Add("KALOL");
            listbox_city.Items.Add("AMRELI");
            listbox_city.Items.Add("MEHSANA");
        }



        if (listbox_state.SelectedIndex == 7)
        {
            listbox_city.Items.Add("AMBALA");
            listbox_city.Items.Add("BHIWANI");
            listbox_city.Items.Add("FARIDABAD");
            listbox_city.Items.Add("FATEHBAD");
            listbox_city.Items.Add("GURGAON");
            listbox_city.Items.Add("HISAR");
            listbox_city.Items.Add("JHAJJAR");
            listbox_city.Items.Add("JIND");
            listbox_city.Items.Add("KAITHAL");
            listbox_city.Items.Add("KARNAL");
            listbox_city.Items.Add("KURUKSHETRA");
            listbox_city.Items.Add("MAHENDRAGARH");
            listbox_city.Items.Add("MEWAT");
            listbox_city.Items.Add("PALWAL");
            listbox_city.Items.Add("PANCHKAUL");
            listbox_city.Items.Add("PANIPAT");
            listbox_city.Items.Add("REWARI");
            listbox_city.Items.Add("ROHTAK");
            listbox_city.Items.Add("SIRSA");
            listbox_city.Items.Add("SONIPAT");
            listbox_city.Items.Add("YAMUNANAGAR");
        }


        if (listbox_state.SelectedIndex == 8)
        {
            listbox_city.Items.Add("BILASPUR");
            listbox_city.Items.Add("CHAMBA");
            listbox_city.Items.Add("HARIMPUR");
            listbox_city.Items.Add("KANGRA");
            listbox_city.Items.Add("KINNAUR");
            listbox_city.Items.Add("KULLU");
            listbox_city.Items.Add("LAHAUL AND SPITI");
            listbox_city.Items.Add("MANDI");
            listbox_city.Items.Add("SHIMLA");
            listbox_city.Items.Add("SIRMAUR");
            listbox_city.Items.Add("SOLAN");
            listbox_city.Items.Add("UNA");
        }

        if (listbox_state.SelectedIndex == 9)
        {
            listbox_city.Items.Add("SRINAGAR");
            listbox_city.Items.Add("JAMMU");
            listbox_city.Items.Add("ANANTNAG");
            listbox_city.Items.Add("BARAMULLA");

        }


        if (listbox_state.SelectedIndex == 10)
        {
            listbox_city.Items.Add("JAMSHEDPUR");
            listbox_city.Items.Add("DHANBAD");
            listbox_city.Items.Add("RANCHI");
            listbox_city.Items.Add("BOKARO STEEL CITY");
            listbox_city.Items.Add("DEOGHAR");
            listbox_city.Items.Add("PHUSRO");
            listbox_city.Items.Add("HAZARIBAGH");
            listbox_city.Items.Add("GIRIDIH");
            listbox_city.Items.Add("RAMGARH");
            listbox_city.Items.Add("MEDININAGAR");
            listbox_city.Items.Add("CHIRKUNDA");
            listbox_city.Items.Add("UNA");
            listbox_city.Items.Add("DALTONGANJ");
        }

        if (listbox_state.SelectedIndex == 11)
        {
            listbox_city.Items.Add("BELGAUM");
            listbox_city.Items.Add("BAGALKOT");
            listbox_city.Items.Add("BIJAPUR");
            listbox_city.Items.Add("BIDAR");
            listbox_city.Items.Add("RAICHUR");
            listbox_city.Items.Add("GADAG");
            listbox_city.Items.Add("KOPPAL");
            listbox_city.Items.Add("HUBLI");
            listbox_city.Items.Add("DHARWAD");
            listbox_city.Items.Add("RANIBENNUR");
            listbox_city.Items.Add("BELLARY");
            listbox_city.Items.Add("DAVANAGERE");
            listbox_city.Items.Add("SHIMOGA");
            listbox_city.Items.Add("BHADRAVATI");
            listbox_city.Items.Add("UDUPI");
            listbox_city.Items.Add("MANGALORE");
            listbox_city.Items.Add("TUMKUR");
            listbox_city.Items.Add("BANGALORE");
            listbox_city.Items.Add("MANDYA");
            listbox_city.Items.Add("MYSORE");
            listbox_city.Items.Add("GULBARGA");
            listbox_city.Items.Add("KOLAR");
            listbox_city.Items.Add("ANKOLA");
            listbox_city.Items.Add("KARWAR");
            listbox_city.Items.Add("SIRSI");
            listbox_city.Items.Add("CHITRADURGA");
        }


        if (listbox_state.SelectedIndex == 12)
        {
            listbox_city.Items.Add("KOCHI");
            listbox_city.Items.Add("KOZHIKODE");
            listbox_city.Items.Add("THRISSUR");
            listbox_city.Items.Add("MALAPPURAM");
            listbox_city.Items.Add("THIRUVANANTHAPURAM");
            listbox_city.Items.Add("KANNUR");
            listbox_city.Items.Add("KOLLAM");
            listbox_city.Items.Add("CHERTHALA");
            listbox_city.Items.Add("KAYAMKULAM");
            listbox_city.Items.Add("KOTTAYAM");
            listbox_city.Items.Add("PALAKKAD");
            listbox_city.Items.Add("ALAPPUZA");
            listbox_city.Items.Add("OTTAPPALAM");
            listbox_city.Items.Add("KANHANGAD");
            listbox_city.Items.Add("KASARAGOD");
            listbox_city.Items.Add("CHANGANASSERY");
            listbox_city.Items.Add("CHALAKKUD");
            listbox_city.Items.Add("KOTHAMANGALAM");
        }

          if (listbox_state.SelectedIndex==13)
       {
           listbox_city.Items.Add("INDORE");
           listbox_city.Items.Add("BHOPAL");
           listbox_city.Items.Add("JABALPUR");
	   listbox_city.Items.Add("GWALIOR");
           listbox_city.Items.Add("UJJAIN");
           listbox_city.Items.Add("SAGAR");
	   listbox_city.Items.Add("DEWAS");
	   listbox_city.Items.Add("SATNA");
           listbox_city.Items.Add("RATLAM");
           listbox_city.Items.Add("REWA");
           listbox_city.Items.Add("MURWARA");
	   listbox_city.Items.Add("SINGRAULI");
  	   listbox_city.Items.Add("BURHANPUR");
	   listbox_city.Items.Add("KHANDWA");
           listbox_city.Items.Add("MORENA");
           listbox_city.Items.Add("BHIND");
	   listbox_city.Items.Add("CHHINDWARA");
           listbox_city.Items.Add("GUNA");
	   listbox_city.Items.Add("SHIVPURI");
           listbox_city.Items.Add("VIDISHA");
           listbox_city.Items.Add("DAMOH");
           listbox_city.Items.Add("CHHATARPUR");
	   listbox_city.Items.Add("MANDSAUR");
  	   listbox_city.Items.Add("KHARGONE");
	   listbox_city.Items.Add("NIMACH");
           
       }



      if (listbox_state.SelectedIndex==14)
       {
           listbox_city.Items.Add("MUMBAI");
           listbox_city.Items.Add("PUNE");
           listbox_city.Items.Add("NAGPUR");
	   listbox_city.Items.Add("THANE");
           listbox_city.Items.Add("NASHIK");
           listbox_city.Items.Add("KALYAN DOMBIVALI");
	   listbox_city.Items.Add("VASAI-VIRA");
	   listbox_city.Items.Add("AURANGABAD");
           listbox_city.Items.Add("NAVI MUMBAI");
           listbox_city.Items.Add("SOLAPUR");
           listbox_city.Items.Add("KOLHAPUR");
	   listbox_city.Items.Add("PARBHANI");
  	   listbox_city.Items.Add("BURHANPUR");
	   listbox_city.Items.Add("KHANDWA");
           listbox_city.Items.Add("MALEGAON");
           listbox_city.Items.Add("DHULE");
	   listbox_city.Items.Add("AHMEDNAGAR");
           listbox_city.Items.Add("CHANDRAPUR");
	   listbox_city.Items.Add("SHIVPURI");
           listbox_city.Items.Add("NANDED");
           listbox_city.Items.Add("JALGAON");
           listbox_city.Items.Add("AKOLA");
	   listbox_city.Items.Add("LATUR");
  	   listbox_city.Items.Add("PIMPRI CHINCHWAD");
           
       }


       if (listbox_state.SelectedIndex==15)
       {
           listbox_city.Items.Add("BISHNUPUR");
           listbox_city.Items.Add("CHURACHANDPUR");
           listbox_city.Items.Add("CHANDEL");
	   listbox_city.Items.Add("IMPHAL-EAST");
           listbox_city.Items.Add("SENAPATI");
           listbox_city.Items.Add("TAMENGLONG");
	   listbox_city.Items.Add("THOUBAL");
	   listbox_city.Items.Add("UKHRUL");
           listbox_city.Items.Add("IMPHAL WEST");
           
       }


       if (listbox_state.SelectedIndex==16)
       {
           listbox_city.Items.Add("SHILLONG");
           listbox_city.Items.Add("JOWAI");
           listbox_city.Items.Add("NONGSTOIN");
	   listbox_city.Items.Add("TURA");
           listbox_city.Items.Add("WILLIAM NAGAR");
           listbox_city.Items.Add("ADUGI");
	   listbox_city.Items.Add("BAJENDOBA");
	   listbox_city.Items.Add("BANGSI");
           listbox_city.Items.Add("BAGHAMARA");
	   listbox_city.Items.Add("BORPANI");
	   listbox_city.Items.Add("BISHWARPUR");
	   listbox_city.Items.Add("CHERAPUNJI");
           listbox_city.Items.Add("DARUGIRIS");
             
       }


	
       if (listbox_state.SelectedIndex==17)
       {
           listbox_city.Items.Add("AIZAWL");
           listbox_city.Items.Add("KOLASIB");
           listbox_city.Items.Add("LAWNGTLAI");
	   listbox_city.Items.Add("LUNGLEI");
           listbox_city.Items.Add("MAMIT");
           listbox_city.Items.Add("SIAHA");
	   listbox_city.Items.Add("SERCHHIP");
	   listbox_city.Items.Add("CHAMPHAI");
             
       }


       if (listbox_state.SelectedIndex==18)
       {
           listbox_city.Items.Add("DIMAPUR");
           listbox_city.Items.Add("KIPHIRE");
           listbox_city.Items.Add("KOHIMA");
	   listbox_city.Items.Add("LONGLENG");
           listbox_city.Items.Add("MOKOKCHUNG");
           listbox_city.Items.Add("MON");
	   listbox_city.Items.Add("PEREN");
	   listbox_city.Items.Add("PHEK");
	   listbox_city.Items.Add("TUENSANG");
	   listbox_city.Items.Add("GREATER WOKHA");
	   listbox_city.Items.Add("ZUNHEBOTO");     
             
       }


       if (listbox_state.SelectedIndex==19)
       {
           listbox_city.Items.Add("BHUBANESHWAR");
           listbox_city.Items.Add("CUTTACK");
           listbox_city.Items.Add("ROURKELA");
	    listbox_city.Items.Add("BRAHMAPUR");
       listbox_city.Items.Add("SAMBALPUR");
           listbox_city.Items.Add("PURI");
	   listbox_city.Items.Add("BALASORE");
	   listbox_city.Items.Add("BHADRAK");
	   listbox_city.Items.Add("BARIPADA");
	   listbox_city.Items.Add("JHARSUGUDA");
	   listbox_city.Items.Add("JEYPORE");     
             
       }



       if (listbox_state.SelectedIndex==20)
       {
           listbox_city.Items.Add("LUDHIANA");
           listbox_city.Items.Add("AMRITSAR");
           listbox_city.Items.Add("JALANDHAR");
	   listbox_city.Items.Add("PATIALA");
           listbox_city.Items.Add("BATHINDA");
           listbox_city.Items.Add("HOSHIAPUR");
	   listbox_city.Items.Add("ABOHAR");
	   listbox_city.Items.Add("KHANNA");
	   listbox_city.Items.Add("MUKTSAR");
	   listbox_city.Items.Add("BARNALA");
	   listbox_city.Items.Add("RAIPURA"); 
	   listbox_city.Items.Add("KAPURTHALA");     
             
       }

       if (listbox_state.SelectedIndex==21)
       {
           listbox_city.Items.Add("JAIPUR");
           listbox_city.Items.Add("KOTA");
           listbox_city.Items.Add("JODHPUR");
	   listbox_city.Items.Add("JAISALMER");
           listbox_city.Items.Add("AJMER");
           listbox_city.Items.Add("UDAIPUR");
	   listbox_city.Items.Add("BIKANER");
	   listbox_city.Items.Add("ALWAR");
	   listbox_city.Items.Add("AMER");
	   listbox_city.Items.Add("BARMER");
	   listbox_city.Items.Add("BHARATPUR"); 
	   listbox_city.Items.Add("PALI"); 
	   listbox_city.Items.Add("SIKAR"); 
	   listbox_city.Items.Add("NAGAUR");     
                 
       }

       if (listbox_state.SelectedIndex==22)
       {
           listbox_city.Items.Add("GANGTOK");
           listbox_city.Items.Add("YUKSOM");
           listbox_city.Items.Add("GEYZING");
	   listbox_city.Items.Add("NAMCHI");
           listbox_city.Items.Add("MANGAN");
           
       }


       if (listbox_state.SelectedIndex==23)
       {
           listbox_city.Items.Add("CHENNAI");
           listbox_city.Items.Add("COIMBATORE");
           listbox_city.Items.Add("MADURAI");
	   listbox_city.Items.Add("TIRUCHIRAPPALLI");
           listbox_city.Items.Add("TIRUPPUR");
           listbox_city.Items.Add("SALEM");
           listbox_city.Items.Add("ERODE");
           listbox_city.Items.Add("TIRUNELVELI");
	   listbox_city.Items.Add("VELLORE");
           listbox_city.Items.Add("THOOTHUKKUDI");
           listbox_city.Items.Add("DINDIGUL");
           listbox_city.Items.Add("THANJAVUR");
           listbox_city.Items.Add("RANIPPETTAI");
	   listbox_city.Items.Add("SIVAKASI");
           listbox_city.Items.Add("KARUR");
           listbox_city.Items.Add("UDHAGAMANDALAM(OOTY)");
           listbox_city.Items.Add("HOSUR");
           listbox_city.Items.Add("NAGERCOIL");
	   listbox_city.Items.Add("KANCHIPURAM");
           listbox_city.Items.Add("KUMARAPALAYAM");
	   listbox_city.Items.Add("KARAIKUDI");
           listbox_city.Items.Add("NEYVELI");
           listbox_city.Items.Add("CUDDALORE");
	   listbox_city.Items.Add("KUMBAKONAM");
           listbox_city.Items.Add("TIRUVANNAMALAI");
           
           
       }

          

       if (listbox_state.SelectedIndex==24)
       {
           listbox_city.Items.Add("HYDREBAD");
           listbox_city.Items.Add("WARANGAL");
           listbox_city.Items.Add("NIZAMABAD");
	       listbox_city.Items.Add("KARIMNAGAR");
           listbox_city.Items.Add("RAMAGUNDAM");
           listbox_city.Items.Add("KHAMMAM");
	       listbox_city.Items.Add("MAHBUBNAGAR");
	       listbox_city.Items.Add("NALGONDA");
	       listbox_city.Items.Add("ADILABAD");
	   listbox_city.Items.Add("SIDDIPET");
	   listbox_city.Items.Add("SURYAPET"); 
	   listbox_city.Items.Add("MIRYALAGUDA"); 
	       
       }


       if (listbox_state.SelectedIndex==25)
       {
           listbox_city.Items.Add("AGARTAL");
           listbox_city.Items.Add("AMARPUR");
           listbox_city.Items.Add("BELONIA");
	   listbox_city.Items.Add("DHARMNAGAR");
       listbox_city.Items.Add("KAILASAHAR");
       listbox_city.Items.Add("KAMALPUR");
	   listbox_city.Items.Add("KHOWAI");
	   listbox_city.Items.Add("KUMARGHAT");
	   listbox_city.Items.Add("RANIRBAZAR");
	   listbox_city.Items.Add("SABROOM");
	   listbox_city.Items.Add("SONAMURA"); 
	   listbox_city.Items.Add("TELIAMURA"); 
       listbox_city.Items.Add("UDAIPUR");
       listbox_city.Items.Add("BISHALGARH");
       listbox_city.Items.Add("SANTRIBAZAR");
	   listbox_city.Items.Add("AMBASSA");
       listbox_city.Items.Add("JIRANIA");
       listbox_city.Items.Add("MOHANPUR");
	   listbox_city.Items.Add("MELAGHAR");
	   listbox_city.Items.Add("PANISAGAR");
	       
       }



       if (listbox_state.SelectedIndex==26)
       {
       listbox_city.Items.Add("KANPUR");
       listbox_city.Items.Add("LUCKNOW");
       listbox_city.Items.Add("GHAZIABAD");
	   listbox_city.Items.Add("AGRA");
       listbox_city.Items.Add("VARANASI");
       listbox_city.Items.Add("MERRUT");
	   listbox_city.Items.Add("ALLAHABAD");
	   listbox_city.Items.Add("BAREILLY");
	   listbox_city.Items.Add("ALIGARH");
	   listbox_city.Items.Add("MORADABAD");
	   listbox_city.Items.Add("SAHARANPUR"); 
	   listbox_city.Items.Add("GORAKHPUR"); 
       listbox_city.Items.Add("NOIDA");
       listbox_city.Items.Add("FIROZABAD");
       listbox_city.Items.Add("JHANSI");
	   listbox_city.Items.Add("MUZAFFARNAGAR");
       listbox_city.Items.Add("MATHURA");
       listbox_city.Items.Add("RAMPUR");
	   listbox_city.Items.Add("SHAHJAHANPUR");
	   listbox_city.Items.Add("FARRUKHABAD");
	   listbox_city.Items.Add("MAUNATH BHANJAN");
       listbox_city.Items.Add("HAPUR");
       listbox_city.Items.Add("FAIZABAD");
	   listbox_city.Items.Add("ETAWAH");
	   listbox_city.Items.Add("MIRZAPUR");
	}




       if (listbox_state.SelectedIndex==27)
       {
           listbox_city.Items.Add("DEHRADUN");
           listbox_city.Items.Add("HARIDWAR");
           listbox_city.Items.Add("ROORKEE");
	       listbox_city.Items.Add("NAINITAL");
           listbox_city.Items.Add("RUDRAPUR");
           listbox_city.Items.Add("KASHIPUR");
	       listbox_city.Items.Add("RISHIKESH");

	}




       if (listbox_state.SelectedIndex==28)
       {
           listbox_city.Items.Add("KOLKATTA");
           listbox_city.Items.Add("HALDIAN");
           listbox_city.Items.Add("MEDINIPUR");
	       listbox_city.Items.Add("BANKURA");
           listbox_city.Items.Add("BANGAON");
           listbox_city.Items.Add("HOWRAH");
	       listbox_city.Items.Add("DARJEELING");
	       listbox_city.Items.Add("BARDHAMAN");
           listbox_city.Items.Add("DURGAPUR");
	       listbox_city.Items.Add("MALDA");

	}
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DropDownList1.DataTextField = "abc";
        //DropDownList1.DataBind();
        //DropDownList1.Items.Insert(0, "1234");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("loc_sort.aspx");
    }
}
