<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/Master.master" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
     
<body>
    <div>
    
    </div>
    <asp:Panel ID="Panel3" runat="server" BackColor="Wheat">
        <b>PROPERTY EVALUATION SYSTEM</b>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="LightGray">
        <p>
            &nbsp;</p>
            <p>
                Create User Account</p>
        <p>
            &nbsp;</p>
        <p>
            
            Enter your Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
        </p>
        <p>
            Enter your Email Address:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>

            <p>
                Enter Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>
                Enter Security Question:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </p>
            <p>
                Enter Answer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Account" OnClientClick="reloadPage()" />
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>

            <p>
                &nbsp;</p>

            </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" BackColor="LightBlue">
        Select what you want to check:

        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Pollution" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Gas Prices" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Distance to Property" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="UV Index" />
        <br />
        <br />

    </asp:Panel>
        <br />
        <br />
        - Dhruv Misra
        </asp:Panel>
</body>
<script type="text/javascript">
function reloadPage()
{
 window.location.reload()
}
</script>
</html>
</asp:Content>
