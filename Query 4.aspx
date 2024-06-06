<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Query 4.aspx.vb" Inherits="Estate_Ass.Query_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>More Details - BILBO BAGGINS ESTATES</title>
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
        <br />
        <a class="link" href="Query%202.aspx">Search Town</a>
        <a class="link" href="Query%203.aspx">Search List</a>
        <a class="link" href="Query%202%20(a).aspx">Search By Price</a>
        <a class="link" href="Query%205.aspx">Insert/Update Data</a>
        <a class="link" href="Query%202%20(b).aspx">Search Bedroom Number</a>
        <a class="link" href="Query%204.aspx">More Property Details</a>
        <a class="link" href="Housetesting.aspx">View All Properties</a>
        <a class="link" href="Contact%20Form.aspx">Contact Us</a>
        <br /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [REFNO], [TOWN ] AS TOWN_ FROM [Bilbo Baggins Estate] ORDER BY [TYPE]"></asp:SqlDataSource>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="REFNO" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="REFNO" HeaderText="REFNO" ReadOnly="True" SortExpression="REFNO" />
                    <asp:BoundField DataField="TOWN_" HeaderText="TOWN" SortExpression="TOWN" />
                    <asp:HyperLinkField DataNavigateUrlFields="REFNO" DataNavigateUrlFormatString="Details.aspx?ID={0}" DataTextField="REFNO" DataTextFormatString="View {0} Details" Text="Click Me" />
                    <asp:ImageField DataImageUrlField="REFNO" DataImageUrlFormatString="~/image/t{0}.png">
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
        </div>
        <p>
            <a class="link" href="Home.aspx">Back</a>
        </p>
        <span class="auto-style1">
            <p style="margin: 1.25em 0px; color: #0d0d0d; font-family: Arial, sans-serif; font-size: 16px;">
                &nbsp;</p>
        </span>
        <div class="watermark">Website created by Ashher Ali</div>
        <span class="auto-style11">
            For more enquiries: <a href="mailto:bilbobaggins@hotmail.com">bilbobaggins@hotmail.com</a><br />
            <br />
            KOSTANDIN BERDUFI (22/05/2024)
        </span>
    </form>
</body>
</html>
