using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default37 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String myMessage = null;

        for(int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox checkBox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

            Label myID = (Label)GridView1.Rows[i].FindControl("Label1");

            if(checkBox.Checked == true)
            {
                myMessage = myMessage + myID.Text + ",";
            } 
        }

        Label2.Text += myMessage;
    }
}