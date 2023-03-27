<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="ilandetay.aspx.cs" Inherits="siteEmlak.ilandetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Insert to your webpage before the </head> -->
    <script src="sliderjs/jquery.js"></script>
    <script src="sliderjs/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderjs/amazingslider-1.css">
    <script src="sliderjs/initslider-1.js"></script>
    <!-- End of head section HTML codes -->
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 175px;
        }
        .auto-style3 {
            width: 124px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 25%;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:700px;height:auto;float:left;">
    <div style="width:700px;height:auto;float:left;">
    <div style="height:auto;float:left;width:340px;">
    <div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:320px;margin:0px auto 48px;">
        <div class="amazingslider" id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                
                <asp:DataList ID="dl_slider" runat="server">
                    <ItemTemplate>
                <li><img src="<%#Eval("resimResim") %>" alt="<%#Eval("resimAd") %>"  />

                </li>
                    </ItemTemplate>
                </asp:DataList>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="jQuery Slideshow">jQuery Slideshow</a></div>
        </div>
    </div>


    </div>
        <div style="height:auto;float:right;width:340px;margin-top:30px";>
            <asp:DataList ID="dl_detay" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="326px">
            <ItemTemplate>


            
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #EAFFFF; color: #333333; text-align: right">Oda Sayisi:</td>
                    <td class="auto-style3" style="color: #808080; background-color: #DFDFDF">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("idodaSayisi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #EAFFFF; color: #333333; text-align: right">Bina Yasi:</td>
                    <td class="auto-style3" style="color: #808080; background-color: #DFDFDF">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("idBinaYasi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #EAFFFF; color: #333333; text-align: right">Bina Kati: </td>
                    <td class="auto-style3" style="color: #808080; background-color: #DFDFDF">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("idBinaKat") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #EAFFFF; color: #333333; text-align: right">Kacinci Kati:</td>
                    <td class="auto-style3" style="color: #808080; background-color: #DFDFDF">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("idBinaKacinciKat") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #EAFFFF; color: #333333; text-align: right">Isıtma</td>
                    <td class="auto-style3" style="color: #808080; background-color: #DFDFDF">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("idIsitma") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="background-color: #EAFFFF; color: #333333; text-align: right">Esyali mi?</td>
                    <td class="auto-style3" style="color: #808080; background-color: #DFDFDF"> 
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("idEsyalimi") %>' />
                    </td>
                </tr>
            </table>
           </ItemTemplate>

            </asp:DataList>
            </div>
    </div>
    <div style="width:700px;height:auto;float:left;">
        <asp:DataList ID="dl_aciklama" runat="server" Width="700px">
            <ItemTemplate>

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("ilanAdres") %>'></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("ilanAciklama") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </ItemTemplate>
        </asp:DataList> 
    </div>
    <div style="width:700px;height:auto;float:left;margin-top:30px;">
        <asp:DataList ID="dl_ic" runat="server" Width="700px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="4">IC OZELLIK:</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_kuvet" runat="server" Checked='<%# Eval("kuvet") %>' Text=" Küvet" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_asansor" runat="server" Checked='<%# Eval("asansor") %>' Text="Asansör" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_somine" runat="server" Checked='<%# Eval("somine") %>' Text="Şömine" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_kapici" runat="server" Checked='<%# Eval("kapici") %>' Text="Kapıcı" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="width:700px;height:auto;float:left;margin-top:30px;"></div>
    <asp:DataList ID="dl_dis" runat="server" Width="700px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td colspan="4">DIŞ ÖZELLİK</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_alarm" runat="server" Checked='<%# Eval("alarm") %>' Text=" Alarm" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_park" runat="server" Checked='<%# Eval("park") %>' Text="Park" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_oyun" runat="server" Checked='<%# Eval("oyun") %>' Text="Oyun" />
                        </td>
                        <td class="auto-style5">
                            <asp:CheckBox ID="cbox_yuruyus" runat="server" Checked='<%# Eval("yuruyus") %>' Text="Yürüyüş" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
