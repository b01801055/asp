using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default21 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            //將按鈕Disable，並修改顯示文字
            Button1.Attributes["onclick"] = "this.disabled = true;this.value = 'Please wait..';" + Page.ClientScript.GetPostBackEventReference(Button1, "");
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //System.Threading.Thread.Sleep(5000);
        System.Threading.Thread.Sleep(1000);
        ClientScript.RegisterStartupScript(GetType(), "btnCommit", "alert('提交成功!!!');", true);
    }
}