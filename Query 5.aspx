<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Query 5.aspx.vb" Inherits="Estate_Ass.Query_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert/Update Data - BILBO BAGGINS ESTATES</title>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bilbo Baggins Estate] WHERE [REFNO] = @REFNO" InsertCommand="INSERT INTO [Bilbo Baggins Estate] ([REFNO], [TOWN ], [TYPE], [BEDROOMS ], [PRICE ], [HEATING], [GARAGE ]) VALUES (@REFNO, @TOWN_, @TYPE, @BEDROOMS_, @PRICE_, @HEATING, @GARAGE_)" SelectCommand="SELECT * FROM [Bilbo Baggins Estate]" UpdateCommand="UPDATE [Bilbo Baggins Estate] SET [TOWN ] = @TOWN_, [TYPE] = @TYPE, [BEDROOMS ] = @BEDROOMS_, [PRICE ] = @PRICE_, [HEATING] = @HEATING, [GARAGE ] = @GARAGE_ WHERE [REFNO] = @REFNO">
            <DeleteParameters>
                <asp:Parameter Name="REFNO" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="REFNO" Type="Int32" />
                <asp:Parameter Name="TOWN_" Type="String" />
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="BEDROOMS_" Type="Int32" />
                <asp:Parameter Name="PRICE_" Type="Decimal" />
                <asp:Parameter Name="HEATING" Type="String" />
                <asp:Parameter Name="GARAGE_" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TOWN_" Type="String" />
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="BEDROOMS_" Type="Int32" />
                <asp:Parameter Name="PRICE_" Type="Decimal" />
                <asp:Parameter Name="HEATING" Type="String" />
                <asp:Parameter Name="GARAGE_" Type="String" />
                <asp:Parameter Name="REFNO" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="REFNO" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="REFNO" HeaderText="REFNO" ReadOnly="True" SortExpression="REFNO" />
                <asp:BoundField DataField="TOWN " HeaderText="TOWN" SortExpression="TOWN" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="BEDROOMS " HeaderText="BEDROOMS" SortExpression="BEDROOMS" />
                <asp:BoundField DataField="PRICE " HeaderText="PRICE" SortExpression="PRICE" />
                <asp:BoundField DataField="HEATING" HeaderText="HEATING" SortExpression="HEATING" />
                <asp:BoundField DataField="GARAGE " HeaderText="GARAGE" SortExpression="GARAGE" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle CssClass="grid-footer" />
            <HeaderStyle CssClass="grid-header" />
            <PagerStyle CssClass="grid-pager" HorizontalAlign="Center" />
            <RowStyle CssClass="grid-row" />
        </asp:DetailsView>
    </form>
    <p>
        <a class="link" href="Home.aspx">Back</a></p>
    <span class="auto-style1">
        <p style="margin: 1.25em 0px; color: #0d0d0d; font-family: Arial, sans-serif; font-size: 16px;">
            &nbsp;</p>
    </span>
    <div class="watermark">Website created by Ashher Ali</div>
    <span class="auto-style11">
</body>
</html>
