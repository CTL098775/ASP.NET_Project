using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class First_Second : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("page" + Session["url"].ToString());
        if (!IsPostBack)
        {
            if (Session["url"] == null)
            {
                Response.Redirect("index.aspx");
            }

            if (Session["url"].ToString() == "Doctor_timetable" || Session["url"].ToString() == "First" || Session["url"].ToString() == "Second")
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            Session["url"] = "First_Second";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["visit"] = "first";
        Session["url"] = "First_Second";
        Response.Redirect("First.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["visit"] = "second";
        Session["url"] = "First_Second";
        Response.Redirect("Second.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Doctor_timetable.aspx");
     }
}