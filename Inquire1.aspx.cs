using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Inquire1 : System.Web.UI.Page
{
    string patient_id = "";
    string temp = "";
    string Branch = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        //Response.Write(Session["url"].ToString());
        //網頁流程判斷，如果URL值為空或不是index者，返回首頁。
        if (!IsPostBack)
        {
            if (Session["url"] == null)
                Response.Redirect("index.aspx");

            if (Session["url"].ToString() != "index")
            {
                Response.Redirect("index.aspx");
            }

            Session["url"] = "Inquire1"; //查看掛號
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "";
        //取得所選科別
        string Branchtemp = DropDownList1.SelectedValue;
        if (Branchtemp == "請選擇科別")
        {
            Branch = "0";
        }
        else if (Branchtemp == "一般醫學內科")
        {
            Branch = "1";
        }
        else if (Branchtemp == "精神科")
        {
            Branch = "2";
        }
        
        Session["branch"] = Branch;

        //取得病患ID
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
            sql = "select Patient_num from patient where Patient_num ='" + TextBox_id.Text + "' and Patient_birthday='"+TextBox_day.Text+"';";
            Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            Response.Write("進入select1");
            using (var reader = cmd.ExecuteReader())
            {
                //Response.Write("12");
                //Response.Write("進入select2");
                //Response.Write(reader.Read());
                while (reader.Read())
                {
                    //Response.Write("進入select3");
                    //Response.Write(reader["Patient_id"].ToString());
                    Session["id"] = reader["Patient_num"]; //User id
                    patient_id = Session["id"].ToString();
                }
            }
            con.Close();
        }
        catch (Exception a4)
        {
            Response.Write(a4.Message);
        }

        if (patient_id == "")
        {
            Label1.Text = "帳號密碼輸入錯誤";
        }
        else
        {
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
                if (Branch == "0")
                {
                    sql = "select * from reserve where reserve_patient_id ='" + patient_id + "';";
                }
                else
                {
                    sql = "select * from reserve where reserve_patient_id ='" + patient_id + "' and  branch = '" + Branch + "'";
                }
                SqlCommand cmd = new SqlCommand(sql);
                cmd.Connection = con;

                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        temp = reader["reserve_doc_id"].ToString();
                        //Response.Write(reader["reserve_doc_id"] + "<br>");//醫生編號
                        //Response.Write(reader["reserve_patient_id"] + "<br>");//病患id
                        //Response.Write(reader["reserve_time"] + "<br>");//預約時間
                        //Response.Write(reader["number"] + "<br>");//預約號碼
                        Session["doc_id"] = reader["reserve_doc_id"].ToString();
                        Session["patient_id"] = reader["reserve_id"].ToString();
                        Session["reserve_time"] = reader["reserve_time"].ToString();
                        Session["number"] = reader["number"].ToString();
                    }
                }
            }
            catch (Exception a5)
            {

            }
        }
        //Response.Write(temp);
        if (temp != "")
        {
            Session["url"] = "Inquire1";
            Response.Redirect("Inquire_Cancel.aspx");
        }
        else
        {
            Label1.Text = "查無資料";
        }
        //Response.Write(DropDownList1.SelectedValue);
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}