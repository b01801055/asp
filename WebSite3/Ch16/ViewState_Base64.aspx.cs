using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch16_ViewState_Base64 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = (Convert.ToInt32(Label1.Text) + 1).ToString();


        string VS_str = "liGGGMOdEBgjBiBsr3KXKN+puyecsPKAm025VU9W8KmE3ytVD0KgHZcZ2GGEdd6CqVPHAAfIHkA5vTO8uXxJqyhPI42twdFJ8ikNywgiXkfEVUbJQLQqvAo76Vpy5eh/CT7ujuncTE5DiQuH5AtLN19yAVMf+mi0wArHRFdYx3la4yDySwjkz8exaFhyw/WALKc8PIV8vXflUwwUEF6lN8Kx+8Ym+RmqjEYroWH4dp0nJHEXKnJACCtwN+CgAUyhAWcIl9pwvR25qU7RoohQiaxCOY2tvUC1A4/86Cjllze3m2DF5euaf5S/EFjuMXEw+dCxNVB/9LqSy8iCNwY+kz8+gxtTVBVHPlZ5quou1B9YCWUN8eVEgBFheqxl5a1A";
        byte[] decode = Convert.FromBase64String(VS_str);

        for (int i = 0; i <= (decode.Length - 1); i++)
        {
            Response.Write(decode[i].ToString());
        }
        //--資料來源：http://www.dotnetcurry.com/ShowArticle.aspx?ID=112
        Response.Write("<hr />" + System.Text.Encoding.UTF8.GetString(decode));

    }
}