<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Contact Form.aspx.vb" Inherits="Estate_Ass.Contact_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - BILBO BAGGINS ESTATES</title>
    <style type="text/css">
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        .panel-title {
            font-size: 2em;
            font-family: Calibri, sans-serif;
            font-weight: bold;
            text-decoration: underline;
            font-style: italic;
            color: darkblue;
            margin-bottom: 20px;
            text-transform: uppercase;
        }
        .subheading {
            font-size: 1.75em;
            color: darkgreen;
            font-family: 'Arial', sans-serif;
            margin-bottom: 20px;
        }
        .label {
            font-size: 1.25em;
            color: #006400;
            display: block;
            margin: 10px 0;
        }
        .textbox {
            width: 50%; /* Adjusted width to make the text boxes smaller */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
        }
        .button {
            font-size: 1.25em;
            color: white;
            background-color: darkblue;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        .button:hover {
            background-color: navy;
        }
        .link {
            font-size: 1.25em;
            color: #006400;
            text-decoration: none;
            display: block;
            margin: 20px 0;
        }
        .link:hover {
            text-decoration: underline;
        }
        .note {
            font-size: 1em;
            color: #333;
            margin-top: 20px;
        }
        .watermark {
            font-size: 0.75em;
            color: #888;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel-title">BILBO BAGGINS ESTATES</div>
        <div class="subheading">Contact Form</div>
        <label class="label" for="txtName">Please provide your name:</label>
        <asp:TextBox ID="txtName" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name" CssClass="label"></asp:RequiredFieldValidator>

        <label class="label" for="txtEmail">Please enter your email address:</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your email" CssClass="label"></asp:RequiredFieldValidator>

        <label class="label" for="txtComments">Enter comments:</label>
        <asp:TextBox ID="txtComments" runat="server" CssClass="textbox" TextMode="MultiLine" Height="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComments" ErrorMessage="Please add comments" CssClass="label"></asp:RequiredFieldValidator>

        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button" />
        
        <a class="link" href="Home.aspx">Back</a>

        <div class="watermark">Website created by Ashher Ali</div>
        <asp:Panel ID="Panel2" runat="server">
        </asp:Panel>
    </form>
</body>
</html>
