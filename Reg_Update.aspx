<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Reg_Update.aspx.cs" Inherits="Event_Planing.Reg_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
            width: 213px;
        }
        .auto-style6 {
            width: 410px;
        }
        .auto-style7 {
            height: 22px;
            width: 410px;
        }
        .auto-style8 {
            width: 629px;
        }
        .auto-style9 {
            height: 22px;
            width: 629px;
        }
        .auto-style10 {
            width: 213px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style5"></td>
            <td class="auto-style7">
                <asp:Label ID="Label9" runat="server" ForeColor="#0099FF" Text="Update Profile"></asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" ForeColor="#0099FF" Text="ID"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" ForeColor="#0099FF" Text="Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099FF" Text="Address"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="Contact"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label5" runat="server" ForeColor="#0099FF" Text="Email"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label6" runat="server" ForeColor="#0099FF" Text="Username"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtuname" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label7" runat="server" ForeColor="#0099FF" Text="Password"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label8" runat="server" ForeColor="#0099FF" Text="Con_password"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtconpass" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btnselect" runat="server" ForeColor="#0099FF" OnClick="btnselect_Click" Text="SELECT" />
                <asp:Button ID="btnupdate" runat="server" ForeColor="#0099FF" OnClick="btnupdate_Click" Text="UPDATE" />
                <asp:Button ID="btnclear" runat="server" ForeColor="#0099FF" OnClick="btnclear_Click" Text="CLEAR" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
