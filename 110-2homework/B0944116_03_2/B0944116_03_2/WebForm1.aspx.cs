using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B0944116_03_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            double b = Convert.ToDouble(TextBox2.Text);
            double c = Convert.ToDouble(TextBox3.Text);
            double ans = 0;
            if (a < b && c < 0)
            {
                Label5.Text = "初始值小於終止值，遞增值須為正值";
            }
            else if (a > b && c > 0)
            {
                Label5.Text = "初始值大於終止值，遞增值須為負值";
            }
            else {
                for (double i = a; i <= b; i += c){
                    ans += i;
                }
                Label5.Text = Convert.ToString(ans);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            double b = Convert.ToDouble(TextBox2.Text);
            double c = Convert.ToDouble(TextBox3.Text);
            double ans = 0;
            if (a < b && c < 0){
                Label5.Text = "初始值小於終止值，遞增值須為正值";
            }
            else if (a > b && c > 0){
                Label5.Text = "初始值大於終止值，遞增值須為負值";
            }
            else{
                while (a <= b){
                    ans += a;
                    a += c;
                }
                Label5.Text = Convert.ToString(ans);
            }
        }
    }
}