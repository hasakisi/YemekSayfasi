﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekSayfası.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style7 {
            width: 50px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style8 {
            width: 51px;
        }
        .auto-style3 {
        color: #FFFFFF;
    }
    .auto-style4 {
        text-align: left;
            width: 225px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            width: 43px;
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
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Text="-" Width="43px" OnClick="Button2_Click"  />
                </td>
                <td><span class="auto-style3">Onaysız Tarif Listesi</span></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="401px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/contract_684872.png" Width="30px" /></a>  
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Text="+" Width="48px" OnClick="Button3_Click"  />
            </td>
            <td class="auto-style10">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style6" Text="-" Width="43px" OnClick="Button4_Click"   />
            </td>
            <td><span class="auto-style3">Onaylı Tarif Listesi</span></td>
        </tr>
    </table>
</asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="401px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/contract_684872.png" Width="30px" /></a>  
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>
