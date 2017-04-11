using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void feedbacksubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            txtmessage.Text = "";
            txtsubject.Text = "";
            txtemail.Text = "";
            txtname.Text = "";
            Response.Write("<script>alert('Data inserted successfully')</script>");
           // Response.Write("Sent successfully");
        }
        catch (Exception) { }
    }

    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "patelrushi.it@gmail.com";
        // any address where the email will be sending
        var toAddress = txtemail.Text.ToString();
        //Password of your gmail address
        const string fromPassword = "rushi221195";
        // Passing the values and make a email formate to display
        string subject = txtsubject.Text.ToString();
        string body = "From: " + txtname.Text + "\n";
        body += "Email: " + txtemail.Text + "\n";
        body += "Subject: " + txtsubject.Text + "\n";
        body += "your feedback recived successfully";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }
}