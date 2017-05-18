using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ServiceReference1.UserAccountCreationnewClient client = new ServiceReference1.UserAccountCreationnewClient();
        string name = TextBox1.Text;
        string email = TextBox2.Text;
        string pass = TextBox3.Text;
        string secq = TextBox4.Text;
        string seca = TextBox5.Text;
        string user = client.createUserAcc(name, email, pass, secq, seca);
        Label1.Text = user;
        try
        {
            string[] u = user.Split(':');
            string username = u[1].Substring(1);
            HttpCookie myCookies = new HttpCookie("userId");
            myCookies["userId"] = username;
            Response.Cookies.Add(myCookies);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "none", "<script>reloadPage();</script>", false);
            //Response.Redirect("Default.aspx");
        }
        catch
        {

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pollution.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("GasPrice.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Distance.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("UV.aspx");
    }
}