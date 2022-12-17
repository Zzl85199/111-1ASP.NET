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
        string path = Server.MapPath("Output.txt");
        // 建立FileInfo物件
        FileInfo fileInfo = new FileInfo(path);
        // 建立新檔案
        StreamWriter sw = fileInfo.CreateText();
        sw.Write(txtInput.Text + "\r\n");  // 寫入
        sw.Flush();  // 將緩衝區資料寫入檔案
        sw.Close();  // 關閉檔案
        lblOutput.Text = "已經寫入：" + txtInput.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");
        // 開啟檔案
        StreamWriter sw = new StreamWriter(path);
        sw.WriteLine(txtInput.Text); // 寫入
        sw.Flush();  // 將緩衝區資料寫入檔案
        sw.Close();  // 關閉檔案
        lblOutput.Text = "已經覆寫：" + txtInput.Text;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");
        // 建立FileInfo物件
        FileInfo fileInfo = new FileInfo(path);
        // 開啟檔案新增至最後
        StreamWriter sw = fileInfo.AppendText();
        sw.Write(txtInput.Text + "\r\n");// 寫入
        sw.Flush();  // 將緩衝區資料寫入檔案
        sw.Close();  // 關閉檔案
        lblOutput.Text = "已經新增：" + txtInput.Text;
    }
}