﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Event_Planing.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style96 {
            width: 100%;
        }
        .auto-style97 {
            width: 541px;
        }
        .auto-style98 {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
        
    <table class="auto-style96">
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="LOGIN"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">
                <asp:Label ID="Label2" runat="server" ForeColor="#0099FF" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" OnTextChanged="txtuname_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099FF" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>
                <asp:Button ID="btnlogin" runat="server" ForeColor="#0099FF" OnClick="btnlogin_Click" Text="LOGIN" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>Not a Registred User??<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Register Now</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" EnableViewState="False"></asp:SqlDataSource>
            </td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style98">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    

</asp:Content>
