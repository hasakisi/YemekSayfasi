<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekSayfası.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            border: 1px solid #000000;
            border-radius: 10px;
        }
        .auto-style6 {
            height: 29px;
            color: #FFFFFF;
            font-size: medium;
            width: 110px;
        }
        .auto-style7 {
            font-size: medium;
            color: #FFFFFF;
            width: 110px;
        }
        .auto-style8 {
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kategori Ad:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="fb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Adet</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="fb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Resim</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fb8" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="28px" OnClick="Button1_Click" Text="Güncelle" Width="164px" />
            </td>
        </tr>
    </table>
</asp:Content>
