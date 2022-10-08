using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int A = Convert.ToInt32(TextBox1.Text);
        int B = Convert.ToInt32(TextBox2.Text);
        int R = (int)(Math.Pow(A, 3) + Math.Pow(B, 3) - 10);
        Label3.Text = "答案:X^3+Y^3="+R.ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int A = Convert.ToInt32(TextBox1.Text);
        int B = Convert.ToInt32(TextBox2.Text);
        int R = (int)(Math.Pow(A+B, 2) - Math.Pow(A-B, 2) );
        int FR = Math.Abs(R);
        Label3.Text = "答案:|(X+Y)^2-(X-Y)^2|="+FR.ToString();
    }

    protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        int A = Convert.ToInt32(TextBox1.Text);
        int B = Convert.ToInt32(TextBox2.Text);
        int R = (A+B) * (A-B);
        Label3.Text = "答案:(X+Y)*(X-Y)="+R.ToString();
    }
}