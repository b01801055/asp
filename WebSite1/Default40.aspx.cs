using NPOI.XWPF.UserModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default40 : System.Web.UI.Page
{
    int number1;
    int number2;
    double result;
    string math = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        switch (math)
        {
            case "+":
                result = number1 + number2;
                break;
            case "-":
                result = number1 - number2;
                break;
            case "*":
                result = number1 * number2;
                break;
            case "/":
                result = Convert.ToDouble(number1) / Convert.ToDouble(number2);
                break;
            default:
                result = 0;
                break;
        }

        Label1.Text = result.ToString();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        number1 = Convert.ToInt32(TextBox1.Text);
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        number2 = Convert.ToInt32(TextBox2.Text);
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        switch (btn.Text.ToString())
        {
            case "+":
                math += "+";
                Response.Write(number1+math+number2);
                break;
            case "-":
                math += "-";
                break;
            case "*":
                math += "*";
                break;
            case "/":
                math += "/";
                break;
            default:
                math += "@";
                break;
        }
    }
}