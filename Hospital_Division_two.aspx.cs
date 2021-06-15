using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Division_two : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Session["url"].ToString());

        if (!IsPostBack)
        {
            if (Session["url"] == null)
            {
                Response.Redirect("index.aspx");
            }
  
            if (Session["url"].ToString() == "Hospital_Division" || Session["url"].ToString() == "Doctor_timetable")
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            Session["url"] = "Hospital_Division_two";
        }

       
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["doc_id"] = 9002; //江卉玲 醫師
        //Response.Write(Session["url"].ToString());
        Session["temp"] = "Division";
        Response.Redirect("Doctor_timetable.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["doc_id"] = 9004; //吳沛權 醫師 
        //Response.Write(Session["url"].ToString());
        Session["temp"] = "Division";
        Response.Redirect("Doctor_timetable.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session["back"] = "back";
        Response.Redirect("Hospital_Division.aspx");
    }
}