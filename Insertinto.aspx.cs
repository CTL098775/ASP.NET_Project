using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Insertinto : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string reserve_time = Session["day_complete"].ToString(); //預約完整日期

        string doc_id = Session["doc_id"].ToString(); // 醫生編號
        
        string state = "1"; //狀態

        string branch = "";

        if (doc_id == "9001")
        {
            branch = "1";
        }
        else if (doc_id == "9002")
        {
            branch = "2";
        }
        else if (doc_id == "9003")
        {
            branch = "1";
        }

        else if (doc_id == "9004")
        {
            branch = "2";
        }
        //Response.Write(branch);


        if (Session["url"].ToString() == "Second") //複診頁
        {
            string patient_id = Session["id"].ToString(); //User id
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
                string sql = "SELECT COUNT(*) FROM reserve WHERE reserve_doc_id ='" + doc_id + "' and reserve_patient_id ='" + patient_id + "' and  reserve_time = '" + reserve_time + "' and state = '1'";
                //Response.Write(sql);
                MySqlCommand cmd = new MySqlCommand(sql);
                cmd.Connection = con;

                string count = cmd.ExecuteScalar().ToString();
                //Response.Write(count);
                if (count != "0")
                {
                    //Response.Write("已預約掛號");
                    string sql5 = "SELECT * FROM reserve WHERE reserve_doc_id ='" + doc_id + "' and  reserve_time = '" + reserve_time + "' and state = '1'";
                    cmd = new MySqlCommand(sql5);
                    cmd.Connection = con;

                    using (var reader = cmd.ExecuteReader())
                    {
                        //Response.Write(reader.Read());
                        while (reader.Read())
                        {
                            Session["number"] = reader["number"].ToString();
                        }
                    }

                    con.Close();
                    Response.Redirect("Inquire_Cancel.aspx");
                }
                else
                {
                    con.Close();
                    using (MySqlConnection con2 = new MySqlConnection(constr))
                    {
                        con2.Open();

                        string sql3 = "SELECT COUNT(*) FROM reserve WHERE reserve_doc_id ='" + doc_id + "' and  reserve_time = '" + reserve_time + "' and state = '1'";
                        cmd = new MySqlCommand(sql3);
                        cmd.Connection = con2;
                        int number = int.Parse(cmd.ExecuteScalar().ToString()) + 1;
                        //Response.Write("number= " + number);
                        Session["number"] = number.ToString();

                        string sql2 = "INSERT INTO reserve` (reserve_doc_id, reserve_patient_id, reserve_time, state, number, branch) " +
                            "VALUES('" + doc_id + "', '" + patient_id + "', '" + reserve_time + "', '" + state + "', '" + number + "', '" + branch +"')";
                        //Response.Write(sql2);
                        using (cmd = new MySqlCommand(sql2))
                        {
                            cmd.Connection = con2;
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();
                        }
                        Session["url"] = "First";
                        //Response.Write("資料成功寫入");
                        con2.Close();
                        Response.Redirect("Inquire_Cancel.aspx");
                    }
                }
            }
            catch (Exception a10)
            {

            }
        }
        else if (Session["url"].ToString() == "First") //初診頁
        {
            string patient_id = "";
            string patient_num = Session["patient_num"].ToString();
            //取得病患id
            
            string constr = "Data Source=(localdb)\\ProjectsV13;" +
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
                //string sql = "select count(*) from `patient` where Patient_num ='" + TextBox_id.Text + "' and Patient_birthday ='"+TextBox_day.Text+"'";
                string sql = "SELECT * FROM patient where Patient_num ='" + patient_num + "'";
                //Response.Write(sql);
                MySqlCommand cmd = new MySqlCommand(sql);
                cmd.Connection = con;
                //Response.Write("進入select1");
                using (var reader = cmd.ExecuteReader())
                {
                    //Response.Write("進入select2");
                    //Response.Write(reader.Read());
                    while (reader.Read())
                    {
                        //Response.Write("進入select3");
                        //Response.Write(reader["Patient_id"].ToString());
                        Session["id"] = reader["Patient_id"]; //User id
                        patient_id = Session["id"].ToString();
                    }
                }
                con.Close();
            }
            catch (Exception a11)
            {

            }
            //Response.Write(patient_id);

            try
            {
                MySqlConnection con2 = new MySqlConnection(constr);
                con2.Open();
                string sql3 = "select count(*) from [reserve] where reserve_doc_id ='" + doc_id + "' and  reserve_time = '" + reserve_time + "' and state = '1'";
                MySqlCommand cmd = new MySqlCommand(sql3);
                cmd.Connection = con2;
                int number = int.Parse(cmd.ExecuteScalar().ToString()) + 1;
                //Response.Write("number= " + number);

                string sql2 = "INSERT INTO [reserve] (reserve_doc_id, reserve_patient_id, reserve_time, state, number, branch) VALUES('" + doc_id + "', '" + patient_id + "', '" + reserve_time + "', '" + state + "', '" + number + "', '" + branch +"')";
                //Response.Write(sql2);
                using (cmd = new MySqlCommand(sql2))
                {
                    cmd.Connection = con2;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }
                Session["url"] = "First";
                //Response.Write("資料成功寫入");
                con2.Close();

                con2.Open();
                //string sql6 = "INSERT INTO `diagnosis` (Patient_id, doc_id) VALUES('" + patient_id + "', '" + doc_id + "')";
                string sql6 = "INSERT INTO [diagnosis] (Patient_id, doc_id, Prescriptionsign, Diagnosticrecords) VALUES('" + patient_id + "', '" + doc_id + "', '無資料', '無資料')";
                //Response.Write(sql6);

                using (cmd = new MySqlCommand(sql6))
                {
                    cmd.Connection = con2;
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                }

                Session["url"] = "First";
                //Response.Write("資料成功寫入");
                con2.Close();
                Response.Redirect("Inquire_Cancel.aspx");
            }
            catch (Exception a15)
            {

            }

        }

    }
    public void select_patient_id()
    {
        string patient_id = Session["id"].ToString();
        string reserve_time = Session["day"].ToString();
        string constr = "Data Source=(localdb)\\ProjectsV13;" +
                             "Initial Catalog=hospital;" +
                             "Integrated Security=True;" +
                             "Connect Timeout=30;Encrypt=False;" +
                             "TrustServerCertificate=False;" +
                             "ApplicationIntent=ReadWrite;MultiSubnetFailover=False;" +
                             "User ID = sa; Password = 12345"; try
        {
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            //string sql = "select count(*) from `patient` where Patient_num ='" + TextBox_id.Text + "' and Patient_birthday ='"+TextBox_day.Text+"'";
            string sql = "SELECT * FROM patient WHERE Patient_num ='" + patient_id + "' and Patient_birthday ='" + reserve_time + "'";
            MySqlCommand cmd = new MySqlCommand(sql);
            cmd.Connection = con;

            using (var reader = cmd.ExecuteReader())
            {
                //Response.Write(reader.Read());
                while (reader.Read())
                {
                    //Response.Write(reader["Patient_id"].ToString());
                    Session["id"] = reader["Patient_id"];
                }
            }
            con.Close();
        }
        catch (Exception a16)
        {

        }
    }
}

//reserve_doc_id 醫師ID
//reserve_patient_id 病患ID
//reserve_time 預約時間
