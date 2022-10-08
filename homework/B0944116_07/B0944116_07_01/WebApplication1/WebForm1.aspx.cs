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
            String[] ans = new string[5];
            String[] stu = new string[5];
            double score = 0;
            double cor = 0;

            for (int i=0;i<5 ;i++) {
                ans[i] = RadioButtonList1.Text;
                stu[i]=ra
            }
            
            if (RadioButtonList1.SelectedValue == "1")
            {
                cor++;
                score += 20;
            }
            Label6.Text = "5題中答對" + cor + "題，答對率為" + score + "%，答案為CBCAB";
        }

    }
}