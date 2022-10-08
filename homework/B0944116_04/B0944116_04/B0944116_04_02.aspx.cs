using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B0944116_04
{
    public partial class B0944116_04_02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = TextBox1.Text.Replace(" ", "");

            if (s.Contains("+"))
            {
                string[] str = s.Split('+');
                Label1.Text = str[0] + "+" + str[1] + "=" + (Convert.ToDouble(str[0]) + Convert.ToDouble(str[1]));
            }
            else if (s.Contains("-"))
            {
                string[] str = s.Split('-');
                Label1.Text = str[0] + "-" + str[1] + "=" + (Convert.ToDouble(str[0]) - Convert.ToDouble(str[1]));
            }
            else if (s.Contains("*"))
            {
                string[] str = s.Split('*');
                Label1.Text = str[0] + "*" + str[1] + "=" + (Convert.ToDouble(str[0]) * Convert.ToDouble(str[1]));
            }
            else if (s.Contains("/"))
            {
                string[] str = s.Split('/');
                Label1.Text = str[0] + "/" + str[1] + "=" + (Convert.ToDouble(str[0]) / Convert.ToDouble(str[1]));
            }
        }

    }
}