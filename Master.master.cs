using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["userId"];
        if (myCookies != null)
        {
            Label1.Text = "Hello " + myCookies["userId"] + "!";
        }
    }
}
