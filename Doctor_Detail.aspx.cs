using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctor_Detail : System.Web.UI.Page
{
    string doc = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["url"] == null)
                Response.Redirect("index.aspx");

            if (Session["url"].ToString() != "Doctor_timetable")
            {
                Response.Redirect("index.aspx");
            }
            
            Session["url"] = "Doctor_Detail";
        }



        doc = Session["doc_id"].ToString();
        if (doc == "9001")
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else if (doc == "9002")
        {
            MultiView1.ActiveViewIndex = 2;
        }
        else if (doc == "9003")
        {
            MultiView1.ActiveViewIndex = 1;
        }
        else if (doc == "9004")
        {
            MultiView1.ActiveViewIndex = 3;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["back"] = "back";
        Response.Redirect("Doctor_timetable.aspx");
    }
}