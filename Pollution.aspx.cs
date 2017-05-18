using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pollution : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        if (Cache["city"] != null)
        {
            TextBox1.Text = Cache["city"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string city = TextBox1.Text;

        Cache.Insert("city", city);
        
        if(Cache[city] != null)
        {
            Label1.Text = Cache[city].ToString();
            return;
        }

        string url1 = "http://10.1.22.45:8006/Service1.svc/pollution?string=" + city;
        string url = @url1;

        WebRequest request = WebRequest.Create(url);
        WebResponse response = request.GetResponse();
        Stream data = response.GetResponseStream();
        StreamReader reader = new StreamReader(data);
        string responseFromServer = reader.ReadToEnd();
        response.Close();

        Cache[city] = responseFromServer;
        Label1.Text = responseFromServer;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}