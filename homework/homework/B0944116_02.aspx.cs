using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace homework
{
    public partial class B0944116_02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double a=Convert.ToDouble(TextBox1.Text);
            double b=Convert.ToDouble(TextBox2.Text);
            Label3.Text = TextBox1.Text + "+" + TextBox2.Text + "=" + (a + b);
            Label4.Text = TextBox1.Text + "-" + TextBox2.Text + "=" + (a - b);
            Label5.Text = TextBox1.Text + "*" + TextBox2.Text + "=" + (a * b);
            Label6.Text = TextBox1.Text + "/" + TextBox2.Text + "=" + (a / b);
        }
    }
}