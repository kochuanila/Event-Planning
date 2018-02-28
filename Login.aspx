<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Event_Planing.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 428px;
        }
        .auto-style2 {
            width: 274px;
        }
        .auto-style4 {
            width: 139px;
        }
        .auto-style6 {
            width: 145px;
            height: 9px;
        }
        .auto-style7 {
            width: 143px;
        }
        .auto-style8 {
            width: 428px;
            height: 21px;
        }
        .auto-style9 {
            width: 143px;
            height: 21px;
        }
        .auto-style10 {
            width: 274px;
            height: 21px;
        }
        .auto-style11 {
            height: 24px;
        }
        .auto-style12 {
            height: 21px;
        }
        .auto-style13 {
            width: 428px;
            height: 9px;
        }
        .auto-style14 {
            height: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp; &nbsp;</td>
            <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" ForeColor="#0099FF" Text="LOGIN"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="#0099FF" RepeatDirection="Horizontal">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" ForeColor="#0099FF" Text="Username"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style7"></td>
            <td class="auto-style2"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" EnableViewState="False"></asp:SqlDataSource>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099FF" Text="Password"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnlogin" runat="server" ForeColor="#0099FF" OnClick="btnlogin_Click" Text="LOGIN" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">Not a Registred User??<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Register Now</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
