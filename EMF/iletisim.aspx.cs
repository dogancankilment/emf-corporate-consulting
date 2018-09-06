using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Net;
using System.Data;

namespace EMF
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Btn_SendMail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient("srvm07.trwww.com", 587);
            
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new System.Net.NetworkCredential("no-reply@dogruyer.com.tr", "123QWEasd");
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress("no-reply@dogruyer.com.tr", "Test");
            mail.To.Add(new MailAddress("yazilim@dogruyer.com.tr"));
            mail.CC.Add(new MailAddress("webyazilim@dogruyer.com.tr"));
            mail.Body = "<strong>www.emffren.com sitesinden mesajınız var.</strong><br><strong>İsim: </strong> " + txtad.Text + "<br><strong>E-posta: </strong>" + txtemail.Text + "<br><strong>Telefon: </strong> " + txttel.Text + "<br> <strong> Mesaj: </strong> " + txtBody.Text;
            mail.IsBodyHtml = true;

            smtpClient.Send(mail);
        }
    }
}