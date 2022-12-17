using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int ch, i, count;
        // 取得實際路徑
        string path = Server.MapPath("Output.txt");
        count = Convert.ToInt32(txtCount.Text);
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        for (i = 1; i <= count; i++)
        {
            ch = sr.Read();  // 讀取字元
            txtOutput.Text += (char)(ch) + " ";
        }
        txtOutput.Text += "\r\n";
        sr.Close(); // 關閉檔案
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int i, count;
        string path, str;
        // 取得實際路徑
        path = Server.MapPath("Output.txt");
        count = Convert.ToInt32(txtCount.Text);
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        for (i = 1; i <= count; i++)
        {
            str = sr.ReadLine();  // 讀取一行
            txtOutput.Text += str + "\r\n";
        }
        sr.Close(); // 關閉檔案
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // 取得實際路徑
        string path = Server.MapPath("Output.txt");
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        string str = sr.ReadToEnd();  // 讀至檔尾
        txtOutput.Text += str + "\r\n";
        sr.Close(); // 關閉檔案
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int count = 0;
        string textLine, path;
        // 取得實際路徑  
        path = Server.MapPath("Output.txt");
        // 開啟文字檔案
        StreamReader sr = new StreamReader(path);
        do
        {
            textLine = sr.ReadLine();
            count += 1;
            txtOutput.Text += count + ": " + textLine + "\r\n";
        } while (!(sr.Peek() == -1));
        sr.Close(); // 關閉檔案
    }
}