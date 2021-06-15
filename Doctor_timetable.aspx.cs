using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_timetable : System.Web.UI.Page
{
    string[] time;
    string temp = "";
    string doc = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Session["url"].ToString());
        if (!IsPostBack)
        {
            
            if (Session["url"] == null)
            {
                //Response.Redirect("index.aspx");
            }

            if (Session["url"].ToString() == "Hospital_Division_one" || Session["url"].ToString() == "Hospital_Division_two" || Session["url"].ToString() == "Hospital_Doctor" || Session["url"].ToString() == "Doctor_Detail" || Session["url"].ToString() == "First_Second" || Session["url"].ToString() == "Doctor_timetable")
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            Session["url"] = "Doctor_timetable";
        }

        LinkButton1.Visible = true;
        LinkButton2.Visible = true;
        LinkButton3.Visible = true;
        LinkButton4.Visible = true;
        LinkButton5.Visible = true;
        LinkButton6.Visible = true;
        LinkButton7.Visible = true;
        LinkButton8.Visible = true;

        doc = Session["doc_id"].ToString();
        /*if (!IsPostBack)
        {
            doc = Session["doc_id"].ToString();
        }*/
        if (doc == "9001")
        {
            Label30.Text = "許夢璇";
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
            LinkButton6.Visible = false;
            LinkButton7.Visible = false;
            LinkButton8.Visible = false;
            Label1.Text = "A1001";
        }
        else if (doc == "9002")
        {
            Label30.Text = "江卉玲";
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton5.Visible = false;
            LinkButton7.Visible = false;
            LinkButton8.Visible = false;
            Label1.Text = "A1002";
        }
        else if (doc == "9003")
        {
            Label30.Text = "董葵庭";
            LinkButton1.Visible = false;
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
            LinkButton7.Visible = false;
            LinkButton8.Visible = false;
            Label1.Text = "A1003";
        }

        else if (doc == "9004")
        {
            Label30.Text = "吳沛權";
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
            Label1.Text = "A1004";
        }
    }

    protected void Button21_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Label2.Text = "06/13";
        Label3.Text = "06/14";
        Label4.Text = "06/15";
        Label5.Text = "06/16";
        Label6.Text = "06/17";
        Label7.Text = "06/18";
        Label8.Text = "06/19";
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Label2.Text = "06/20";
        Label3.Text = "06/21";
        Label4.Text = "06/22";
        Label5.Text = "06/23";
        Label6.Text = "06/24";
        Label7.Text = "06/25";
        Label8.Text = "06/26";
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Label2.Text = "06/27";
        Label3.Text = "06/28";
        Label4.Text = "06/29";
        Label5.Text = "06/30";
        Label6.Text = "07/01";
        Label7.Text = "07/02";
        Label8.Text = "07/03";
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Label2.Text = "07/04";
        Label3.Text = "07/05";
        Label4.Text = "07/06";
        Label5.Text = "07/07";
        Label6.Text = "07/08";
        Label7.Text = "07/09";
        Label8.Text = "07/10";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        /*time = Label3.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label3.Text;
        Session["daytemp"] = Label3.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        /*time = Label4.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label4.Text;
        Session["daytemp"] = Label4.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        /*time = Label5.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label5.Text;
        Session["daytemp"] = Label5.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        /*time = Label6.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label6.Text;
        Session["daytemp"] = Label6.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        /*time = Label6.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label6.Text;
        Session["daytemp"] = Label6.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        /*time = Label7.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label7.Text;
        Session["daytemp"] = Label7.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }

    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        /*time = Label8.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label8.Text;
        Session["daytemp"] = Label8.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        /*time = Label3.Text.Split('/');
        foreach (var a in time)
        {
            temp = temp + a;
        }
        Response.Write(temp);
        Session["day_complete"] = "2021" + temp;*/
        Session["day_complete"] = "2021/" + Label3.Text;
        Session["daytemp"] = Label3.Text;
        Session["url"] = "Doctor_timetable";
        Response.Redirect("First_Second.aspx");
    }

    protected void Button32_Click(object sender, EventArgs e)
    {
        if (Session["temp"].ToString() == "Doctor")
        {
            Response.Redirect("Hospital_Doctor.aspx");
        }
        else
        {
            if (doc == "9001" || doc == "9003")
            {
                Response.Redirect("Hospital_Division_one.aspx");
            }
            else if (doc == "9002" || doc == "9004")
            {
                Response.Redirect("Hospital_Division_two.aspx");
            }
        }
        
    }
}