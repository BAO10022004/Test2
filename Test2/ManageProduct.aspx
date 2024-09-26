<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="Test2.ManageProduct" %>

<%@ Register Src="~/UserCotrol/ucManageProduct.ascx" TagPrefix="uc1" TagName="ucManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageProduct runat="server" ID="ucManageProduct" />
</asp:Content>
