using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class p01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpContext.Current.Items.Add("email", "allen@gmail.com");
        // 第一個參數是「屬性（欄位）」，後面是「值」

        // （Will保哥）這個 HttpContext.Items 物件的生命週期很短，只會出現在這一個 HTTP Request 裡面而已，當頁面送給 User 之後，物件就會自動回收
        // http://blog.miniasp.com/post/2008/02/29/Use-HttpContext-Items-pass-data-between-HttpModule-and-HttpHandler.aspx

        // (微軟MSDN) 對目前 HTTP 要求的 HttpContext 物件的參考。 
        //                        物件針對要求提供內建的 Request、Response 和 Server 屬性的存取。

        //*******************************************
        Server.Transfer("p02.aspx");   // 正確作法！
        // Response.Redirect("p02.aspx");  // 錯誤作法！會報錯！

    }
}