using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class First : System.Web.UI.Page
{
    string docId = "",re_time,branch;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("page"+Session["url"].ToString());
        if (!IsPostBack)
        {
            if (Session["url"] == null)
                Response.Redirect("index.aspx");

            if (Session["url"].ToString() == "First_Second" || Session["url"].ToString() == "Inquire_Cancel")
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        //Response.Write(Session["Branch"]);
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        //Label3.Text = Session["day"]
        string doc_id = docId =Session["doc_id"].ToString(); //醫生編號
        string daytemp = Session["daytemp"].ToString(); //簡略日期
        string reserve_time =re_time= Session["day_complete"].ToString(); //完整預約日期
        
        // --- 以下未知 ---//
        //string day = Session["day"].ToString();

        string constr = "";

        constr = "Data Source=(localdb)\\ProjectsV13;" +
                 "Initial Catalog=hospital;" +
                 "Integrated Security=True;" +
                 "Connect Timeout=30;Encrypt=False;" +
                 "TrustServerCertificate=False;" +
                 "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
                 "User ID = sa; Password = 12345";
        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            string sql3 = "SELECT COUNT(*) FROM reserve WHERE reserve_doc_id ='" + doc_id + "' and  reserve_time = '" + reserve_time + "' and state = '1'";
            //Response.Write(sql3);
            SqlCommand cmd = new SqlCommand(sql3);
            cmd.Connection = con;
            int number = int.Parse(cmd.ExecuteScalar().ToString()) + 1;
            Label4.Text = number.ToString();
            Session["RegisteredNumber"] = number.ToString();
            //Response.Write("number= " + number);
            Session["number"] = number.ToString();
            con.Close();
        }
        catch (Exception a6)
        {
            Response.Write(a6.ToString());
        }

        if (doc_id == "9001")
        {
            Label3.Text = "一般醫學科 許夢璇醫師";
        }
        else if (doc_id == "9002")
        {
            Label3.Text = "精神科 江卉玲醫師";
        }
        else if (doc_id == "9003")
        {
            Label3.Text = "一般醫學科 董葵庭醫師";
        }
        else if (doc_id == "9004")
        {
            Label3.Text = "精神科 吳沛權醫師";
        }
        Label7.Text = daytemp;
        branch = Label3.Text.Substring(0, 2);
        if (branch == "一般")
        {
            branch = "1";
        }
        else
        {
            branch = "2";
        }
    }

    
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["day"] = TextBox_day.Text;
        Session["patient_num"] = TextBox_id.Text;
        Session["url"] = "First";
        
        /*Response.Write("身分證號碼:"+TextBox_id.Text+"<br>");
        Response.Write("姓名:" + TextBox_Name.Text + "<br>");
        Response.Write("電話:" + TextBox_phone.Text + "<br>");
        Response.Write("地址:" + TextBox_address.Text + "<br>");
        Response.Write("生日:" + TextBox_day.Text + "<br>");
        Response.Write("聯絡人:" + TextBox_contact.Text + "<br>");
        Response.Write("聯絡人電話:" + TextBox_contact_phone.Text + "<br>");
        Response.Write("重大疾病:" + TextBox_item1.Text + "<br>");
        Response.Write("藥物過敏:" + TextBox_item2.Text + "<br>");*/

        string constr = "";
        constr = "Data Source=(localdb)\\ProjectsV13;" +
                  "Initial Catalog=hospital;" +
                  "Integrated Security=True;" +
                  "Connect Timeout=30;Encrypt=False;" +
                  "TrustServerCertificate=False;" +
                  "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
                  "User ID = sa; Password = 12345";
        try
        {
            SqlConnection con = new SqlConnection(constr);
            //con.Open();
            con.Open();
            string sql = "select count(*) from patient where Patient_num ='" + TextBox_id.Text + "'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            string count = cmd.ExecuteScalar().ToString();
            con.Close();
            con.Open();
            cmd = new SqlCommand("select count(*) from patient",con);
            int reserve_id = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            reserve_id += 1;
            con.Open();
            //Response.Write(count);
            if (count == "0")
            {
                string sql2 = "INSERT INTO patient VALUES("+reserve_id+",'"+TextBox_id.Text+"', N'"+TextBox_Name.Text+"', '"+TextBox_day.Text+"', N'"+TextBox_address.Text+"', '"+TextBox_phone.Text+"', " +
                              "N'"+TextBox_item1.Text+"',N'"+TextBox_item2.Text+"', N'"+TextBox_contact.Text+"', '"+TextBox_contact_phone.Text+ "')";
                using (cmd = new SqlCommand(sql2))
                {
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }
                Session["url"] = "First";
                con.Close();
                con.Open();
                cmd = new SqlCommand("insert into reserve values('"+ docId+"','"+ TextBox_id.Text +"','"+ re_time+ "','0',0,'"+ branch+"');",con );
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('掛號成功');location.href='./Insertinto.aspx';</script>");
            }
            else
            {
                Label5.Text="資料已存在";
                TextBox_id.Text = "";
                TextBox_Name.Text = "";
                TextBox_phone.Text = "";
                TextBox_address.Text = "";
                TextBox_day.Text = "";
                TextBox_contact.Text = "";
                TextBox_contact_phone.Text = "";
                TextBox_item1.Text = "";
                TextBox_item2.Text = "";
                //Response.Write("資料已存在");
            }
        }
        catch (Exception a7)
        {
            Response.Write( a7.Message);
        }

        //~/Inquire_Cancel.aspx
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["url"] = "First";
        Response.Redirect("First_Second.aspx");
    }
}