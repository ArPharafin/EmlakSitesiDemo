<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="ilandetayekle.aspx.cs" Inherits="siteEmlak.admin.ilandetayekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 190px;
        }
        .auto-style3 {
            width: 190px;
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="text-align: right; color: #333333;">Ilanimiz &gt;</td>
            <td>
                <asp:DropDownList ID="ddl_ilan" runat="server" CssClass="ddl">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right; color: #333333;">Oda Sayisi &gt;</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_odasayisi" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #333333;">Bina Yasi &gt;</td>
            <td>
                <asp:TextBox ID="txt_binayasi" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #333333;">Bina Kac Katli &gt;</td>
            <td>
                <asp:TextBox ID="txt_binaKat" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #333333;">Kacinci Katta &gt;</td>
            <td>
                <asp:TextBox ID="txt_kacincikat" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #333333;">Isitma &gt;</td>
            <td>
                <asp:TextBox ID="txt_isitma" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #333333;">Esyali mı ?</td>
            <td>
                <asp:CheckBox ID="cbox_esya" runat="server" Text="Evet" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #333333;">&nbsp;</td>
            <td>
                <asp:Button ID="btn_dtyEkle" runat="server" CssClass="btn" OnClick="btn_dtyEkle_Click" Text="Detay ekle" />
            </td>
        </tr>
    </table>
</asp:Content>
