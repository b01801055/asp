using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class p02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Request["TextBox1"] + "<br/>");
        // 抓到第一頁的資訊。直接使用 Request["元件Name"]抓取上一頁的表單元件

        Response.Write(HttpContext.Current.Items["email"] + "<br/>");
        // 第一頁輸入的屬性（欄位）、數值
    }
}