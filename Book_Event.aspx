<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Book_Event.aspx.cs" Inherits="Event_Planing.Book_Event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            text-decoration: underline;
            width: 67px;
        }
        .auto-style4 {
            width: 229px;
        }
        .auto-style5 {
            height: 22px;
            width: 229px;
        }
        .auto-style6 {
            text-decoration: underline;
            width: 229px;
        }
        .auto-style7 {
            height: 24px;
        }
        .auto-style8 {
            width: 229px;
            height: 24px;
        }
        .auto-style9 {
            width: 67px;
        }
        .auto-style10 {
            height: 22px;
            width: 67px;
        }
        .auto-style11 {
            height: 24px;
            width: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" ForeColor="#0099FF" style="text-decoration: underline" Text="BOOK AN EVENT"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" ForeColor="#0099FF" Text="Booking ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBkngID" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" ForeColor="#0099FF" style="font-weight: 700" Text="Equipments"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label17" runat="server" ForeColor="#0099FF" Text="Booking Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbookdate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CheckBoxList ID="checkequi" runat="server" ForeColor="#0099FF" RepeatDirection="Horizontal">
                    <asp:ListItem>DJ</asp:ListItem>
                    <asp:ListItem>Stage</asp:ListItem>
                    <asp:ListItem>Mike &amp; Speakers</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" ForeColor="#0099FF" Text="Event Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Marriage</asp:ListItem>
                    <asp:ListItem>Birthday Party</asp:ListItem>
                    <asp:ListItem>Family Function</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btneuiptcost" runat="server" ForeColor="#0099FF" OnClick="btneuiptcost_Click" Text="Cost" />
            </td>
            <td>
                <asp:Label ID="lblcostequi" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" ForeColor="#0099FF" Text="Event Place"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtevplace" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" ForeColor="#0099FF" style="text-decoration: underline; font-weight: 700" Text="Decoration"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" ForeColor="#0099FF" Text="No Of Guest"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtnoguest" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:CheckBoxList ID="checkdectn" runat="server" ForeColor="#0099FF" RepeatDirection="Horizontal">
                    <asp:ListItem>Lighting</asp:ListItem>
                    <asp:ListItem>Flowers</asp:ListItem>
                    <asp:ListItem>Setting</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style8">
                <asp:Label ID="Label5" runat="server" ForeColor="#0099FF" Text="Event Date"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:Button ID="btndectncost" runat="server" OnClick="btndectncost_Click" Text="Cost" ForeColor="#0099FF" />
            </td>
            <td class="auto-style7">
                <asp:Label ID="lbldectncost" runat="server"></asp:Label>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" ForeColor="#0099FF" style="text-decoration: underline; font-weight: 700" Text="Food"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:CheckBoxList ID="checkfood" runat="server" ForeColor="#0099FF" RepeatDirection="Horizontal">
                    <asp:ListItem>Breakfast</asp:ListItem>
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="btncalculate" runat="server" ForeColor="#0099FF" OnClick="btncalculate_Click" Text="Calculate" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="#0099FF" RepeatDirection="Horizontal">
                    <asp:ListItem>Veg</asp:ListItem>
                    <asp:ListItem> Non Veg</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnfoodcost" runat="server" OnClick="btnfoodcost_Click" Text="Cost" ForeColor="#0099FF" />
            </td>
            <td>
                <asp:Label ID="lblfoodcost" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label15" runat="server" ForeColor="#0099FF" Text="Total Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txttotamunt" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label16" runat="server" ForeColor="#0099FF" Text="Amount To Pay Now"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpaynow" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="btnbook" runat="server" ForeColor="#0099FF" OnClick="btnbook_Click" Text="BOOK" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
