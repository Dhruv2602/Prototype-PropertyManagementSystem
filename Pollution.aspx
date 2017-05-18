<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pollution.aspx.cs" Inherits="Pollution" MasterPageFile="~/Master.master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <asp:Panel ID="Panel1" runat="server" BackColor="LightYellow">
<p>
        <br />
        Pollution Index Service - Returns the Air Pollution Index for the provided city where the property is located</p>
    
        Enter City Name:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Pollution" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Pollution: <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back to Home Page" />
        </p>
        <p>
            &nbsp;</p>
        </asp:Panel>
</body>
</html>
</asp:Content>