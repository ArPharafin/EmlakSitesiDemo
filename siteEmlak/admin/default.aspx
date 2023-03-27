<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="siteEmlak.admin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Emlak Sitesi Yapımı | Omer Faruk YILMAZ</title>
    <style>
        *{
            margin:0;
            padding:0;
            border:0;
            text-align:center;
        }

        .txt{
            width:120px;
            height:25px;

        }
        .btn{
            width:80px;
            height:25px;
            background-color:#fff;
            color:#102b5c;
        }
    </style>
</head>
<body style="background-color :#e1e1e1; ">  
    <form id="form1" runat="server">
    <div style ="width: 500px; height :200px;margin: 0 auto; margin-top:150px;background-color:#102b5c;">
        <div style ="width:500px; height:50px;margin-top:20px; float: left; text-align:center;">
            <asp:TextBox ID="txt_kullanici" placeholder="Kullanici Adi:" runat="server" CssClass="txt" OnTextChanged="TextBox1_TextChanged" style="height: 25px" autocomplete="off"></asp:TextBox>
            </div>
        
            <div style ="width:500px; height:30px;margin-top:20px; float:left; text-align:center;">
            <asp:TextBox ID="txt_sifre" placeholder="Sifre:" runat="server" CssClass="txt" TextMode="Password" autocomplete="off"></asp:TextBox>
            </div>

            <div style ="width:500px; height:30px;margin-top:20px; float :left; text-align:center;">
                 <asp:Button ID="btn_giris" runat="server" Text="Giris: " CssClass="btn" OnClick="btn_giris_Click" />

        </div>  
             </div>
    </form>
</body>
</html>
