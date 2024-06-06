<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Housetesting.aspx.vb" Inherits="Estate_Ass.Housetesting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View All Properties - BILBO BAGGINS ESTATES</title>
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
            background-color: #336666;
            color: #FFFFFF;
            padding: 10px;
        }
        .link {
            font-size: 1.25em;
            color: #006400;
            text-decoration: none;
            margin-right: 20px;
        }
        .link:hover {
            text-decoration: underline;
        }
        .grid-header {
            background-color: #336666;
            font-weight: bold;
            color: white;
        }
        .grid-footer, .grid-pager {
            background-color: #336666;
            color: white;
        }
        .grid-row {
            background-color: white;
            color: #333;
        }
        .selected-row {
            background-color: #339966;
            font-weight: bold;
            color: white;
        }
        .sorted-ascending {
            background-color: #F7F7F7;
        }
        .sorted-descending {
            background-color: #E5E5E5;
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Bilbo Baggins Estate]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="REFNO" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="REFNO" HeaderText="REFNO" ReadOnly="True" SortExpression="REFNO" />
                <asp:BoundField DataField="TOWN " HeaderText="TOWN" SortExpression="TOWN" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="BEDROOMS " HeaderText="BEDROOMS" SortExpression="BEDROOMS" />
                <asp:BoundField DataField="PRICE " HeaderText="PRICE" SortExpression="PRICE" />
                <asp:BoundField DataField="HEATING" HeaderText="HEATING" SortExpression="HEATING" />
                <asp:BoundField DataField="GARAGE " HeaderText="GARAGE" SortExpression="GARAGE" />
                <asp:ImageField DataImageUrlField="REFNO" DataImageUrlFormatString="~/image/t{0}.png" HeaderText="Image">
                </asp:ImageField>
            </Columns>
            <FooterStyle CssClass="grid-footer" />
            <HeaderStyle CssClass="grid-header" />
            <PagerStyle CssClass="grid-pager" HorizontalAlign="Center" />
            <RowStyle CssClass="grid-row" />
            <SelectedRowStyle CssClass="selected-row" />
            <SortedAscendingCellStyle CssClass="sorted-ascending" />
            <SortedAscendingHeaderStyle CssClass="grid-header" />
            <SortedDescendingCellStyle CssClass="sorted-descending" />
            <SortedDescendingHeaderStyle CssClass="grid-header" />
        </asp:GridView>
    </form>
    <p>
        <a class="link" href="Home.aspx">Back</a></p>
    <span class="auto-style1">
            <p style="margin: 1.25em 0px; color: #0d0d0d; font-family: Arial, sans-serif; font-size: 16px;">
                &nbsp;</p>
    </span>
    <div class="watermark">Website created by Ashher Ali</div>
</body>
</html>
