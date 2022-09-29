using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strQuery = "select top 10 * from customers";
        SqlCommand cmd = new SqlCommand(strQuery);
        DataTable dt = GetData(cmd);  //--�ۤv�g���Ƶ{��
        GridView1.DataSource = dt;
        GridView1.DataBind();
       
    }
    protected void RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow )
        {
            e.Row.Attributes.Add("onmouseover", "MouseEvents(this, event)");  // �C�@�C�]<tr>�^�[�JJavaScript�S��
            e.Row.Attributes.Add("onmouseout", "MouseEvents(this, event)");  
        }
    }


    private DataTable GetData(SqlCommand cmd)
    {
        DataTable dt = new DataTable();
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;
        try
        {
            conn.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            //Response.Write(ex.Message);
            //return null;
            throw ex;
        }
        finally
        {
            conn.Close();
            sda.Dispose();
            conn.Dispose();
        }
    }
}
