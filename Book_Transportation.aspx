<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Book_Transportation.aspx.cs" Inherits="Event_Planing.Book_Transportation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 244px;
        }
        .auto-style5 {
            width: 244px;
            height: 22px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            height: 22px;
            width: 227px;
        }
        .auto-style10 {
            width: 376px;
        }
        .auto-style11 {
            height: 22px;
            width: 376px;
        }
        .auto-style12 {
            width: 244px;
            height: 25px;
        }
        .auto-style13 {
            height: 25px;
            width: 227px;
        }
        .auto-style14 {
            height: 25px;
            width: 376px;
        }
        .auto-style15 {
            height: 25px;
        }
        .auto-style16 {
            width: 227px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style7" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#0099FF" Text="BOOK TRANSPORTION" style="text-decoration: underline"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label2" runat="server" Text="Reporting Place" ForeColor="#0099FF"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtreplace" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label3" runat="server" Text="Reporting Time" ForeColor="#0099FF"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtretime" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label4" runat="server" Text="Event Date" ForeColor="#0099FF"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtevdate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label5" runat="server" Text="Venue" ForeColor="#0099FF"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtvenue" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label15" runat="server" Text="Booking No" ForeColor="#0099FF"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtBkngID" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label6" runat="server" Text="Travel Mode" ForeColor="#0099FF"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>BUS</asp:ListItem>
                    <asp:ListItem>CAR</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style8"></td>
            <td class="auto-style11"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <br />
            </td>
            <td class="auto-style13">

                <asp:Panel ID="Panel1" runat="server" BorderColor="#0099FF" BorderWidth="2px" Height="515px" Width="313px">
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Name Of Bus" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>NS Travel</asp:ListItem>
                        <asp:ListItem>Vivo Travel</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbltype" runat="server" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblrate" runat="server" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblbusno" runat="server" ForeColor="#0099FF"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="No Of Bus" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp; &nbsp;
                    <asp:TextBox ID="txtnobus" runat="server"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncalculate" runat="server" OnClick="btncalculate_Click" Text="Calculate" ForeColor="#0099FF" />
                    <br />
                    &nbsp;&nbsp;<br /> &nbsp; &nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Total Amount" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txttotamunt" runat="server"></asp:TextBox>
                    <br />
                    &nbsp; &nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Text="Amount of Pay Now" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtpaynow" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" OnClick="btnsubmit_Click" ForeColor="#0099FF" />
                </asp:Panel>
                </td>
            <td class="auto-style14">
                <asp:Panel ID="Panel2" runat="server" Height="517px" Width="304px" BorderColor="#0099FF" BorderWidth="2px">
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Text="Name Of Car" ForeColor="#0099FF"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Bolero</asp:ListItem>
                        <asp:ListItem>Alto</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblcartype" runat="server" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblcarrate" runat="server" ForeColor="#0099FF"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblcarno" runat="server" ForeColor="#0099FF"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="No Of Car" ForeColor="#0099FF"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtnocar" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncalcu" runat="server" Text="Calculate" OnClick="btncalcu_Click" ForeColor="#0099FF" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" Text="Total Amount" ForeColor="#0099FF"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txttotalamunt" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Text="Amount To Pay Now" ForeColor="#0099FF"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtamtpay" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsumit" runat="server" Text="SUBMIT" OnClick="btnsumit_Click" ForeColor="#0099FF" />
                </asp:Panel>
            </td>
            <td class="auto-style15">
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
