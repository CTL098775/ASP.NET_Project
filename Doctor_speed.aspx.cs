using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Doctor_speed : System.Web.UI.Page
{
    List<string> numlist = new List<string> {};
    int now;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Response.Write("page=" + Session["url"].ToString());
            if (Session["url"] == null)
            {
                //Response.Write("null");
                Response.Redirect("Doctor_Login.aspx");
            }
                
        }
        Session["url"] = "Doctor_speed";

        //抓取今天這個醫師看診病患的排序
        string doc_id = Session["doc_id"].ToString(); //醫師ID
        string todaytime = DateTime.Today.ToString("yyyy/MM/dd"); //今天日期
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
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            string sql = "select * from [reserve] WHERE reserve_time = '"+ todaytime +"' and reserve_doc_id = '" + doc_id + "'";
            MySqlCommand cmd = new MySqlCommand(sql);
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
        catch (Exception a12)
        {

        }

        //抓取目前號碼
       
               
        try
        {
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            string sql = "select * from [registerednum] WHERE DOC = '"+ doc_id +"'";
            MySqlCommand cmd = new MySqlCommand(sql);
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
        catch (Exception a13)
        {

        }

        if (now < numlist.Count() - 1)
        {
            Label3.Text = numlist[now];
            Label4.Text = numlist[now + 1];
        }
        else if (now < numlist.Count())
        {
            Label3.Text = numlist[now];
            Label4.Text = numlist[now];
        }
        else
        {
            /*Label3.Text = "1";
            Label4.Text = "1";*/
        }
    }
}