<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="GuestForm.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/style2.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Xml ID="Xml1" runat="server" DocumentSource="~/book.xml" TransformSource="~/View.xslt"></asp:Xml>
        </div>
        <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Go back" class="button back"/>
    </form>
</body>
</html>
