using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    string Branch;
    string doc_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Label1.Text = "";
        //網頁流程判斷，如果URL值為空或不是index者，返回首頁。
        if (!IsPostBack)
        {
            if (Session["url"] == null)
                Response.Redirect("index.aspx");

            if (Session["url"].ToString() != "index")
            {
                Response.Redirect("index.aspx");
            }

            Session["url"] = "Inquire"; //查看掛號
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write(DropDownList2.Text.ToString());
        //Response.Write(DropDownList3.Text.ToString());
        if (DropDownList2.Text == "請選擇科別" || DropDownList3.Text == "請選擇醫師")
        {
            Label1.Text = "請選擇科別與醫師";
        }
        else
        {
            if (DropDownList3.SelectedValue == "江卉玲")
            {
                doc_id = "9002";
            }
            else if (DropDownList3.SelectedValue == "吳沛權")
            {
                doc_id = "9004";
            }
            else if (DropDownList3.SelectedValue == "許夢璇")
            {
                doc_id = "9001";
            }
            else if (DropDownList3.SelectedValue == "董葵庭")
            {
                doc_id = "9003";
            }
            Session["Branch"] = DropDownList2.Text.ToString();
            Session["doc_id"] = doc_id;
            //Response.Write(Session["doc_id"].ToString());
            Response.Redirect("Inquire_Detail.aspx");
        }     
    }
    //~/Inquire_Detail.aspx

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        
        if (DropDownList2.SelectedValue == "精神科")
        {
            Branch = "精神科";
            DropDownList3.Items.Add("江卉玲");
            DropDownList3.Items.Add("吳沛權");
        }
        else
        {
            Branch = "一般醫學科";
            DropDownList3.Items.Add("許夢璇");
            DropDownList3.Items.Add("董葵庭");
        }
        //Session["Branch"] = Branch;
        //Response.Write(Branch);
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Write90
        if (DropDownList3.SelectedValue == "江卉玲")
        {
            doc_id = "9002";
        }
        else if (DropDownList3.SelectedValue == "吳沛權")
        {
            doc_id = "9004";
        }
        else if (DropDownList3.SelectedValue == "許夢璇")
        {
            doc_id = "9001";
        }
        else if (DropDownList3.SelectedValue == "董葵庭")
        {
            doc_id = "9003";
        }
        //Session["doc_id"] = doc_id;
        //Response.Write(doc_id);
    }
}