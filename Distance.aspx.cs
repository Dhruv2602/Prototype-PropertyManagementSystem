using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Distance : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Cache["org"] != null)
            TextBox1.Text = Cache["org"].ToString();
        if (Cache["des"] != null)
            TextBox2.Text = Cache["des"].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ServiceReference3.Service1Client client = new ServiceReference3.Service1Client();
        string org = TextBox1.Text;
        string des = TextBox2.Text;
        string q = "dist" + org + "," + des;
        if(Cache[q] != null)
        {
            Label1.Text = Cache[q].ToString();
            return;
        }
        Cache["org"] = org;
        Cache["des"] = des;
        Label1.Text = client.getDistance(org, des);
        Cache[q] = Label1.Text;
    }
}