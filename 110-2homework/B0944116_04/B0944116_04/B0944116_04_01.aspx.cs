using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B0944116_04
{
    public partial class B0944116_04_01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random ran = new Random();
            int[] key = new int[10];
            String que = "";
            int tot = 0;
            double ave = 0; 
            for (int i = 0; i < key.Length; i++)
            {
                key[i] = ran.Next(10);
                que += Convert.ToString(key[i])+",";
                tot += key[i];
            }
            ave = (double)tot / 10;
            Label1.Text = "電腦產生的亂數為:" + que + Environment.NewLine +
                "\r\n總合為:" + tot+
                "\r\n平均為:" + ave
                ;
                
                

        }
    }
}