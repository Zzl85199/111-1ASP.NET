using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage myMail = new MailMessage();
        myMail.From = new MailAddress(TextBox4.Text);
        myMail.To.Add(new MailAddress(TextBox1.Text));
        myMail.Priority = MailPriority.Normal;
        myMail.Subject = TextBox2.Text;
        if (CheckBox1.Checked)
        {
            myMail.IsBodyHtml = true;
            myMail.Body = "<p>" + TextBox3.Text + "</p>";
        }
        else {
            myMail.Body = TextBox3.Text;        
        }
        string uploadFile = "~/temp/";
        if (FileUpload1.HasFile) {
            uploadFile += FileUpload1.FileName;
            uploadFile = Server.MapPath(uploadFile);
            FileUpload1.SaveAs(uploadFile);
            Attachment attachedFile = new Attachment(uploadFile);
            attachedFile.Name = FileUpload1.FileName;
            myMail.Attachments.Add(attachedFile);
        }
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        smtpClient.Credentials = new System.Net.NetworkCredential(TextBox4.Text, TextBox5.Text);
        smtpClient.EnableSsl = true;
        smtpClient.Send(myMail);
        Label6.Text = "附檔電子郵件已經寄出.....<br/>";

        /*
        SmtpClient smtpServer = new SmtpClient();
        smtpServer.Host = "smtp.gmail.com";
        CredentialCache myCache = new CredentialCache();
        myCache.Add("smtp.gmail.com", 587, "login", new NetworkCredential("cguimwad@gmail.com", "587"));
        smtpServer.Credentials = myCache;
        smtpServer.Send(myMail);
        Label6.Text = "附檔電子郵件已經寄出.....<br/>";
        */
    }
}