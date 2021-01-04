<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Contact Us</title>
</head>
<body>
    <div id="container">
    <form id="contactForm" runat="server">
        
            <h1>Contact Us Form</h1>
                <div id="inputContainer">
                    <div class="inputs">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="txtInput"></asp:TextBox>
                    </div>
                    <div class="inputs">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="txtInput"></asp:TextBox>
                    </div>
                    <div class="inputs">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtInput"></asp:TextBox>
                    </div>
                    <div class="inputs">
                        <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>

                        <textarea id="txtaMessage" cols="20" name="S1" rows="2" class="txtInput" runat="server"></textarea>

                    </div>
                
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    
                    <br />
                    <br />
                    <asp:Label ID="lblValid" runat="server" Text="Please enter valid email." Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="lblSubmitted" runat="server" Text="Thanks for your inquiry! (information submitted to a .txt file in the containing folder)" Visible="False"></asp:Label>
                    <br />
                    
                </div>
        
    </form>
</div>
</body>
</html>
