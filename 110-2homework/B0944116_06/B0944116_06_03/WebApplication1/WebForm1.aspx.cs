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

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double tot = 0;
            string str = "";

            for (int i=0;i<ListBox1.Items.Count ;i++)
            {
                if (ListBox1.Items[i].Selected) 
                {
                    str += ListBox1.Items[i].Text+"<br/>";
                    tot += Convert.ToDouble(ListBox1.Items[i].Value);
                }
            }
            
            Label2.Text = str + "<br/>金額共:"+tot.ToString();
        }
    }
}