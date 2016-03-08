<%@ Page Title="Login" Language="C#" MasterPageFile="~/ClassRegistrationMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AdvCSharpQ1Project.WebForm6" %>
<%@ MasterType VirtualPath="~/ClassRegistrationMaster.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Please enter your username and password to log in e.g. BSmith01 and Pa$$word" ID="LabelInstructions"></asp:Label>
    <br />
    <br />
    <asp:Label runat="server" Text="Username: " Width="75px" ID="LabelUsername"></asp:Label>
    <asp:TextBox runat="server" ID="Username"></asp:TextBox>
    <asp:RequiredFieldValidator
            id="reqUsername"
            ControlToValidate="Username"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic"
            ForeColor="Red" />
    <br />
    <asp:Label runat="server" Text="Password: " Width="75px" ID="LabelPassword"></asp:Label>
    <asp:TextBox runat="server" ID="Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator
            id="reqPassword"
            ControlToValidate="Password"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic"
            ForeColor="Red" />
    <br />
    <br />
    <asp:Button runat="server" ID="LoginButton" Text="Login" OnClick="LoginButton_Click" />
    <br />
    <br />
    <asp:Label ID="LoginError" runat="server"></asp:Label>
    <br />
    <br />
</asp:Content>
