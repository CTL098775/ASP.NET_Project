using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string[] time;
    protected void Button1_Click(object sender, EventArgs e)
    {
        time = Label1.Text.Split('/');
        foreach (var word in time)
        {
            //Response.Write(word);
            //System.Console.WriteLine(time);
        };
        //Response.Write(time);
        test1();
    }

    public void test1()
    {
        Response.Write("hello");
    }
}