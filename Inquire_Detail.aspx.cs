using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Inquire_Detail : System.Web.UI.Page
{
    List<string> numlist = new List<string> { };
    int now;
    protected void Page_Load(object sender, EventArgs e)
    {
        //抓取今天這個醫師看診病患的排序
        string doc_id = Session["doc_id"].ToString(); //醫師ID
        string todaytime = DateTime.Today.ToString("yyyy/MM/dd"); //今天日期
        if (doc_id == "9001" || doc_id == "9003")
        {
            Label5.Text = "一般醫學科";
        }
        else if (doc_id == "9002" || doc_id == "9004")
        {
            Label5.Text = "精神科";
        }
        if (doc_id == "9001")
        {
            Label6.Text = "許夢璇";
        }
        else if (doc_id == "9002")
        {
            Label6.Text = "江卉玲";
        }
        else if (doc_id == "9003")
        {
            Label6.Text = "董葵庭";
        }
        else if (doc_id == "9004")
        {
            Label6.Text = "吳沛權";
        }
        string constr = "";
            
            constr = "Data Source=(localdb)\\ProjectsV13;" +
                     "Initial Catalog=hospital;" +
                     "Integrated Security=True;" +
                     "Connect Timeout=30;Encrypt=False;" +
                     "TrustServerCertificate=False;" +
                     "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
                     "User ID = sa; Password = 12345";
        try {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string sql = "select * from reserve WHERE reserve_time = '" + todaytime + "' and reserve_doc_id = '" + doc_id + "'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    //Response.Write(reader["number"]);
                    numlist.Add(reader["number"].ToString());
                }
            }

            con.Close();
        }
        catch (Exception a1) {
            
        }

        //抓取目前號碼
        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string sql = "select * from [registerednum] where doc = '" +doc_id+ "'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    //Response.Write(reader["now"]);
                    now = int.Parse(reader["now"].ToString());

                    //numlist.Add(reader["number"].ToString());
                }
            }

            con.Close();
        }
        catch (Exception a2)
        {

        }


        if (now < numlist.Count() - 1)
        {
            Label7.Text = numlist[now];
            Label8.Text = numlist[now + 1];
        }
        else if (now < numlist.Count())
        {
            Label7.Text = numlist[now];
            Label8.Text = numlist[now];
        }
        else
        {
            /*Label7.Text = "1";
            Label8.Text = "1";*/
        }

    }
}