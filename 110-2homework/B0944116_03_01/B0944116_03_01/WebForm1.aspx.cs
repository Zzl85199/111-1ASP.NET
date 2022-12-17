using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B0944116_03_01
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            if (a <= 3 && a >= 1){
                Label3.Text = TextBox1.Text+"公斤為第三級物件，運費+基本物流處理費為"+(a*20+100)+"元。";
            }
            else if (a <= 10 && a >= 4){
                Label3.Text = TextBox1.Text + "公斤為第二級物件，運費+基本物流處理費為" + (a * 20 + 100) + "元。";
            }
            else if (a > 10){
                Label3.Text = TextBox1.Text + "公斤為第一級物件，運費+基本物流處理費為" + (a*80) + "元。";
            }
        }
    }
}