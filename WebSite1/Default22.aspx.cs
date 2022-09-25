using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default22 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label LB = GridView1.Rows[0].FindControl("Label1") as Label;
        //Response.Write(LB.Text);
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        TextBox TB = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        Response.Write("***" + TB.Text);
        Response.End();
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.SelectedIndex = e.NewSelectedIndex;
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Unselect")
        {
            GridView1.SelectedIndex = -1;
        }
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }
}