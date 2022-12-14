using System;
using System.Collections;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

//----自己寫的（宣告)----
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
//----自己寫的（宣告)----


public partial class Ch14_Default_1_0_DataReader_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //=======微軟SDK文件的範本=======

        //----上面已經事先寫好NameSpace --  using System.Web.Configuration; ----     
        // Web.Config設定檔裡面的資料庫連結字串（ConnectionString），此連線名為 testConnectionString
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);

            //== 第一，連結資料庫。
            Conn.Open();   //---- 開啟連結。這時候才連結DB
        
            //== 第二，執行SQL指令。
           SqlDataReader dr = null;
           SqlCommand cmd = new SqlCommand("select [id],[test_time],[summary],[author] from [test] with(nolock)", Conn);
           dr = cmd.ExecuteReader();   //---- 執行SQL指令（Select，搜尋、查詢）取出資料

            //==第三，自由發揮，把執行後的結果呈現到畫面上。
            GridView1.DataSource = dr;
            GridView1.DataBind();    //--資料繫結

            ////==也可以自己寫迴圈，展示每一筆記錄與其中的欄位==
            //while (dr.Read())
            //{
            //    Response.Write(dr["author"] + "<br />");
            //}

            // == 第四，釋放資源、關閉資料庫的連結。       
            if (dr != null)  {
                cmd.Cancel();
                //----關閉DataReader之前，一定要先「取消」SqlCommand
                //參考資料： http://blog.darkthread.net/blogs/darkthreadtw/archive/2007/04/23/737.aspx
                dr.Close();
             }
            if (Conn.State == ConnectionState.Open)  {
                Conn.Close();
            }
        
    
    }
}
