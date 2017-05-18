<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Distance.aspx.cs" Inherits="Distance" MasterPageFile="~/Master.master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <p>
        <br />
    </p>
    <body>
    <asp:Panel ID="Panel1" runat="server" BackColor="Tan">
        Distance to Property Service - Gets the distance between the property and given location<br />
        <br />

        <br />
        <br />
        Property Zipcode:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Location Zipcode:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Distance" />
        <br />
        <br />
        <br />
        Distance:
        <asp:Label ID="Label1" runat="server"></asp:Label>

        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return to Home Page" />
        <br />

    </asp:Panel>
    </body>
    </html>
</asp:Content>






