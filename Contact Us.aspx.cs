using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Collections;
using System.Data;
using System.Configuration;

public partial class Contact_Us : System.Web.UI.Page
{
    OdbcDataAdapter odbcda;
    //SqlDataAdapter sqlda;
    DataSet ds;
    string str;
    DataTable dt;
    OdbcCommand com;
    public string[] name = { "tamsyn.murphy@gmail.com", "lutherseth@gmail.com", "info@volstruisvlei.co.za" };
    public static List<DateTime> datelist = new List<DateTime>();//Declare list as a public, and create a storing list.
    public ArrayList datesarray = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string value = radioAccomodation.SelectedItem.Value.ToString();
        string date = Calendar1.SelectedDates.ToString();
        try
         {
             //Create the msg object to be sent
             MailMessage msg = new MailMessage();
             //Add your email address to the recipients
             msg.To.Add("info@volstruisvlei.co.za");
             //Configure the address we are sending the mail from
             MailAddress address = new MailAddress(contactEmail.Text.ToString());
             msg.From = address;
             //Append their name in the beginning of the subject
             msg.Subject = "Booking Enquiry";
             msg.Body = "Name: " + contactFirstName.Text + "\n" + "Surname: " + contactLastName.Text + "\n"
                + "Email: " + contactEmail.Text + "\n" + "Contact Number: " + contactNumber.Text + "\n"
                + "Number of People: " + numberPeople.Text + "\n" + "Accomodation: " + value + "\n" + "\n" + "Additional Information: \n"
                + contactMessage.Text + "\n";

             //Configure an SmtpClient to send the mail.
             SmtpClient client = new SmtpClient("nicholson.aserv.co.za");
             client.EnableSsl = false; //only enable this if your provider requires it
             //Setup credentials to login to our sender email address ("UserName", "Password")
             NetworkCredential credentials = new NetworkCredential("info@volstruisvlei.co.za", "Bush4lapa#15");
             client.Credentials = credentials;

             //Send the msg
             client.Send(msg);

             //Display some feedback to the user to let them know it was sent
             Response.Write("<script type=\"text/javascript\">alert('Thank you for your query, we will be in touch shortly');</script>");

             //Clear the form
             contactFirstName.Text = "";
             contactLastName.Text = "";
             contactEmail.Text = "";
             contactNumber.Text = "";
             contactMessage.Text = "";
             numberPeople.Text = "";
             //Calendar1.Visible = true;
         }
         catch
         {
             //If the message failed at some point, let the user know
             Response.Write("<script type=\"text/javascript\">alert('Your message has not been sent, please try again');</script>");
         }

    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {

        if (e.Day.IsSelected == true)//starts adding dates to the list that we created.
        {
            datelist.Add(e.Day.Date);
        }
        Session["SelectedDates"] = datelist;//ends the adding dates to the list created.
       
        try//start the try catch to connect to database and draw the booked days.

        {
            using (OdbcConnection connection2 = new OdbcConnection(ConfigurationManager.ConnectionStrings["MySQLConnStr"].ConnectionString))
            {
                connection2.Open();
                using (OdbcCommand command2 = new OdbcCommand("SELECT booked_dates FROM confirmed_dates", connection2))
                using (OdbcDataReader dr2 = command2.ExecuteReader())
                {
                    while (dr2.Read())
                    {
                        //Test to show calendar  
                        str = "SELECT booked_dates FROM confirmed_dates";
                        com = new OdbcCommand(str, connection2);
                        odbcda = new OdbcDataAdapter(com);
                        dt = new DataTable();
                        odbcda.Fill(dt);

                        DateTime occasionDate;

                        if (dt.Rows.Count > 0)
                        {
                            //Go through all the rows in the table
                            for (int i = 0; i < dt.Rows.Count; i++)
                            {
                                occasionDate = Convert.ToDateTime(dt.Rows[i]["booked_dates"]);
                                //If the date is in the table || (or) If the date is before today
                                if (e.Day.Date == occasionDate || e.Day.Date < DateTime.Now.Date)
                                {
                                    //Make is unselectable and change colour
                                    e.Day.IsSelectable = false;
                                    e.Cell.BackColor = System.Drawing.Color.Honeydew;
                                    e.Cell.Text = e.Day.DayNumberText;
                                }
                            }
                        }

                    }

                    //end of original statement
                    dr2.Close();
                }
                connection2.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("An error occured: " + ex.Message);
        }
    }

    //now here's the code for handling the multiple date selections.
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Session["SelectedDates"] != null)
        {
            List<DateTime> newList = (List<DateTime>)Session["SelectedDates"];
            foreach (DateTime dt in newList)
            {
                Calendar1.SelectedDates.Add(dt);
            }
        }
    }

    protected void clear_Click(object sender, EventArgs e)
    {

        Calendar1.SelectedDates.Clear();
        datelist.Clear();
    }
}