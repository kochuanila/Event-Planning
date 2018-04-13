<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Book_Photographer.aspx.cs" Inherits="Event_Planing.Book_Photographer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style7 {
            width: 210px;
        }
        .auto-style8 {
            width: 389px;
        }
        .auto-style9 {
            width: 302px;
        }
        .auto-style10 {
            width: 302px;
            height: 22px;
        }
        .auto-style11 {
            width: 210px;
            height: 22px;
        }
        .auto-style12 {
            width: 389px;
            height: 22px;
        }
        .auto-style13 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="BOOK PHOTOGRAPHER" ForeColor="#0099FF" style="text-decoration: underline"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style2" colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label2" runat="server" ForeColor="#0099FF" Text="Booking ID"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBkngID" CssClass="form-control" runat="server" ForeColor="#0099FF" Width="322px"></asp:TextBox>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label14" runat="server" ForeColor="#0099FF" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtuname" runat="server" OnTextChanged="txtregid_TextChanged" AutoPostBack="true" CssClass="form-control" Width="320px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtuname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label15" runat="server" ForeColor="#0099FF" Text="Registration ID"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtregid" runat="server" CssClass="form-control" Width="321px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099FF" Text="Date"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtdate" CssClass="form-control" runat="server" TextMode="Date" Width="323px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="Time"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txttime" CssClass="form-control" runat="server" Width="321px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttime" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label5" runat="server" ForeColor="#0099FF" Text="Reporting Place"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtreplace" CssClass="form-control" runat="server" Width="322px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtreplace" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" ForeColor="#0099FF" Text="Reporting Time"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtretime" CssClass="form-control" runat="server" Width="322px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtretime" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label7" runat="server" ForeColor="#0099FF" Text="Venue"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtvenue" CssClass="form-control" runat="server" Width="322px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtvenue" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label8" runat="server" ForeColor="#0099FF" Text="Enter Photographer ID"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtid" CssClass="form-control" runat="server" OnTextChanged="txtid_TextChanged" AutoPostBack="true" Width="322px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/View_Photographer.aspx">View Our Photographers</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label9" runat="server" ForeColor="#0099FF" Text="Name"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtname" CssClass="form-control" runat="server" Width="321px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label10" runat="server" ForeColor="#0099FF" Text="Contact No"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtcontact" CssClass="form-control" runat="server" OnTextChanged="txtcontact_TextChanged" Width="318px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label11" runat="server" ForeColor="#0099FF" Text="Rate"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtrate" CssClass="form-control" runat="server" Width="315px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btncalculate" runat="server" OnClick="btncalculate_Click" Text="Calculate" ForeColor="#0099FF" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label13" runat="server" ForeColor="#0099FF" Text="Total Amount"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txttotamunt" CssClass="form-control" runat="server" Width="316px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label12" runat="server" ForeColor="#0099FF" Text="Amount To Pay Now"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtpaynow" CssClass="form-control" runat="server" Width="315px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnbook" runat="server" OnClick="btnbook_Click" Text="BOOK" ForeColor="#0099FF" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
