﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch04_Validator_RadioButtonList_TextBox_Validator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "A")        {
            RequiredFieldValidator1.Enabled = false;
        }
        else        {
            RequiredFieldValidator1.Enabled = true;
        }
    }
}