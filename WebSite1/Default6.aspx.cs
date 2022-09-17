using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write(DropDownList1.SelectedValue.ToString());

        Response.Write(DropDownList1.SelectedItem.Text);

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = Request["RadioButtonList1"].ToString();
        Response.Write(str);
    }
}