using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String inout = "";
            if (RadioButton1.Checked) {
                inout = "收入";
            }
            else inout = "支出";

            string[] subs = TextBox1.Text.Split(' ');
            Label1.Text += "<hr/>" + DateTime.Now.ToShortDateString() + DateTime.Now.ToString("tt") + DateTime.Now.TimeOfDay +
            "<br>"+inout+"  :  "+subs[0]+"<br>"+subs[1]+"元";
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton2.Checked = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton1.Checked = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            TextBox1.Text=null;
        }
    }
}