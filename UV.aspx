<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UV.aspx.cs" Inherits="UV" MasterPageFile="~/Master.master"%>



<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <asp:Panel ID="Panel1" runat="server" BackColor="LightPink">
        UV Index Service - Gets the current UV Index for a given latitude and longitude
        <br /> <br />Latitude:: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
          
        <br />
        <br />
        Longitude:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Get UV Index" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        UV Index:
        <asp:Label ID="Label2" runat="server"></asp:Label>
          
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return to Home Page" />
          
    </asp:Panel>
</body>
</html>
</asp:Content>
