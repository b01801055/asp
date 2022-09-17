using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        if(TextBox4.Text == TextBox5.Text)
        {
            //Response.Write("success");
            Label1.Text = "Success";
        }
        else
        {
            //Response.Write("failed");
            Label1.Text = "failed";
            TextBox4.Focus();
        }

    }
}