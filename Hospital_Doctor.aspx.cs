using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Doctor : System.Web.UI.Page
{
    string doc = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["url"] == null)
                Response.Redirect("index.aspx");

            if (Session["url"].ToString() == "Division_Doctor" || Session["url"].ToString() == "Doctor_timetable")
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            Session["url"] = "Hospital_Doctor";
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["doc_id"] = "9001";
        Session["temp"] = "Doctor";
        Response.Redirect("Doctor_timetable.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["doc_id"] = "9003";
        Session["temp"] = "Doctor";
        Response.Redirect("Doctor_timetable.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["doc_id"] = "9002";
        Session["temp"] = "Doctor";
        Response.Redirect("Doctor_timetable.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Session["doc_id"] = "9004";
        Session["temp"] = "Doctor";
        Response.Redirect("Doctor_timetable.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["back"] = "back";
        Response.Redirect("Division_Doctor.aspx");
    }
}