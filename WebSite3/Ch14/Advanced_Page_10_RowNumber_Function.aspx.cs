using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//===============================
using System.Data;
using System.Data.SqlClient;
using Microsoft.VisualBasic;   //-- for Timer


public partial class Advanced_Page_10_RowNumber_Function : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        mis2000Lab_Page(GridView1, 5);
        // 您可以輸入GridiView or Repeater 任一種大型控制項
        // 每頁展示 5筆資料
    }



    //*********************************************************************
    /// <summary>
    /// 
    /// </summary>
    /// <param name="uControl">搭配哪種控制項來展示數據</param>
    /// <param name="PageSize">每頁展示 幾筆資料</param>

    protected void mis2000Lab_Page(System.Web.UI.WebControls.DataBoundControl uControl, int PageSize)
    {
        //=========   ASP.NET  DataSet 分頁程式 by MIS2000 Lab.   ==========        
        Boolean haveRec = false;

        #region  // SQL指令共撈到多少筆（列）資料。RecordCount資料總筆（列）數    
        SqlConnection Conn = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=test;Integrated Security=True");
        //-- 不需要使用多重結果集（MARS） ;MultipleActiveResultSets=True
        Conn.Open();

        SqlCommand cmd = new SqlCommand("select count(id) from test", Conn);
        
        //SQL指令共撈到多少筆（列）資料。RecordCount資料總筆（列）數
        int RecordCount = (int)cmd.ExecuteScalar();
        cmd.Cancel();

        //如果撈不到資料，程式就結束。-- Start --------------
        if (RecordCount == 0)   {
            Response.Write("<h2>抱歉！無法找到您需要的資料！</h2>");
            Conn.Close();
            Response.End();
        }    //如果撈不到資料，程式就結束。-- End ----------
        #endregion


        //Pages 紀錄的總頁數。搜尋到的所有紀錄，共需「幾頁」才能全部呈現？
        int Pages = 0;
        //--方法A。
        //  Pages = ((RecordCount + PageSize) - 1) / (PageSize);    // 除法，取得「商」。

        //--方法B。
        if ((RecordCount % PageSize) > 0)   //-- %，除法，傳回餘數
        {
            Pages = ((RecordCount / PageSize) + 1);   //-- ( / )除法。傳回整數。  如果無法整除，有餘數，則需要多出一頁來呈現。 
        }
        else   {
            Pages = (RecordCount / PageSize);   //-- ( /)除法。傳回整數
        }

        Response.Write("<h3>搜尋資料庫:&nbsp;&nbsp; (共計" + RecordCount + "筆 / 共需" + Pages + "頁)</h3>");
        Response.Write("<hr width='97%' size='1'>");


        #region  //  底下這一段 if判別式，是用來防呆，防止一些例外狀況。-- start --             
        //---- 新的寫法（反向思考） ----
        int p;   // p 就是「目前在第幾頁?」

        //  可以改寫成  if (string.IsNullOrEmpty(Request["p"]))  
        if (Request["p"] == null)        {
            p = 1; //有任何問題，就強制跳回第一頁（p=1）。
        }
        if (IsNumeric(Request["p"]) == false)
        {     // 或是寫成 int.TryParse()方法來檢測是否為整數？
            p = 1; //有任何問題，就強制跳回第一頁（p=1）。
        }
        else  {
            p = Convert.ToInt32(Request["p"]);
        }

        if ((p <= 0) || (p > Pages))
        {   //頁數（p）務必是一個整數。而且需要大於零、比起「資料的總頁數」要少
            p = 1; //有任何問題，就強制跳回第一頁（p=1）。
        }
        #endregion  //上面這一段 if判別式，是用來防呆，防止一些例外狀況。-- end --


        //NowPageCount，目前這頁的資料
        int NowPageCount = 0;
        if (p > 0)  {
            NowPageCount = (p - 1) * PageSize;    // PageSize，每頁展示5筆資料（上面設定過了）
        }


        //========================
        //== 組合SQL指令 =============
        SqlDataReader dr = null;
        //動態組合字串，會受到SQL Injection或是XSS攻擊。建議改用「@參數」的寫法
        //string SqlStr = "Select test_time, id, title, summary from (select ROW_NUMBER() OVER(ORDER BY id) AS 'RowNo', * from test) as t";
        //SqlStr += " where t.RowNo between " + (NowPageCount + 1) + " and " + (NowPageCount + PageSize);

        //==SQL指令的 ROW_NUMBER。參考資料： http://technet.microsoft.com/zh-tw/library/ms186734.aspx 
        //== 參數的寫法 ==
        String SqlStr = "Select test_time, id, title, summary from (select ROW_NUMBER() OVER(ORDER BY id) AS 'RowNo', * from test) as t Where t.RowNo Between @Page1 and @Page2";

        SqlCommand cmd1 = new SqlCommand(SqlStr, Conn);
        cmd1.Parameters.AddWithValue("@Page1", (NowPageCount + 1));
        cmd1.Parameters.AddWithValue("@Page2", (NowPageCount + PageSize));

        dr = cmd1.ExecuteReader();
        //========================

        if (dr.HasRows)        {
            haveRec = true;

            //*************************************************************************
            //*** 第三，自由發揮，看您要用哪種「大型控制項」來呈現畫面。 ****
            uControl.DataSource = dr;      // DataBinding ，不用自己寫迴圈。
            uControl.DataBind();
            //**************************************************************************
        }

        // == 第四，釋放資源、關閉資料庫的連結。
        cmd1.Cancel();
        dr.Close();
        Conn.Close();


        #region  // 以下區塊，是畫面下方的分頁功能---------------------------------------------------------(start)
        if (haveRec)  
        {
            if (Pages > 0)
            {   //有傳來「頁數(p)」，而且頁數正確（大於零），出現<上一頁>、<下一頁>這些功能
                Label1.Text = "<div align='center'>";

                //** 可以把檔名刪除，只留下 ?P=  即可！一樣會運作，但IE 11會出現 JavaScript錯誤。**
                //** 抓到目前網頁的「檔名」。 System.IO.Path.GetFileName(Request.PhysicalPath) **
                //** 參閱 http://blog.miniasp.com/post/2008/02/10/How-Do-I-Get-Paths-and-URL-fragments-from-the-HttpRequest-object.aspx

                if (p > 1)
                {   //======== 分頁功能（上一頁 / 下一頁）=========start===                
                    Label1.Text += "<a href='" + System.IO.Path.GetFileName(Request.PhysicalPath) + "?p=" + (p - 1) + "'>[<<<上一頁]</a>";
                }
                Label1.Text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a href='http://127.0.0.1/'>[首頁]</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                if (p < Pages)
                {
                    Label1.Text += "<a href='" + System.IO.Path.GetFileName(Request.PhysicalPath) + "?p=" + (p + 1) + "'>[下一頁>>>]</a>";
                }   //======== 分頁功能（上一頁 / 下一頁）=========end====


                //========================================================
                //========= MIS2000 Lab.自製的「每十頁」一間隔，分頁功能=========start====
                Label2.Text = "<hr width='97%' size=1>";

                int block_page = 0;
                block_page = p / 10;   //--只取除法的整數成果（商），若有餘數也不去管它。

                if (block_page > 0)   {
                    Label2.Text += "<a href='" + System.IO.Path.GetFileName(Request.PhysicalPath) + "?p=" + (((block_page - 1) * 10) + 9) + "'> [前十頁<<]  </a>&nbsp;&nbsp;";
                }

                for (int K = 0; K <= 10; K++)   {
                    if ((block_page * 10 + K) <= Pages)
                    {   //--- Pages 資料的總頁數。共需「幾頁」來呈現所有資料？
                        if (((block_page * 10) + K) == p)
                        {   //--- p 就是「目前在第幾頁」
                            Label2.Text += "[<b>" + p + "</b>]" + "&nbsp;&nbsp;&nbsp;";
                        }
                        else   {
                            if (((block_page * 10) + K) != 0)   {
                                Label2.Text += "<a href='" + System.IO.Path.GetFileName(Request.PhysicalPath) + "?p=" + (block_page * 10 + K) + "'>" + (block_page * 10 + K) + "</a>";
                                Label2.Text += "&nbsp;&nbsp;&nbsp;";
                            }
                        }
                    }
                }  //for迴圈 end

                if ((block_page < (Pages / 10)) & (Pages >= (((block_page + 1) * 10) + 1)))   {
                    Label2.Text += "&nbsp;&nbsp;<a href='" + System.IO.Path.GetFileName(Request.PhysicalPath) + "?p=" + ((block_page + 1) * 10 + 1) + "'>  [>>後十頁]  </a>";
                }
                Label2.Text += "</div>";
                //========= MIS2000 Lab.自製的「每十頁」一間隔，分頁功能=========end====
            }
        }
        #endregion  // 以上區塊，是畫面下方的分頁功能---------------------------------------------------------(end)

    }


    // IsNumeric Function，檢查是否為整數型態？ return true or false
    // 資料來源：http://support.microsoft.com/kb/329488/zh-tw
    protected bool IsNumeric(object Expression)
    {   // Variable to collect the Return value of the TryParse method.
        bool isNum;

        // Define variable to collect out parameter of the TryParse method. If the conversion fails, the out parameter is zero.
        double retNum;

        // The TryParse method converts a string in a specified style and culture-specific format to its double-precision floating point number equivalent.
        // The TryParse method does not generate an exception if the conversion fails. If the conversion passes, True is returned. If it does not, False is returned.
        isNum = Double.TryParse(Convert.ToString(Expression), System.Globalization.NumberStyles.Any, System.Globalization.NumberFormatInfo.InvariantInfo, out retNum);

        return isNum;
    }
}