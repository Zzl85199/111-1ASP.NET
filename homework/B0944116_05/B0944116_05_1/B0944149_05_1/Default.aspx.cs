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
        Button1.Text = "猜猜看";
        Button2.Text = "猜猜看";
        Button3.Text = "猜猜看";
        Random A = new Random();
        int R=A.Next(1, 3);
        
       if(R==1)
        {
            Button1.Text = ("你猜對了");

           
        }
         else if (R == 2)
             {
                Button2.Text = ("你猜錯了");
            Button1.Text = ("X");
        }
        else if (R == 3)
        {
            Button3.Text = ("你猜錯了");
            Button1.Text = ("X");
        }





    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button1.Text = "猜猜看";
        Button2.Text = "猜猜看";
        Button3.Text = "猜猜看";
        Random A = new Random();
        int R = A.Next(1, 3);
       
        if (R == 2)
        {
            Button2.Text = ("你猜對了");
           }  
            else if (R == 3)
            {
                Button3.Text = ("你猜錯了");
            Button2.Text = ("X");
        }
       

        else if (R == 1)
            {
                Button1.Text = ("你猜錯了");
                 Button2.Text = ("X");   
            }
       
              
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button1.Text = "猜猜看";
        Button2.Text = "猜猜看";
        Button3.Text = "猜猜看";
        Random A = new Random();
        int R = A.Next(1, 3);
      
        if (R == 3)
        {
            Button3.Text = ("你猜對了");
         }    
            else if (R == 2)
            {
                Button2.Text = ("你猜錯了");
            Button3.Text = ("X");
        }
        

        else if (R == 1)
            {
                Button1.Text = ("你猜錯了");
            Button3.Text = ("X");
        }
               
        
    }
}