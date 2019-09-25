<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="n01369471_skiing_review.aspx.cs" Inherits="n01369471_assignment1.n01369471_skiing_review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skiing Review Form</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Skiing Review Form</h1>
        </section>
        <main>
                  <h2>Please fill in the form:</h2>
            <section>
                 <h3>Provide information below to help us improve!</h3>
                 <label>First Name:</label>
                <asp:TextBox runat="server" ID="review_firstname"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="review_firstname" ErrorMessage="Please enter First Name."></asp:RequiredFieldValidator>
            </section>
            <section>
                    <label>Last Name:</label>
                <asp:TextBox runat="server" ID="review_lastname"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="review_lastname" ErrorMessage="Please enter Last Name."></asp:RequiredFieldValidator>
            </section>
            <section>
                <h3>Country:</h3>
                <label>Please select the country you currently reside in:</label>
                <asp:DropDownList runat="server" ID="review_country">
                    <asp:ListItem Text="-- Choose One --" Value=""></asp:ListItem>
                    <asp:ListItem Text="Canada" Value="canada"></asp:ListItem>
                    <asp:ListItem Text="United States of America" Value="unitedstatesofamerica"></asp:ListItem>
                    <asp:ListItem Text="Mexico" Value="mexico"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="other"></asp:ListItem>
                     </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="review_country" ErrorMessage="Please select a country!"></asp:RequiredFieldValidator>
             </section>
             <section>
                <h3>We hoped you enjoyed your time with us!</h3>
             <div>
                <label>Would you return?</label>
             </div>
             <div>
               <asp:RadioButtonList runat="server" ID="review_return">
                    <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                    <asp:ListItem Text="Maybe" Value="maybe"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                      </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="review_return" ErrorMessage="Please let us know if you'll come back!"></asp:RequiredFieldValidator>
            </div>
            </section>
            <%/*There is not an author, however, the date accessed is 2019-09-24 and the site referenced is https://www.codeproject.com/Articles/3882/ASP-NET-Validators-Unclouded */%>
            <%/*The purpose I am using this is because it is from a trusted website, the expression pattern used is not perfect as stated on the site however has the basic
               understanding of valid characters, number of @ symbols and periods that can be used for an e-mail*/%>
            <section>
               <h3>What is your email?</h3>
                <asp:TextBox runat="server" ID="review_email"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="review_email" ErrorMessage="Please enter your email address"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" 
                    ControlToValidate="review_email" 
                    ErrorMessage="Please enter a valid email address." 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                </asp:RegularExpressionValidator>
             </section>
            <section>
                <h3>Rate your experience out of 5 stars! 1 beinging highly dissatisfied with the experience and 5 being highly satisfied.</h3>
                <asp:TextBox runat="server" ID="review_rating"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="review_rating" ErrorMessage="Please enter a number!"></asp:RequiredFieldValidator>
                <asp:RangeValidator runat="server"
                ControlToValidate="review_rating"
                MaximumValue="5"
                MinimumValue="1"
                ErrorMessage="Please enter a number between 1-5"></asp:RangeValidator>
            </section>
            <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>
        <section id="skiing_review_summary" runat="server">

        </section>
        <section>
            <input type="submit" value="submit" />
        </section>
   
        </main>
    </form>
</body>
</html>
