using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Division_Doctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //網頁流程判斷，如果URL值為空或不是index者，返回首頁。
        if (!IsPostBack)
        {
            if (Session["url"] == null)
            { 
                Response.Redirect("index.aspx");
            }

            if (Session["url"].ToString() == "index" || Session["url"].ToString() == "Hospital_Division" || Session["url"].ToString() == "Hospital_Doctor")
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            Session["url"] = "Division_Doctor"; //選擇醫師科別頁
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}