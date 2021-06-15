using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Doctor_Page1 : System.Web.UI.Page
{
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
        Session["url"] = "Doctor_Page1";

        string todaytime = DateTime.Today.ToString("d");
        string weekday = DateTime.Today.ToString("dddd");
        //Response.Write(todaytime);
        //Response.Write(weekday);


        string doc_id = Session["doc_id"].ToString();
        if (doc_id == "9001")
        {
            Label30.Text = "許夢璇";
            Label1.Text = "A1001";
            Label10.Text = "許夢璇<br>網路掛號<br>尚有餘額</br></br>"; //1
            Label27.Text = "許夢璇<br>網路掛號<br>尚有餘額</br></br>"; //4
        }
        else if (doc_id == "9002")
        {
            Label30.Text = "江卉玲";
            Label1.Text = "A1002";
            Label13.Text = "江卉玲<br>網路掛號<br>尚有餘額</br></br>"; //4
            Label21.Text = "江卉玲<br>網路掛號<br>尚有餘額</br></br>"; //5
        }
        else if (doc_id == "9003")
        {
            Label30.Text = "董葵庭";
            Label1.Text = "A1003";
            Label18.Text = "董葵庭<br>網路掛號<br>尚有餘額</br></br>"; //2
            Label19.Text = "董葵庭<br>網路掛號<br>尚有餘額</br></br>"; //3
        }
        else if (doc_id == "9004")
        {
            Label30.Text = "吳沛權";
            Label1.Text = "A1004";
            Label24.Text = "吳沛權<br>網路掛號<br>尚有餘額</br></br>"; //1
            Label22.Text = "吳沛權<br>網路掛號<br>尚有餘額</br></br>"; //6
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Label2.Text = "06/14";
        Label3.Text = "06/15";
        Label4.Text = "06/16";
        Label5.Text = "06/17";
        Label6.Text = "06/18";
        Label7.Text = "06/19";
        Label8.Text = "06/20";
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Label2.Text = "06/21";
        Label3.Text = "06/22";
        Label4.Text = "06/23";
        Label5.Text = "06/24";
        Label6.Text = "06/25";
        Label7.Text = "06/26";
        Label8.Text = "06/27";
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Label2.Text = "06/28";
        Label3.Text = "06/29";
        Label4.Text = "06/30";
        Label5.Text = "07/01";
        Label6.Text = "07/02";
        Label7.Text = "07/03";
        Label8.Text = "07/04";
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Label2.Text = "07/05";
        Label3.Text = "07/06";
        Label4.Text = "07/07";
        Label5.Text = "07/08";
        Label6.Text = "07/09";
        Label7.Text = "07/10";
        Label8.Text = "07/11";
    }
}