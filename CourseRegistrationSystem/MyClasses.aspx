<%@ Page Title="MyClasses" Language="C#" MasterPageFile="~/ClassRegistrationMaster.Master" AutoEventWireup="true" CodeBehind="MyClasses.aspx.cs" Inherits="AdvCSharpQ1Project.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="MyClasses" DataKeyNames="ClassId" CellPadding="4" ForeColor="#333333" GridLines="None" BorderColor="#CCCCCC" BorderWidth="15px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="chkCtrl" runat="server"/>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ClassId" HeaderText="ClassId" SortExpression="ClassId" ReadOnly="True" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
                <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="MyClasses" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebDevProjectConnectionString2 %>" SelectCommand="pSelClassesForParticularStudent" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="StudentID" SessionField="StudentID" Type="Int32" />
                </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="ButtonUnregister" runat="server" OnClick="ButtonUnregister_Click" Text="Unregister" />
        <asp:Label ID="LabelStatus" runat="server"></asp:Label>
        <br />
        <br />
        </asp:Content>
