using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GasPrice : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Cache["lat"] != null)
            TextBox1.Text = Cache["lat"].ToString();
        if (Cache["lon"] != null)
            TextBox2.Text = Cache["lon"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string latitude = TextBox1.Text;
        string longitude = TextBox2.Text;
        Cache["lat"] = latitude;
        Cache["lon"] = longitude;
        string q = "gas" + latitude + "," + longitude;
        if(Cache[q] != null)
        {
            Label1.Text = Cache[q].ToString();
            return;
        }
        ServiceReference2.Service1Client client = new ServiceReference2.Service1Client();
        Label1.Text = client.gasPrices(latitude, longitude);
        Cache[q] = Label1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}