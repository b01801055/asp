using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch02_CS_ref_out : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int normal = 20;
        int ref_int = 10;   //***********
        int out_int;

        Method_normal(normal);
        Method_ref(ref ref_int);
        Method_out(out out_int);

        // 結果輸出
        Label1.Text = "normal的值為" +  normal + "<br>";
        Label1.Text += "ref_int的值為" + ref_int + " <br>";
        Label1.Text += "out_int的值為" + out_int + "<br>";
               
        // 必須啟用新版C#才能使用以下寫法：
        //Response.Write($"normal的值為 {normal} <br>");
        //Response.Write($"ref_int的值為 {ref_int} <br>");
        //Response.Write($"out_int的值為 {out_int} <br>");
    }


    // 注意！都是 不傳回值 void
    private static void Method_normal(int normal)
    {
        normal = 999;
    }
    private static void Method_ref(ref int ref_int)
    {
        ref_int = 999;
    }
    private static void Method_out(out int out_int)
    {
        out_int = 999;
    }


}