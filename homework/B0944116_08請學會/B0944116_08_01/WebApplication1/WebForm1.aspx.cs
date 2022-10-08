using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (Convert.ToInt32(args.Value) < 30 || Convert.ToInt32(args.Value) > 300)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(TextBox2.Text);
        double b = Convert.ToDouble(TextBox3.Text);
        double c = (b / ((a / 100) * (a / 100)));
        String d = "";
        if (RadioButton1.Checked)
            d = "先生";
        RadioButton2.Visible = false;
        if (RadioButton2.Checked)
            d = "小姐";
        RadioButton1.Visible = false;
        if (Page.IsValid)
        {
            Label5.Text = TextBox1.Text + d + "，您的BMI為" + Convert.ToString(c);
        }
    }
}