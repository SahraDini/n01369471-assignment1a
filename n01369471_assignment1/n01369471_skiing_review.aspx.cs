using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01369471_assignment1
{
    public partial class n01369471_skiing_review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Page.IsPostBack)
            {

                Page.Validate();


                if(Page.IsValid)
                {
                    string Review_Firstname = review_firstname.Text.ToString();
                    string Review_Lastname = review_lastname.Text.ToString();
                    string Review_Country = review_country.SelectedValue.ToString();
                    string Review_Return = review_return.SelectedValue.ToString();
                    string Review_Email = review_email.Text.ToString();
                    int Review_Rating = Convert.ToInt32(review_rating.Text);


                    skiing_review_summary.InnerHtml = "Thank you for your help! Here is what you submitted:<br>";

                    skiing_review_summary.InnerHtml += " First Name: " + Review_Firstname + "<br>";
                    skiing_review_summary.InnerHtml += " Last Name: " + Review_Lastname + "<br>";
                    skiing_review_summary.InnerHtml += " Country: " + Review_Country + "<br>";
                    skiing_review_summary.InnerHtml += " Return to location: " + Review_Return + "<br>";

                    skiing_review_summary.InnerHtml += " We can email you at: " + Review_Email + "<br>";


                    skiing_review_summary.InnerHtml += " You rated the experience as: " + Review_Rating.ToString() + "<br>";
                    if(Review_Rating==1)
                    {
                        skiing_review_summary.InnerHtml += "Highly Dissatisfied";
                    }
                    if(Review_Rating==2)
                    {
                        skiing_review_summary.InnerHtml += "Dissasstified";
                    }
                    if(Review_Rating==3)
                    {
                        skiing_review_summary.InnerHtml += "Moderate";
                    }
                    if(Review_Rating==4)
                    {
                        skiing_review_summary.InnerHtml += "Satisfied";
                    }
                    if(Review_Rating==5)
                    {
                        skiing_review_summary.InnerHtml += "Highly Satisfied";
                    }
                }

            }
        }
    }
}