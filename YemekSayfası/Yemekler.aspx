<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekSayfası.Yemekler" %>

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
        .auto-style12 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="+" Width="48px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6"  Text="-" Width="43px" OnClick="Button2_Click" />
                </td>
                <td><span class="auto-style3">Yemek Listesi</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="401px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil">   <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style9">
                          <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.png" Width="30px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6"  Text="+" Width="48px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style6"  Text="-" Width="43px" OnClick="Button4_Click"  />
                </td>
                <td><span class="auto-style3">Yemek Ekleme</span></td>
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
                <td><span class="auto-style3">Yemek Ad</span>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="fb8" Width="214px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><span class="auto-style3">Malzemeler</span> </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="fb8" Height="69px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Yemek Tarifi</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="fb8" Height="116px" TextMode="MultiLine" Width="217px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Kategori</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="223px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle0" runat="server" CssClass="tb5" Height="33px" Text="Ekle" Width="221px" OnClick="btnEkle0_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

