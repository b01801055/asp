using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default42 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Class1.defense();

        Class2 x = new Class2();
        x.defense2();
    }
}