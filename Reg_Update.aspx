<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Reg_Update.aspx.cs" Inherits="Event_Planing.Reg_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
            width: 151px;
        }
        .auto-style6 {
            width: 410px;
        }
        .auto-style7 {
            height: 22px;
            width: 410px;
        }
        .auto-style9 {
            height: 22px;
            width: 386px;
        }
        .auto-style10 {
            width: 151px;
        }
        .auto-style11 {
            width: 386px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style11">&nbsp;</td>
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
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" ForeColor="#0099FF" Text="ID"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtid" CssClass="form-control" placeholder="ID" runat="server" Width="310px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" ForeColor="#0099FF" Text="Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtname" CssClass="form-control" placeholder="Name" runat="server" Width="309px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099FF" Text="Address"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtadd" CssClass="form-control" placeholder="Address" runat="server" Width="310px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="Contact"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtcontact" CssClass="form-control" placeholder="Contact" runat="server" Width="309px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label5" runat="server" ForeColor="#0099FF" Text="Email"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email" runat="server" Width="309px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label6" runat="server" ForeColor="#0099FF" Text="Username"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtuname" CssClass="form-control" placeholder="Username" runat="server" OnTextChanged="TextBox6_TextChanged" Width="309px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label7" runat="server" ForeColor="#0099FF" Text="Password"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtpass" CssClass="form-control" placeholder="Password" runat="server" Width="308px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btnselect" runat="server" ForeColor="#0099FF" OnClick="btnselect_Click" Text="SELECT" />
                <asp:Button ID="btnupdate" runat="server" ForeColor="#0099FF" OnClick="btnupdate_Click" Text="UPDATE" />
                <asp:Button ID="btnclear" runat="server" ForeColor="#0099FF" OnClick="btnclear_Click" Text="CLEAR" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
