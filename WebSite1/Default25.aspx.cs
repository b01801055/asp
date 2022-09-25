using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default25 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox TB = (TextBox)DetailsView1.FindControl("TextBox1");
        //Calendar CA = (Calendar)DetailsView1.FindControl("Calendar1");
        Calendar CA = DetailsView1.FindControl("Calendar1") as Calendar;
        TB.Text = CA.SelectedDate.ToShortDateString();
    }
}