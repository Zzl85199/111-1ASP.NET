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

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Label5.Text = "姓名:" + TextBox1.Text + "<br/>" + "帳號:" + TextBox2.Text + "<br/>" + "密碼:" + TextBox3.Text;
        }
    }
}