using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default34 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Response.Write(e.Row.RowType.ToString() + "<br>");

        if(e.Row.RowState != DataControlRowState.Edit)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (Convert.ToUInt32(e.Row.Cells[5].Text) < 60)
                {
                    e.Row.Cells[5].ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        
    }
}