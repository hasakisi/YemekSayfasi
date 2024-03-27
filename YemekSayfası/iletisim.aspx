<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekSayfası.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        width: 167px;
    }
    .auto-style9 {
        width: 167px;
        text-align: right;
    }
    .auto-style10 {
        text-align: left;
    }
    .auto-style11 {
        height: 26px;
        text-align: center;
        font-size: large;
    }
        .auto-style12 {
            border: 1px solid #000000;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style11" colspan="2"><strong>Mesaj Yolla</strong></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Konu: </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mesaj:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style12" Height="106px" TextMode="MultiLine" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style10">
            <asp:Button ID="Button1" runat="server" Text="Gönder" Width="234px" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>
