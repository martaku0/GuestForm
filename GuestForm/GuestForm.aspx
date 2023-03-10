<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestForm.aspx.cs" Inherits="GuestForm.GuestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GuestForm</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <section class="name">
            <asp:Label ID="lblName" runat="server" Text="Name" class="label"></asp:Label>
            <div class="txtbox">
                <asp:TextBox ID="tbName" runat="server" class="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorName" runat="server" ErrorMessage="To pole jest wymagane." ControlToValidate="tbName" ForeColor="DarkRed">*</asp:RequiredFieldValidator>
            </div>
        </section>
        <section class="email">
            <asp:Label ID="lblEmail" runat="server" Text="Email" class="label"></asp:Label>
            <div class="txtbox">
                <asp:TextBox ID="tbEmail" runat="server" class="textbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorEmail" runat="server" ErrorMessage="To pole jest wymagane." ControlToValidate="tbEmail" ForeColor="DarkRed">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="validatorEmail_2" runat="server" ErrorMessage="Wpisz poprawny adres email." ControlToValidate="tbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="DarkRed">*</asp:RegularExpressionValidator>
            </div>
        </section>
        <section class="inscription">            
            <asp:Label ID="lblInscription" runat="server" Text="Inscription" class="label"></asp:Label>
            <div class="txtbox">
                <asp:TextBox ID="tbInscription" runat="server" TextMode = "MultiLine" class="textbox multiline"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorInscription" runat="server" ErrorMessage="To pole jest wymagane." ControlToValidate="tbInscription" ForeColor="DarkRed">*</asp:RequiredFieldValidator>
            </div>
         </section>
        <section class="add">
            <asp:Button ID="btnAdd" runat="server" Text="Add" class="button" OnClick="btnAdd_Click"/>
        </section>
        <section class="info-online">
            <asp:Label ID="lbOnlineDescription" runat="server" Text="Guest online:" class="label"></asp:Label>
            <asp:Label ID="lbOnlineValue" runat="server" class="label guest-info">0</asp:Label>
        </section>
        <section class="total">
            <asp:Label ID="lbTotalDescription" runat="server" Text="Guest total:" class="label"></asp:Label>
            <asp:Label ID="lbTotalValue" runat="server" class="label guest-info">0</asp:Label>
        </section>
        <section class="errors">
            <asp:ValidationSummary ID="validatorSummary" runat="server" ForeColor="DarkRed" />
        </section>
    </form>
</body>
</html>
