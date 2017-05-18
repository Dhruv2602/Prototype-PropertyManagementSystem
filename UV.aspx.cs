using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UV : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if(Cache["lat"] != null)
        {
            TextBox1.Text = Cache["lat"].ToString();
        }

        if (Cache["lon"] != null)
        {
            TextBox2.Text = Cache["lon"].ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string lat = TextBox1.Text;
        string lon = TextBox2.Text;

        Cache["lat"] = lat;
        Cache["lon"] = lon;
        string q = "uv" + lat + "," + lon;
        if(Cache[q] != null)
        {
            Label2.Text = Cache[q].ToString();
            return;
        }
        string url = @"http://10.1.22.45:8099/UVIndex.svc/UVIndex/" + lat + "/" + lon;

        // Web Request call for the URL
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
        WebResponse response = request.GetResponse();
        Stream responseStream = response.GetResponseStream();
        StreamReader reader = new StreamReader(responseStream);

        string res = reader.ReadToEnd();
        Label2.Text = res;
        Cache[q] = Label2.Text;
    }
}