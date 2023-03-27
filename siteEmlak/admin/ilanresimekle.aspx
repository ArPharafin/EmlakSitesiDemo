<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="ilanresimekle.aspx.cs" Inherits="siteEmlak.admin.ilanresimekle" %>
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
        .auto-style5 {
            background-color: #102b5c;
            color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="text-align: right"></td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddl_ilan" runat="server" CssClass="ddl" OnSelectedIndexChanged="ddl_ilan_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resim Adi &gt;</td>
            <td>
                <asp:TextBox ID="txt_rAd" runat="server" CssClass="txt" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resim &gt; </td>
            <td>
                <asp:FileUpload ID="fu_iresim" runat="server" CssClass="txt" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right"></td>
            <td class="auto-style4">
                <asp:Button ID="btn_rEkle" runat="server" CssClass="btn" OnClick="btn_rEkle_Click" Text="Resim Ekle" />
&nbsp;<asp:Button ID="btn_bitir" runat="server" CssClass="auto-style5" Height="24px" OnClick="btn_bitir_Click1" Text="Bitir" Width="95px" />
            </td>
        </tr>
    </table>
</asp:Content>
