using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default36 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        //Response.Write(e.Day.Date.ToShortDateString()+ "<br>");

        Label LB = new Label();
        LB.Text = "<br>***";

        e.Cell.Controls.Add(LB);
    }
}