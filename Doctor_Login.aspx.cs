using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Doctor_Login : System.Web.UI.Page
{
    string constr = "Data Source=(localdb)\\ProjectsV13;" +
                "Initial Catalog=hospital;" +
                "Integrated Security=True;" +
                "Connect Timeout=30;Encrypt=False;" +
                "TrustServerCertificate=False;" +
                "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
                "User ID = sa; Password = 12345"; 

    string doc_id = "";
    string psd="",msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        TextBox_psd.Attributes["value"] = TextBox_psd.Text;
        Label1.Text = "";
        Session["url"] = "Doctor_Login";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write(TextBox_psd.Text);
       
     
        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string sql = "SELECT * FROM doctor WHERE doc_id='"+TextBox_id.Text+"'";
            //Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql,con);
            SqlDataReader data = cmd.ExecuteReader();
            data.Read();
            psd = data[2].ToString();
            con.Close();
            
        }
        catch (Exception a11)
        {
            msg = "查無此人";
        }
        if (msg != null)
        {
            Label1.Text = msg;
        }
        else
        {
            if (psd==TextBox_psd.Text)
            {
                //Response.Write("歡迎");
                Session["doc_id"] = TextBox_id.Text;
                Session["doc_psd"] = TextBox_psd.Text;
                Response.Redirect("Doctor_Page1.aspx");
            }
            else
            {
                //Response.Write("輸入錯誤");
                Label1.Text = "帳號密碼輸入錯誤";
            }
        }
        
        
       
    }
}