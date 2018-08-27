using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace EMF
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Btn_SendMail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new System.Net.NetworkCredential("surveydck@gmail.com", "10121993CAN");
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress("surveydck@gmail.com", "Test");
            mail.To.Add(new MailAddress("yazilim@dogruyer.com.tr"));
            mail.CC.Add(new MailAddress("webyazilim@dogruyer.com.tr"));
            mail.Body = txtad.Text + txtemail.Text + txttel.Text + txtBody.Text;
            

            smtpClient.Send(mail);
        }
    }
}