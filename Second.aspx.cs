using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Second : System.Web.UI.Page
{
    string doc_Id,re_time;
    protected void Page_Load(object sender, EventArgs e)
    {
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
        Label4.Text = "";
        string doc_id = doc_Id=Session["doc_id"].ToString(); //醫師編號
        string reserve_time = Session["day_complete"].ToString(); //完整預約日期
        string day = re_time= Session["daytemp"].ToString(); //簡略預約日期


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

            string sql3 = "select count(*) from reserve where reserve_doc_id ='" + doc_id + "' and  reserve_time = '" + reserve_time + "' and state = '1'";
            SqlCommand cmd = new SqlCommand(sql3);
            cmd.Connection = con;
            int number = int.Parse(cmd.ExecuteScalar().ToString()) + 1;
            Label2.Text = number.ToString();
            Session["RegisteredNumber"] = number.ToString();
            //Response.Write("number= " + number);
            Session["number"] = number.ToString();
            con.Close();
        }
        catch (Exception a8)
        {

        }
        if (doc_id == "9001")
        {
            Label1.Text = day + " 一般醫學科 許夢璇醫師";
        }
        else if (doc_id == "9002")
        {
            Label1.Text = day + " 精神科 江卉玲醫師";
        }
        else if (doc_id == "9003")
        {
            Label1.Text = day + " 一般醫學科 董葵庭醫師";
        }
        else if (doc_id == "9004")
        {
            Label1.Text = day + " 精神科 吳沛權醫師";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write(TextBox_id.Text);
        //Response.Write(TextBox_day.Text);

        // --- 例外的user id --- //
        Session["patient_num"] = TextBox_id.Text;
        Session["day"] = TextBox_day.Text;

        Session["url"] = "Second";
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
            //string sql = "select count(*) from `patient` where Patient_num ='" + TextBox_id.Text + "' and Patient_birthday ='"+TextBox_day.Text+"'";
            string sql = "select * from patient where Patient_num ='" + TextBox_id.Text + "' and Patient_birthday ='" + TextBox_day.Text + "'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            bool hasdata = false;
            using (var reader = cmd.ExecuteReader())
            {
                //Response.Write(reader.Read());
                if (reader.Read())
                {
                    //Response.Write(reader["Patient_id"].ToString());
                    Session["id"] = reader["Patient_id"];
                    Session["url"] = "Second";
                    
                   hasdata = true;
                    //Response.Write(reader["Patient_name"] + ", ");
                    //Response.Write(reader["Patient_id"] + ", ");
                    //Response.Write(reader["Patient_num"]);
                    //Response.Write("<BR>");

                }
                else
                {
                    Label4.Text = "輸入資料有誤";
                }
                con.Close();
                
            }
            if (hasdata)
            {
                con.Open();
                cmd = new SqlCommand("insert into reserve values('" + doc_Id + "','" + TextBox_id.Text + "','" + re_time + "','0',0,'0');", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Insertinto.aspx");
            }
            
        }
        catch (Exception a9)
        {
            Response.Write(a9.Message);
        }
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["url"] = "Second";
        Response.Redirect("First_Second.aspx");
    }
}