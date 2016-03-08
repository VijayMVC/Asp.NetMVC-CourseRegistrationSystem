<%@ Page Title="Classes" Language="C#" MasterPageFile="~/ClassRegistrationMaster.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="AdvCSharpQ1Project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            padding-left: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Height="20px" Text="Below is a list of available classes: " CssClass="newStyle1"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="SqlExpress" CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="#CCCCCC" BorderWidth="15px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
        <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
        <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
        <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BorderColor="#990000" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
&nbsp;<asp:SqlDataSource ID="SqlExpress" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString2 %>" SelectCommand="SELECT [ClassName], [ClassId], [ClassDate], [ClassDescription] FROM [Classes]"></asp:SqlDataSource>
<br />
<br />
<br />
</asp:Content>
