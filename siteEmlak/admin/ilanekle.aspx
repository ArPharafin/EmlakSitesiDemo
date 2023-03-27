<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="ilanekle.aspx.cs" Inherits="siteEmlak.admin.ilanekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 189px;
    }
    .auto-style3 {
        width: 189px;
        height: 24px;
    }
    .auto-style4 {
        height: 24px;
    }
    .auto-style6 {
        width: 189px;
        height: 27px;
    }
    .auto-style7 {
        height: 27px;
    }
    .auto-style8 {
        width: 189px;
        height: 25px;
    }
    .auto-style9 {
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" style="text-align: right; color: #333333; font-weight: bold;">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right; color: #333333; font-weight: bold;">Ilanin Basligi &gt;</td>
        <td>
            <asp:TextBox ID="txt_baslik" runat="server" CssClass="txt" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right; color: #333333; font-weight: bold;">Fiyat &gt;</td>
        <td>
            <asp:TextBox ID="txt_fiyat" runat="server" CssClass="txt"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: right; color: #333333; font-weight: bold;">Kategori &gt;</td>
        <td class="auto-style4">
            <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="ddl">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: right; color: #333333; font-weight: bold;">Islem &gt;</td>
        <td class="auto-style4">
            <asp:DropDownList ID="ddl_islem" runat="server" CssClass="ddl">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="text-align: right; color: #333333; font-weight: bold;">Kimden &gt;</td>
        <td class="auto-style9">
            <asp:DropDownList ID="ddl_kimden" runat="server" CssClass="ddl" OnSelectedIndexChanged="ddl_kimden_SelectedIndexChanged">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="text-align: right; color: #333333; font-weight: bold;">Vitrin Olsun mu?</td>
        <td class="auto-style9">
            <asp:CheckBox ID="cbox_vitrin" runat="server" ForeColor="#666666" Text="Evet" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8" style="text-align: right; color: #333333; font-weight: bold;">Vitrin Resmi &gt; </td>
        <td class="auto-style9">
            <asp:FileUpload ID="fu_vitrin" runat="server" CssClass="txt" Width="400px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right; color: #333333; font-weight: bold;">Adres &gt;</td>
        <td>
            <asp:TextBox ID="txt_adres" runat="server" CssClass="txt" Height="60px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: right; color: #333333; font-weight: bold;">Aciklama &gt;</td>
        <td class="auto-style4">
            <asp:TextBox ID="txt_aciklama" runat="server" CssClass="txt" Height="60px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" style="text-align: right; color: #333333; font-weight: bold;"></td>
        <td class="auto-style7">
            <asp:Button ID="btn_ekle" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Ilan Ekle" />
        </td>
    </tr>
</table>
</asp:Content>
