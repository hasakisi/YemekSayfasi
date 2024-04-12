<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajGonderen.aspx.cs" Inherits="YemekSayfası.MesajGonderen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            border: 1px solid #000000;
            border-radius: 10px;
        }
        .auto-style4 {
            color: #FFFFFF;
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
            <td class="auto-style4"><strong>Mesaj Gönderen</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Başlık</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Mail Adresi</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Mesaj İçerik</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style3" Height="113px" TextMode="MultiLine" Width="232px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
