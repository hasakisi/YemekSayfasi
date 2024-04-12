<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekSayfası.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            height: 29px;
            color: #FFFFFF;
            font-size: medium;
            width: 110px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style7 {
            font-size: medium;
            color: #FFFFFF;
            width: 110px;
        }
        .auto-style8 {
            width: 110px;
            color: #FFFFFF;
        }
        .auto-style4 {
            border: 1px solid #000000;
            border-radius: 10px;
            background-color: #9999FF;
        }
        .auto-style9 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            background-color: #66FFCC;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek Ad:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="fb8" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Malzemeler</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="fb8" Height="52px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="fb8" Height="73px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Kategori</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="225px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Yemek Resim</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="28px" OnClick="Button1_Click" Text="Güncelle" Width="225px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="36px"  Text="Günün Yemeği Yap" Width="225px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
