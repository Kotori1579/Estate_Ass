<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Query 2.aspx.vb" Inherits="Estate_Ass.Query_2" %>

<!-- This is the Query 2 made by Kostandin Berdufi (22/05/2024) -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style11 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#336666">
                <span class="auto-style1"><strong style="color: #FFFFFF">BILBO BAGGINS ESTATES</strong></span></asp:Panel>
            <br />
            <span class="auto-style11">
            <a href="Query%202.aspx">Se</a></span><a href="Query%202.aspx"><span class="auto-style11">arch By Town</span></a><span class="auto-style1"><span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Query%203.aspx">&nbsp;Search By List&nbsp; </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <a href="Query%202%20(a).aspx">Search By Price </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Query%205.aspx">Insert/Update Data </a>
            <br />
            <br />
            <a href="Query%202%20(b).aspx">Search By Bedroom Number</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Query%204.aspx">More Details About The Properties </a>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<a href="Contact%20Form.aspx">Contact Us </a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Housetesting.aspx">View All Properties</a></span></span><br />
            <br />
            Please enter the town</div>
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="266px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search " />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TOWN ] AS TOWN_, [TYPE], [BEDROOMS ] AS BEDROOMS_, [PRICE ] AS PRICE_, [HEATING], [GARAGE ] AS GARAGE_, [REFNO] FROM [Bilbo Baggins Estate] WHERE ([TOWN ] LIKE '%' + @TOWN_ + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="TOWN_" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="REFNO" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="TOWN_" HeaderText="TOWN_" SortExpression="TOWN_" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="BEDROOMS_" HeaderText="BEDROOMS_" SortExpression="BEDROOMS_" />
                <asp:BoundField DataField="PRICE_" HeaderText="PRICE_" SortExpression="PRICE_" />
                <asp:BoundField DataField="HEATING" HeaderText="HEATING" SortExpression="HEATING" />
                <asp:BoundField DataField="GARAGE_" HeaderText="GARAGE_" SortExpression="GARAGE_" />
                <asp:BoundField DataField="REFNO" HeaderText="REFNO" ReadOnly="True" SortExpression="REFNO" />
                <asp:ImageField DataImageUrlField="REFNO" DataImageUrlFormatString="~/image/t{0}.png">
                </asp:ImageField>
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
    <p>
        <a href="Home.aspx">Back</a></p>
    <span class="auto-style1">
            </span>
        <span class="auto-style11">
            For more enquiries: bilbobaggins@hotmail.com</span><p>
        &nbsp;</p>
    <p>
        KOSTANDIN BERDUFI (22/05/2024)</p>
</body>
</html>
