<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GasPrice.aspx.cs" Inherits="GasPrice" MasterPageFile="~/Master.master"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <body>
    <asp:Panel ID="Panel1" runat="server" BackColor="#ffff99" >
        <br />
        Gas Prices Service - Finds the cheapest gas price around the provided Zip Code<br />
        <br />
        
        <br />
        <br />
        Latitude:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Longitude:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Cheapest Gas Price" />
        <br />
        <br />
        <br />
        Gas Price:&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back to Home Page" />
        <br />
        <br />

    </asp:Panel>
    </body>
</html>    
</asp:Content>

