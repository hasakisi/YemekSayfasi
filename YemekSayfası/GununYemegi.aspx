<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekSayfası.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 320px;
        }
        .auto-style4 {
            height: 27px;
            width: 320px;
        }
        .auto-style6 {
            width: 320px;
            height: 33px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style7" Width="396px">
        <ItemTemplate>
            <table class="auto-style1" style="height: 364px">
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label3" runat="server" style="font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Malzeme</strong> :
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td style="margin-left: 40px" class="auto-style5"><strong>Tarif</strong> :
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="margin-left: 40px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; margin-left: 40px" class="auto-style5">
                        <asp:Image ID="Image1" runat="server" Height="187px" Width="320px" ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px; text-align: center;" class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="margin-left: 40px"><strong>Puan</strong>:<asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp; Eklenme Tarih</strong>:<asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="margin-left: 40px">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
