<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="ilanozellikekle.aspx.cs" Inherits="siteEmlak.admin.ilanozellikekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            height: 26px;
            width: 25%;
        }
        .auto-style5 {
            background-color: #102b5c;
            color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="4">&nbsp;<asp:DropDownList ID="ddl_ilan" runat="server" CssClass="ddl">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="4" style="color: #666666">İÇ ÖZELLİK</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:CheckBox ID="cbox_kuvet" runat="server" Text="Küvet" />
                        </td>
                        <td class="auto-style4">
                            <asp:CheckBox ID="cbox_asansor" runat="server" Text="Asansör" />
                        </td>
                        <td class="auto-style4">
                            <asp:CheckBox ID="cbox_somine" runat="server" Text="Şömine" />
                        </td>
                        <td class="auto-style4">
                            <asp:CheckBox ID="cbox_kapici" runat="server" Text="Kapıcı" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="4" style="color: #666666">DIŞ ÖZELLİK</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:CheckBox ID="cbox_alarm" runat="server" Text="Alarm" />
                        </td>
                        <td class="auto-style2">
                            <asp:CheckBox ID="cbox_park" runat="server" Text="Park" />
                        </td>
                        <td class="auto-style2">
                            <asp:CheckBox ID="cbox_oyun" runat="server" Text="Oyun Alanı" />
                        </td>
                        <td class="auto-style2">
                            <asp:CheckBox ID="cbox_yuruyus" runat="server" Text="Yürüyüş" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="btn_ekle" runat="server" Text="Özellik Ekle" CssClass="auto-style5" OnClick="btn_ekle_Click" />
                        </td>
                        <td class="auto-style2">
                            </td>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                </table>
</asp:Content>
