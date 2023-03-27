<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="defaultkul.aspx.cs" Inherits="siteEmlak.defaultkul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Insert to your webpage before the </head> -->
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css">
    <script src="sliderengine/initslider-1.js"></script>
    <!-- End of head section HTML codes -->
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style ="width:700px;float:left;height:auto;">
    <div style="width:680px;margin:0 auto;float:left;">
    <!-- Insert to your webpage where you want to display the slider -->
    <div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:620px;margin:0px auto 48px;">
        <div class="amazingslider" id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                
                <asp:DataList ID="dl_slider" runat="server">
                    <ItemTemplate>
    <li><img src="<%#Eval("ilanVResim") %>" alt="<%#Eval("ilanBaslik") %>"  data-description="<%#Eval("ilanFiyat") %>"/></li>                        
                    </ItemTemplate>
                </asp:DataList>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <li><img src="vresim/9-Tips-for-buying-a-foreclosed-home-tn.jpg" alt="aileevi" title="aileevi" /></li>
                <li><img src="vresim/evici-tn.jpeg" alt="evici" title="evici" /></li>
                <li><img src="vresim/indir-tn.jpeg" alt="bahceli" title="bahceli" /></li>
                <li><img src="vresim/tahtadan-tn.jpeg" alt="tahtadan" title="tahtadan" /></li>
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="jQuery Slideshow">jQuery Slideshow</a></div>
        </div>
    </div>
    </div>
    </div>
    <!-- End of body section HTML codes -->
    <div style="float:left;width:700px;height:auto;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ILAN VITRIN </div>
    <div style ="width:700px;height:auto;float:left;">
        <div style="width:680px;height:auto;margin:0 auto;">
            <asp:DataList ID="dl_vitrin" runat="server" Width="680px" OnSelectedIndexChanged="dl_vitrin_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <ItemTemplate>
                    <div style="width: 200px; height: 220px; background-color: #f5f5f5;float:left;margin:13px;">
                   <div style="width:190px;margin:0 auto;height:150px;">
               <a href="ilandetay.aspx?ilanID=<%#Eval("ilanID") %>">        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("ilanVResim") %>' Width="190px" /></a>
                        </div>
                        <div style="height:30px;width:190px;margin:0 auto;color:#3d3939;">&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("ilanBaslik") %>'></asp:Label>
                        </div>
                        <div style="height:30px;width:190px;margin-top:10px;color:#3d3939; font-weight:bold;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ilanFiyat") %>'></asp:Label>
                        </div>
                        </div>
                </ItemTemplate>
            </asp:DataList>
            </div>
        </div>
</asp:Content>
