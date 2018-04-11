<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Event_Planing.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 318px;
        }
        .auto-style3 {
            width: 155px;
        }
        .auto-style4 {
            width: 259px;
        }
        .auto-style5 {
            width: 177px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 177px;
            height: 29px;
        }
        .auto-style8 {
            width: 259px;
            height: 29px;
        }
        .auto-style9 {
            width: 318px;
            height: 29px;
        }
        .auto-style10 {
            width: 155px;
            height: 29px;
        }
        .auto-style11 {
            height: 37px;
        }
        .auto-style12 {
            width: 177px;
            height: 37px;
        }
        .auto-style13 {
            width: 259px;
            height: 37px;
        }
        .auto-style14 {
            width: 318px;
            height: 37px;
        }
        .auto-style15 {
            width: 155px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#0099FF" style="text-decoration: underline" Text="PAYMENT"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" ForeColor="#0099FF" Text="Pay ID"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtpayid" CssClass="form-control" runat="server" Width="245px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" ForeColor="#0099FF" Text="Payment Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpaydate" CssClass="form-control" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099FF" Text="Pay Amount"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtpayamunt" CssClass="form-control" runat="server" Width="244px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" ForeColor="#0099FF" Text="Booking No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbookno" CssClass="form-control" runat="server" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="Payment Type"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>VISA</asp:ListItem>
                    <asp:ListItem>master</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label10" runat="server" ForeColor="#0099FF" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuname" runat="server" CssClass="form-control" Width="202px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" ForeColor="#0099FF" Text="Card Holder Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtholdername"  CssClass="form-control" runat="server" Width="242px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtholdername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" ForeColor="#0099FF" Text="Card Number"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcardno" CssClass="form-control" runat="server" Width="241px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcardno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" ForeColor="#0099FF" Text="CVV Number"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtcvvno" CssClass="form-control" runat="server" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcvvno" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnpay" runat="server" Text="PAY" OnClick="btnpay_Click" />
            </td>
            <td class="auto-style3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User_Home.aspx">Back</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
