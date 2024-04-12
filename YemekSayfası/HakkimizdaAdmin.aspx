<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekSayfası.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 68px;
            color: #FFFFFF;
        }
        .auto-style4 {
            width: 42px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="+" Width="48px" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="-" Width="43px" style="margin-left: 0px" />
            </td>
            <td><span class="auto-style3"><strong>Hakkımızda</strong></span></td>
        </tr>
    </table>
</asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="155px" Width="381px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" CssClass="fb8" Height="41px" OnClick="Button3_Click" Text="Güncelle" Width="151px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
