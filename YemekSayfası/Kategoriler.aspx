<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekSayfası.Kategoriler1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        color: #FFFFFF;
    }
    .auto-style4 {
        text-align: left;
    }
    .auto-style5 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server">
        <span class="auto-style3">Kategoriler Listesi</span></asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="401px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style5">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
