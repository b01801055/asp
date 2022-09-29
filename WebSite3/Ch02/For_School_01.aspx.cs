using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch02_For_School_01 : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		for (int i = 1; i < 6; i++)
		{
			for(int j = 1; j <= i; j++)
		    {
				Response.Write("*");
			}
			Response.Write("<br>");
		}

		Response.Write("<br><hr><br>");

		//=========================================
		//== 先寫出上面的雛形，然後再從「結果」裡面去微調數字
		//=========================================		
		int x = 0;

		for (int a = 1; a < 6; a++)
		{
			for (int b = 0; b < a; b++)
			{
				Response.Write((a+x) + "&nbsp;");
				x++;
			}
			x--;
			Response.Write("<br>");
		}

	}
}