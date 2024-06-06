<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Details.aspx.vb" Inherits="Estate_Ass.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Bilbo Baggins Estate] WHERE ([REFNO] = @REFNO)">
            <SelectParameters>
                <asp:QueryStringParameter Name="REFNO" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="REFNO" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="REFNO" HeaderText="REFNO" ReadOnly="True" SortExpression="REFNO"/>
                <asp:BoundField DataField="TOWN" HeaderText="TOWN" SortExpression="TOWN"/>
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE"/>
                <asp:BoundField DataField="BEDROOMS" HeaderText="BEDROOMS " SortExpression="BEDROOMS"/>
                <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE"/>
                <asp:BoundField DataField="HEATING" HeaderText="HEATING" SortExpression="HEATING"/>
                <asp:BoundField DataField="GARAGE" HeaderText="GARAGE" SortExpression="GARAGE"/>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    </form>
</body>
</html>
