using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["url"] = "index";
        //Session["back"] = "null";
        //Session["doc_id"] = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["page"] = "index";
        Session["url"] = "index";
        Response.Redirect("Division_Doctor.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["page"] = "select";
        //Session["url"] = "index_select";
        Response.Redirect("Inquire1.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["page"] = "cancel";
        //Session["url"] = "index_cancel";
        Response.Redirect("Inquire1.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //Session["url"] = "index_schedule";
        Response.Redirect("Inquire.aspx");
    }
}