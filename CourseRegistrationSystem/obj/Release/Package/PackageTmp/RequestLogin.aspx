<%@ Page Title="Request Login" Language="C#" MasterPageFile="~/ClassRegistrationMaster.Master" AutoEventWireup="true" CodeBehind="RequestLogin.aspx.cs" Inherits="AdvCSharpQ1Project.WebForm4" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
        <title>Login Request Page</title>
        <style type="text/css">
        .style1 {
            background-color: #CCFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="LabelName" runat="server" Text="Name" Width="130px"></asp:Label>
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator
            id="reqName"
            ControlToValidate="TextBoxName"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic" 
            ForeColor="Red" />
        <br />
        <asp:Label ID="LabelEmailAddress" runat="server" Text="Email Address" Width="130px"></asp:Label>
        <asp:TextBox ID="TextBoxEmailAddress" runat="server" ></asp:TextBox>
        <asp:RegularExpressionValidator 
            ID="expEmail" 
            runat="server" 
            ControlToValidate="TextBoxEmailAddress" 
            ErrorMessage="A valid email address is required" 
            ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$" 
            Display="Dynamic"
            ForeColor="Red" />
        <asp:RequiredFieldValidator
            id="reqEmail"
            ControlToValidate="TextBoxEmailAddress"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic"
            ForeColor="Red" />
        <br />
        <asp:Label ID="LabelLoginName" runat="server" Text="Login Name" Width="130px"></asp:Label>
        <asp:TextBox ID="TextBoxLoginName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator
            id="reqLogin"
            ControlToValidate="TextBoxLoginName"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic"
            ForeColor="Red" />
        <br />
        <asp:Label ID="LabelNewOrReactivate" runat="server" Text="New or Reactivate" Width="130px"></asp:Label>
        <asp:TextBox ID="TextBoxNewOrReactivate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator
            id="reqNewOrReactivate"
            ControlToValidate="TextBoxNewOrReactivate"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic"
            ForeColor="Red" />
        <br />
        <asp:Label ID="LabelReason" runat="server" Text="Reason for access?" Width="130px"></asp:Label>
        <asp:TextBox ID="TextBoxReason" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator
            id="reqReason"
            ControlToValidate="TextBoxReason"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic" 
            ForeColor="Red" />
        <br />
        <asp:Label ID="LabelDateNeededBy" runat="server" Text="Date needed by" Width="130px"></asp:Label>
        <asp:TextBox ID="TextBoxDateNeededBy" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator
            id="reqDateNeededBy"
            ControlToValidate="TextBoxDateNeededBy"
            Text="(Required)"  
            SetFocusOnError="true" 
            Runat="server" 
            Display="Dynamic" 
            ForeColor="Red" />
        <asp:RegularExpressionValidator 
            ID="expDate" 
            runat="server" 
            ForeColor="Red"
            SetFocusOnError="true"
            ControlToValidate="TextBoxDateNeededBy"  
            Text="Enter date in mm/dd/yyyy or mm-dd-yyyy format"
            ValidationExpression="^([0-9]{1,2})[./-]+([0-9]{1,2})[./-]+([0-9]{2}|[0-9]{4})$" Display="Dynamic"/>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Request Login" Width="203px" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="LabelInfo" runat="server" Text="A Password will be sent to you once a staff member has manually gone over your request"></asp:Label>
    </div>
</asp:Content>
