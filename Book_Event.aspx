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
                <asp:Label ID="Label6" runat="server" ForeColor="#0099FF" style="font-weight: 700; text-decoration: underline;" Text="Equipments"></asp:Label>
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
                <asp:RadioButtonList ID="rblequi" runat="server" ForeColor="#0099FF" RepeatDirection="Horizontal">
                    <asp:ListItem>DJ</asp:ListItem>
                    <asp:ListItem>Stage</asp:ListItem>
                    <asp:ListItem>DJ &amp; Stage</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
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
                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>AB auditorium</asp:ListItem>
                    <asp:ListItem>XY Hall</asp:ListItem>
                    <asp:ListItem>MN auditoriam</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="Search" />
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
                <asp:TextBox ID="txtnoguest" runat="server" OnTextChanged="txtnoguest_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RadioButtonList ID="rbldectn" runat="server" ForeColor="#0099FF" OnSelectedIndexChanged="rbldectn_SelectedIndexChanged" RepeatDirection="Horizontal">
                    <asp:ListItem>Lightings</asp:ListItem>
                    <asp:ListItem>Flowers</asp:ListItem>
                    <asp:ListItem>Lights &amp; Flowers</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
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
            <td class="auto-style6">
                <asp:Label ID="Label20" runat="server" ForeColor="#0099FF" Text="Food Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Breakfast</asp:ListItem>
                    <asp:ListItem>Lunch</asp:ListItem>
                    <asp:ListItem>Dinner</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" ForeColor="#0099FF" style="text-decoration: underline; font-weight: 700" Text="Food"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">
                <asp:RadioButtonList ID="rblfood" runat="server" ForeColor="#0099FF" RepeatDirection="Horizontal">
                    <asp:ListItem>Veg</asp:ListItem>
                    <asp:ListItem> NonVeg</asp:ListItem>
                    <asp:ListItem>Veg &amp; Non Veg</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnfoodcost" runat="server" OnClick="btnfoodcost_Click" Text="Cost" ForeColor="#0099FF" />
                <asp:Button ID="Button1" runat="server" ForeColor="#0099FF" OnClick="Button1_Click" Text="Total" />
                <asp:Label ID="lblcost" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lblfoodcost" runat="server"></asp:Label>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style5">
                <asp:Label ID="Label21" runat="server" ForeColor="#0099FF" Text="Image"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
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
                <asp:Button ID="btncalculate" runat="server" ForeColor="#0099FF" OnClick="btncalculate_Click" Text="Calculate" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
