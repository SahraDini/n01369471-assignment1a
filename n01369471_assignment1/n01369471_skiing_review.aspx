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
            <div class="col2">
                <h2>Provide information below to help us improve!</h2>
            <section>
                <label>First Name:</label>
                <input type="text" id="html_review_firstname" name="html_review_firstname" />
                <label>Last Name:</label>
                <input type="text" id="html_review_lastname" name="html_review_lastname" />
            </section>
            <section>
                <h3>Country:</h3>
                <label>Please select the country that you currently reside in:</label>
                <select id="html_review_country" name="html_review_country">
                    <option value="">-- Choose One --</option>
                    <option value="Canada">Canada</option>
                    <option value="United States of America">United States of America</option>
                    <option value="Mexico">Mexico</option>
                </select>
            </section>
            <section>
                <h3>We hope you enjoyed your time with us!</h3>
                <label>Would you return?</label>
                <div>
                    <input type="radio" id="html_review_return_1" name="html_review_return" value="yes" /><label for="html_review_return_1">Yes</label>
                </div>
                <div>
                    <input type="radio" id="html_review_return_2" name="html_review_return" value="maybe" /><label for="html_review_return_2">Maybe</label>
                </div>
                <div>
                    <input type="radio" id="html_review_return_3" name="html_review_return" value="no" /><label for="html_review_return_3">No</label>
                </div>
            </section>
            <section>
                <h3>What's your favourite mountain to ski on?</h3>
                <div><input type="checkbox" value="bumpymountain" id="html_review_favouritemountain_1" name="html_review_favouritemountain_1" /><label for="html_review_favouritemountain_1">Bumpy Mountain</label></div>
                <div><input type="checkbox" value="highhill" id="html_review_favouritemountain_2" name="html_review_favouritemountain_2" /><label for="html_review_favouritemountain_2">High Hill</label></div>
                <div><input type="checkbox" value="riskyhill" id="html_review_favouritemountain_3" name="html_review_favouritemountain_3" /><label for="html_review_favouritemountain_3">Risky Hill</label></div>                
            </section>
         <section>
             <h3>Thank you for your time!</h3>
             <input type="submit" value="enter" />
         </section>
           </div>
            <div class="col2">
                <h2>Skiing Review Form</h2>
            <section>
                 <h3>Provide information below to help us improve!</h3>
                 <label>First Name:</label>
                <asp:TextBox runat="server" ID="aspx_review_firstname"></asp:TextBox>
                    <label>Last Name:</label>
                  <asp:TextBox runat="server" ID="aspx_review_lastname"></asp:TextBox>
            </section>
            <section>
                <h3>Country:</h3>
                <label>Please select the country you currently reside in:</label>
                        <asp:DropDownList runat="server" ID="aspx_review_country">
                            <asp:ListItem Text="-- Choose One --" Value=""></asp:ListItem>
                            <asp:ListItem Text="Canada" Value="canada"></asp:ListItem>
                            <asp:ListItem Text="United States of America" Value="unitedstatesofamerica"></asp:ListItem>
                            <asp:ListItem Text="Mexico" Value="mexico"></asp:ListItem>
                        </asp:DropDownList>
             </section>
             <section>
                    <h3>We hoped you enjoyed your time with us!</h3>
                    <label>Would you return?</label>
                    <div>
                           <asp:RadioButtonList runat="server" ID="aspx_review_return">
                           <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                           <asp:ListItem Text="Maybe" Value="maybe"></asp:ListItem>
                           <asp:ListItem Text="No" Value="No"></asp:ListItem>
                      </asp:RadioButtonList>
                    </div>
                </section>
                 <section>
                     <h3>What's your favourite mountain to ski on?</h3>
                     <asp:CheckBoxList ID="aspx_review_favouritemountain" runat="server">
                          <asp:ListItem Text="Bumpy Mountain" Value="bumpymountain"></asp:ListItem>
                          <asp:ListItem Text="High Hill" Value="highhill"></asp:ListItem>
                          <asp:ListItem Text="Risky Hill" Value="riskyhill"></asp:ListItem>
                     </asp:CheckBoxList>
                 </section>
                <section>
                    <asp:Button runat="server" />
                </section>
            </div>
        </main>
    </form>
</body>
</html>
