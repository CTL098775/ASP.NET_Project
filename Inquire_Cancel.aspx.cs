using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Inquire_Cancel : System.Web.UI.Page
{
    string patient_id = "";
    string doc_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("page"+Session["url"]);
        if (!IsPostBack)
        {
            if (Session["url"] == null)
            {
                Response.Redirect("index.aspx");
            }

            if (Session["url"].ToString() == "First" || Session["url"].ToString() == "Second" || Session["url"].ToString() == "Inquire1")
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            //Session["url"] = "Inquire_Cancel";
        }

        
        //patient_id = Session["patient_id"].ToString();
        
        //string reserve_time = Session["day_complete"].ToString();
        //Response.Write(Session["id"]);
        //網頁流程判斷，如果URL值為空或不是Inquire1者，返回首頁。
        /*if (!IsPostBack)
        {
            if (Session["url"] == null)
                Response.Redirect("index.aspx");

            if (Session["url"].ToString() != "Inquire1" )
            {
                if (Session["url"].ToString() != "First")
                {
                    if (Session["url"].ToString() != "Second")
                        Response.Redirect("index.aspx");
                }
            }

            Session["url"] = "Inquire_Cancel"; //查看掛號
            
        }
        string constr = "Data Source = localhost; port=3306; Initial Catalog = asp; User Id= asp; password = 123456";
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string sql = "select count(*) from `reserve` where reserve_doc_id ='" + doc_id + "' and reserve_time='" + reserve_time + "' and state='" + state + "'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            string count = cmd.ExecuteScalar().ToString();
            Response.Write(count);
            con.Close();
        }*/
        //Response.Write("1"+Session["url"].ToString());
        //Response.Write("2" + Session["doc_id"].ToString());
        //Response.Write("3" + Session["daytemp"].ToString());
        if (Session["url"].ToString() == "First" || Session["url"].ToString() == "Second")
        {
            doc_id = Session["doc_id"].ToString();
            Label6.Text = Session["daytemp"].ToString();
            if (doc_id == "9001")
            {
                Label7.Text = "一般醫學科";
                Label8.Text = "許夢璇";
            }
            else if (doc_id == "9002")
            {
                Label7.Text = "精神科";
                Label8.Text = "江卉玲";
            }
            else if (doc_id == "9003")
            {
                Label7.Text = "一般醫學科";
                Label8.Text = "董葵庭";
            }
            else if (doc_id == "9004")
            {
                Label7.Text = "精神科";
                Label8.Text = "吳沛權";
            }
            Label9.Text = Session["number"].ToString();
        }
        else if (Session["url"].ToString() == "Inquire")
        {
            Button1.Visible = false;
            doc_id = Session["doc_id"].ToString();
            Label6.Text = Session["reserve_time"].ToString();//預約日期
            if (doc_id == "9001")
            {
                Label7.Text = "一般醫學科";
                Label8.Text = "許夢璇";
            }
            else if (doc_id == "9002")
            {
                Label7.Text = "精神科";
                Label8.Text = "江卉玲";
            }
            else if (doc_id == "9003")
            {
                Label7.Text = "一般醫學科";
                Label8.Text = "董葵庭";
            }
            else if (doc_id == "9004")
            {
                Label7.Text = "精神科";
                Label8.Text = "吳沛權";
            }
            Label9.Text = Session["number"].ToString();//預約掛號
        }
        else if (Session["url"].ToString() == "Inquire1")
        {
            Button1.Visible = false;
            doc_id = Session["doc_id"].ToString();
            Label6.Text = Session["reserve_time"].ToString();//預約日期
            if (doc_id == "9001")
            {
                Label7.Text = "一般醫學科";
                Label8.Text = "許夢璇";
            }
            else if (doc_id == "9002")
            {
                Label7.Text = "精神科";
                Label8.Text = "江卉玲";
            }
            else if (doc_id == "9003")
            {
                Label7.Text = "一般醫學科";
                Label8.Text = "董葵庭";
            }
            else if (doc_id == "9004")
            {
                Label7.Text = "精神科";
                Label8.Text = "吳沛權";
            }
            Label9.Text = Session["patient_id"].ToString();//預約掛號
        }
        //Response.Write(Session["page"].ToString());
        if (Session["page"].ToString() == "select" || Session["url"].ToString() == "First" || Session["url"].ToString() == "First")
        {
            Button1.Visible = false;
        }
        else 
        {
            Button1.Visible = true;
        }
        //Response.Write(Session["url"].ToString());
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string patient_id = Session["patient_id"].ToString();
        //Response.Write(patient_id);
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
            string sql = "UPDATE [reserve] SET [state] = '0' WHERE `reserve_patient_id` = '"+ patient_id + "' and reserve_doc_id = '"+doc_id+"'";
            //Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            using (cmd = new SqlCommand(sql))
            {
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            con.Close();
        }
        catch (Exception a3)
        {

        }
        Response.Redirect("index.aspx");
    }
}