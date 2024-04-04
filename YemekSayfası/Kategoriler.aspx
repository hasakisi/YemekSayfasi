<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekSayfası.Kategoriler1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        color: #FFFFFF;
    }
    .auto-style4 {
        text-align: left;
            width: 225px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 50px;
        }
        .auto-style8 {
            width: 53px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            border: 1px solid #000000;
            border-radius: 10px;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 0px;
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
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="-" Width="43px" />
                </td>
                <td><span class="auto-style3">Kategoriler Listesi</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="401px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6"  Text="+" Width="48px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style6"  Text="-" Width="43px" OnClick="Button4_Click" />
                </td>
                <td><span class="auto-style3">Kategoriler Ekleme</span></td>
            </tr>
        </table>

    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td>Kategori Ad - </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="fb8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori İkon - </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style12" Height="33px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style11" Text="Ekle" Width="166px" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
