<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="PIT" HeaderText="PIT" SortExpression="PIT" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="F_name" HeaderText="F_name" SortExpression="F_name" />
                    <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
                    <asp:BoundField DataField="CNIC" HeaderText="CNIC" SortExpression="CNIC" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="BPS" HeaderText="BPS" SortExpression="BPS" />
                    <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
                    <asp:BoundField DataField="School" HeaderText="School" SortExpression="School" />
                    <asp:BoundField DataField="SchoolID" HeaderText="SchoolID" SortExpression="SchoolID" />
                    <asp:BoundField DataField="UC" HeaderText="UC" SortExpression="UC" />
                    <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                    <asp:BoundField DataField="Longititude" HeaderText="Longititude" SortExpression="Longititude" />
                    <asp:BoundField DataField="is_delete" HeaderText="is_delete" SortExpression="is_delete" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:schoolmisterConnectionString %>" SelectCommand="SELECT * FROM [PIT]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
