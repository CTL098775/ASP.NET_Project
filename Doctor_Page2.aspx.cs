using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Doctor_Page2 : System.Web.UI.Page
{
    string constr = "Data Source=(localdb)\\ProjectsV13;" +
              "Initial Catalog=hospital;" +
              "Integrated Security=True;" +
              "Connect Timeout=30;Encrypt=False;" +
              "TrustServerCertificate=False;" +
              "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
              "User ID = sa; Password = 12345";
    List<string> numlist = new List<string> { };
    //string[] name = new string[] { };
    List<string> name = new List<string>();
    List<string> name_id = new List<string>();
    int now;
    string doc_id;
    string todaytime = DateTime.Today.ToString("yyyy/MM/dd"); //今天日期
    string weekday = DateTime.Today.ToString("dddd"); //今天的weekday
    //ArrayList name = new ArrayList();
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
        Session["url"] = "Doctor_Page2";

        Label23.Text = todaytime;
        doc_id = Session["doc_id"].ToString(); //醫師ID
        //Response.Write("今天看診醫師:"+doc_id.ToString());
        //Response.Write("今天星期:" + weekday.ToString());
        //Response.Write("今天日期:" + todaytime.ToString());
        if (doc_id == "9001") //1,4
        {
            Label22.Text = "許夢璇";
            Label24.Text = "A1001";
            if (weekday == "星期一" | weekday == "星期四")
            {
                try
                {
                    MySqlConnection con = new MySqlConnection(constr);
                    con.Open();
                    string sql = "SELECT reserve.reserve_patient_id,reserve.reserve_doc_id,reserve.reserve_time, reserve.number, reserve.branch, patient.Patient_name FROM reserve LEFT JOIN patient ON reserve.reserve_patient_id = patient.Patient_id";
                    MySqlCommand cmd = new MySqlCommand(sql);
                    cmd.Connection = con;
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (reader["reserve_doc_id"].ToString() == doc_id & reader["reserve_time"].ToString() == todaytime)
                            {
                                name_id.Add(reader["Patient_name"].ToString());
                                name.Add(reader["reserve_patient_id"].ToString());
                            }
                            //Response.Write("Patient_name= " + reader["Patient_name"].ToString());
                            //Response.Write("Patient_id= " + reader["reserve_patient_id"].ToString());
                            Session["id"] = reader["reserve_patient_id"];
                            Session["url"] = "Second";
                            /*foreach (var a in name)
                            {
                                Response.Write(a.ToString() + "<br>");
                            }*/
                        }
                    }
                    con.Close();
                }
                catch (Exception a14)
                {

                }
            }
        }
        else if (doc_id == "9002") //4,5
        {
            Label22.Text = "江卉玲";
            Label24.Text = "A1002";
            if (weekday == "星期四" | weekday == "星期五")
            {
                try
                {
                    MySqlConnection con = new MySqlConnection(constr);
                    con.Open();
                    string sql = "SELECT reserve.reserve_patient_id,reserve.reserve_doc_id,reserve.reserve_time, reserve.number, reserve.branch, patient.Patient_name FROM reserve LEFT JOIN patient ON reserve.reserve_patient_id = patient.Patient_id";
                    MySqlCommand cmd = new MySqlCommand(sql);
                    cmd.Connection = con;

                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (reader["reserve_doc_id"].ToString() == doc_id & reader["reserve_time"].ToString() == todaytime)
                            {
                                name_id.Add(reader["Patient_name"].ToString());
                                name.Add(reader["reserve_patient_id"].ToString());
                            }
                            //Response.Write("Patient_name= " + reader["Patient_name"].ToString());
                            //Response.Write("Patient_id= " + reader["reserve_patient_id"].ToString());
                            Session["id"] = reader["reserve_patient_id"];
                            Session["url"] = "Second";
                            /*foreach (var a in name)
                            {
                                Response.Write(a.ToString() + "<br>");
                            }*/
                        }
                    }
                    con.Close();
                }
                catch (Exception a15)
                {

                }
            }
        }
        else if (doc_id == "9003") //2,3
        {
            Label22.Text = "董葵庭";
            Label24.Text = "A1003";
            if (weekday == "星期二" | weekday == "星期三")
            {
                try
                {
                    MySqlConnection con = new MySqlConnection(constr);
                    con.Open();
                    string sql = "SELECT reserve.reserve_patient_id, reserve.reserve_doc_id, reserve.reserve_time, reserve.number, reserve.branch, patient.Patient_name FROM reserve LEFT JOIN patient ON reserve.reserve_patient_id = patient.Patient_id";
                    MySqlCommand cmd = new MySqlCommand(sql);
                    cmd.Connection = con;

                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (reader["reserve_doc_id"].ToString() == doc_id & reader["reserve_time"].ToString() == todaytime)
                            {
                                name_id.Add(reader["Patient_name"].ToString());
                                name.Add(reader["reserve_patient_id"].ToString());
                                //Response.Write("Patient_name= " + reader["Patient_name"].ToString());
                                //Response.Write("Patient_id= " + reader["reserve_patient_id"].ToString());
                            }
                            
                            Session["id"] = reader["reserve_patient_id"];
                            Session["url"] = "Second";
                            /*foreach (var a in name)
                            {
                                Response.Write(a.ToString() + "<br>");
                            }*/
                        }
                    }
                    con.Close();
                }
                catch (Exception a15)
                {

                }
            }
        }
        else if (doc_id == "9004") //1,6
        {
            Label22.Text = "吳沛權";
            Label24.Text = "A1004";
            if (weekday == "星期一" | weekday == "星期六")
            {
                try
                {
                    MySqlConnection con = new MySqlConnection(constr);
                    con.Open();
                    string sql = "SELECT reserve.reserve_patient_id,reserve.reserve_doc_id,reserve.reserve_time, reserve.number, reserve.branch, patient.Patient_name FROM reserve LEFT JOIN patient ON reserve.reserve_patient_id = patient.Patient_id";
                    MySqlCommand cmd = new MySqlCommand(sql);
                    cmd.Connection = con;

                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (reader["reserve_doc_id"].ToString() == doc_id & reader["reserve_time"].ToString() == todaytime)
                            {
                                name_id.Add(reader["Patient_name"].ToString());
                                name.Add(reader["reserve_patient_id"].ToString());
                            }
                            //Response.Write("Patient_name= " + reader["Patient_name"].ToString());
                            //Response.Write("Patient_id= " + reader["reserve_patient_id"].ToString());
                            Session["id"] = reader["reserve_patient_id"];
                            Session["url"] = "Second";
                            /*foreach (var a in name)
                            {
                                Response.Write(a.ToString() + "<br>");
                            }*/
                        }
                    }
                    con.Close();
                }
                catch (Exception a12)
                {

                }
            }
        }
        if (!IsPostBack)
        {
            foreach (string a in name_id)
            {
                ListBox2.Items.Add(a);
            }
        }
        
        
    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write("你所選擇的是= " + ListBox2.SelectedValue);
        string selectname = ListBox2.SelectedValue;
        string constr = "Data Source = localhost; port=3306; Initial Catalog = asp; User Id= asp; password = 123456";
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            con.Open();
            string sql = "SELECT * FROM diagnosis LEFT JOIN patient ON diagnosis.patient_id = patient.Patient_id";
            MySqlCommand cmd = new MySqlCommand(sql);
            cmd.Connection = con;

            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    if (reader["Patient_name"].ToString() == selectname)
                    {
                        Label25.Text = reader["Patient_name"].ToString(); //姓名
                        Label26.Text = reader["Patient_num"].ToString(); //身份證號碼
                        Label27.Text = reader["patient_id"].ToString(); //病例號
                        Label28.Text = reader["Patient_birthday"].ToString(); //生日
                        Label29.Text = reader["Patient_phone"].ToString(); //電話
                        Label30.Text = reader["Patient_address"].ToString(); //地址
                        Label31.Text = reader["Patient_person"].ToString(); //聯絡人
                        Label32.Text = reader["Patient_person_phone"].ToString(); //聯絡人電話
                        Label33.Text = reader["Patient_disease"].ToString(); //重大疾病
                        Label34.Text = reader["Patient_allergy"].ToString(); //藥物過敏

                        TextBox1.Text = reader["Diagnosticrecords"].ToString();
                        TextBox2.Text = reader["Prescriptionsign"].ToString();

                        name_id.Add(reader["Patient_name"].ToString());
                        name.Add(reader["patient_id"].ToString());
                    }
                    //Session["id"] = reader["reserve_patient_id"];
                    //Session["url"] = "Second";
                }
            }
            con.Close();
        }

    }
    //SELECT * FROM diagnosis LEFT JOIN patient ON diagnosis.patient_id = patient.Patient_id

    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = "Data Source = localhost; port=3306; Initial Catalog = asp; User Id= asp; password = 123456";
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            con.Open();
            string id = Request.QueryString["id"];
            string updateSql = "Update diagnosis SET Diagnosticrecords = '" + TextBox1.Text + "', Prescriptionsign= '" + TextBox2.Text + "' WHERE patient_id = '" +Label27.Text+ "'";
            using (MySqlCommand cmd = new MySqlCommand(updateSql))
            {
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }

            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        string constr = "Data Source = localhost; port=3306; Initial Catalog = asp; User Id= asp; password = 123456";
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            con.Open();
            string sql = "select * from registerednum where doc ='"+ doc_id +"'";
            MySqlCommand cmd = new MySqlCommand(sql);
            cmd.Connection = con;
            using (var reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    //Response.Write(reader["now"]);
                    now = int.Parse(reader["now"].ToString());
                }
            }
            con.Close();
        }
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            con.Open();
            string sql = "SELECT * FROM reserve WHERE reserve_time = '" + todaytime + "' and reserve_doc_id = '" + doc_id + "'";
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
        if (now < numlist.Count())
        {
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                con.Open();
                string id = Request.QueryString["id"];
                string updateSql = "Update registerednum SET now = '" + (now + 1) + "' WHERE doc = '"+ doc_id + "'";
                using (MySqlCommand cmd = new MySqlCommand(updateSql))
                {
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }

                con.Close();
            }
        }
    }
}