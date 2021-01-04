using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (IsValidEmail(txtEmail.Text))
        {
            string output = "First Name: " + txtFirstName.Text + "\r\nLast Name: " + txtLastName.Text + "\r\nEmail: " + txtEmail.Text + "\r\nMessage: " + txtaMessage.Value;
            using (StreamWriter _testData = new StreamWriter(Server.MapPath("~/data.txt"), false))
            {
                _testData.WriteLine(output); // Write the file.
            }
            lblSubmitted.Visible = true;
        }
        else lblValid.Visible = true ;

    }

    public static bool IsValidEmail(string email)
    {          
        try
        {
            var addr = new System.Net.Mail.MailAddress(email);
            return addr.Address == email;
        }
        catch
        {
            return false;
        }
        
    }
}