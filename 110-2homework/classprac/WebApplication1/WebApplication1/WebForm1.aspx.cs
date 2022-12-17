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
            if (!Page.IsPostBack) // First time actions
            {
                for (int i = 0; i < 100; i++)
                {
                    DropDownList1.Items.Add((DateTime.Now.Year - i).ToString());
                }
                for (int i = 0; i < 12; i++)
                {
                    DropDownList2.Items.Add((12 - i).ToString());
                }
                for (int i = 0; i < 31; i++)
                {
                    DropDownList3.Items.Add((31 - i).ToString());
                }
                /*if (DropDownList2.Equals("1")&& DropDownList2.Equals("3")&& DropDownList2.Equals("5")&&
                    DropDownList2.Equals("7")&& DropDownList2.Equals("8")&& DropDownList2.Equals("10")&&
                    DropDownList2.Equals("12")) {
                    for (int i = 0; i < 31; i++)
                    {
                        DropDownList3.Items.Add((31 - i).ToString());
                    }
                }
                if (DropDownList2.Equals("2") && DropDownList2.Equals("4") && DropDownList2.Equals("6") &&
                    DropDownList2.Equals("9") && DropDownList2.Equals("11") )
                {
                    for (int i = 0; i < 30; i++)
                    {
                        DropDownList3.Items.Add((30 - i).ToString());
                    }
                }*/
                DropDownList1.SelectedValue = Convert.ToString(DateTime.Now.Year);
                DropDownList2.SelectedValue = Convert.ToString(DateTime.Now.Year);
                DropDownList3.SelectedValue = Convert.ToString(DateTime.Now.Year);
            
            
                void checkdate() { 
                     
                
                
                }
            
            }
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String s = "";
            if (CheckBox1.Checked) {
                s = "男";
            }
            else s = "女";
            Label5.Text = "使用者名稱" + TextBox1.Text + "<br>密碼:" + TextBox2.Text + "\r\n姓名:" + TextBox3.Text +
                        "\r\n性別:" + s + "\r\n地址:" + TextBox5.Text + "\r\n電話:" + TextBox6.Text +
                        "\r\n生日" + DropDownList1.Text + "年" + DropDownList2.Text + "月" + DropDownList3.Text + "日" +
                        "\r\n電子郵件" + TextBox7.Text;
        }
    }
}