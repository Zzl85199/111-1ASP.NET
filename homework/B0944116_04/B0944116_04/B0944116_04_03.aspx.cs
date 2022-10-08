using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B0944116_04
{
    public partial class B0944116_04_03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random ran = new Random();
            int[] key = new int[10];
            int max = 0;
            int min = 150;
            for (int i = 0; i < key.Length; i++)
            {
                key[i] = ran.Next(150)+1;
                if (key[i] > max)
                {
                    max = key[i];
                }
                if (key[i] < min)
                {
                    min = key[i];
                }
            }
            Response.Write("陣列中的數字為：");
            foreach (int a in key) 
            {
                Response.Write(a+",");
            }
            Response.Write("</br>");
            Response.Write("最大值:" + max);
            Response.Write("</br>");
            Response.Write("最小值:" + min);
        }
    }
}