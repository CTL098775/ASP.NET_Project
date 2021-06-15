using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Division : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //網頁流程判斷，如果URL值為空或不是Division_Doctor者，返回首頁。
        if (!IsPostBack)
        {
            if (Session["url"] == null)
                Response.Redirect("index.aspx");

            if (Session["url"].ToString() == "Division_Doctor" || Session["url"].ToString() == "Hospital_Division_one" || Session["url"].ToString() == "Hospital_Division_two")
            {
            }
            else 
            {
                Response.Redirect("index.aspx");
            }

            Session["url"] = "Hospital_Division"; //選擇科別頁

        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["Branch"] = "1";
        Response.Redirect("Hospital_Division_one.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["Branch"] = "2";
        Response.Redirect("Hospital_Division_two.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["back"] = "back";
        Response.Redirect("Division_Doctor.aspx");
    }
}