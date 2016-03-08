<%@ Page Title="Admin" Language="C#" MasterPageFile="~/ClassRegistrationMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AdvCSharpQ1Project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ClassesLabel" runat="server" Text="Table 1. Classes"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassId" DataSourceID="AdvCSharpQ1Project">
        <Columns>
            <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
            <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="AdvCSharpQ1Project" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString2 %>" SelectCommand="SELECT [ClassId], [ClassName], [ClassDate], [ClassDescription] FROM [Classes]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="ClassStudentsLabel" runat="server" Text="Table 2. Class Students"></asp:Label>
    <br />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ClassId,StudentId" DataSourceID="AdvCSharpQ1Project_Table2">
    <Columns>
        <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
        <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="AdvCSharpQ1Project_Table2" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString2 %>" SelectCommand="SELECT [ClassId], [StudentId] FROM [ClassStudents]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="LoginRequestsLabel" runat="server" Text="Table 3. Login Requests"></asp:Label>
    <br />
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="LoginId" DataSourceID="AdvCSharpQ1Project_Table3">
    <Columns>
        <asp:BoundField DataField="LoginId" HeaderText="LoginId" InsertVisible="False" ReadOnly="True" SortExpression="LoginId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
        <asp:BoundField DataField="LoginName" HeaderText="LoginName" SortExpression="LoginName" />
        <asp:BoundField DataField="NewOrReactivate" HeaderText="NewOrReactivate" SortExpression="NewOrReactivate" />
        <asp:BoundField DataField="ReasonForAccess" HeaderText="ReasonForAccess" SortExpression="ReasonForAccess" />
        <asp:BoundField DataField="DateNeededBy" HeaderText="DateNeededBy" SortExpression="DateNeededBy" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="AdvCSharpQ1Project_Table3" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString2 %>" SelectCommand="SELECT * FROM [LoginRequests]"></asp:SqlDataSource>
<br />
        <asp:Label ID="StudentsLabel" runat="server" Text="Table 4. Students"></asp:Label>
    <br />
<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="AdvCSharpQ1Project_Table4">
    <Columns>
        <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
        <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
        <asp:BoundField DataField="StudentEmail" HeaderText="StudentEmail" SortExpression="StudentEmail" />
        <asp:BoundField DataField="StudentLogin" HeaderText="StudentLogin" SortExpression="StudentLogin" />
        <asp:BoundField DataField="StudentPassword" HeaderText="StudentPassword" SortExpression="StudentPassword" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="AdvCSharpQ1Project_Table4" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString2 %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
<br />

</asp:Content>
