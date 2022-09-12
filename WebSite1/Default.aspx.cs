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
        int a = Convert.ToInt32(Request["a"]);

        if(a > 10)
        {
            Response.Write("a > 10");
        }
        else
        {
            Response.Write("a < 10");
        }
    }
}