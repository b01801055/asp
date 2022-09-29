using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch16_Application_PublicAnnouce_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {   // 第一次執行的時候，給Application預設值
            Application.Lock();    //*********

                 Application["PublicMessage"] = "";

            Application.UnLock();    //*********
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Application.Lock();    //*********

             Application["PublicMessage"] = TextBox1.Text;

        Application.UnLock();    //*********
    }
}