<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="Test2.ManageCategory" %>

<%@ Register Src="~/UserCotrol/ucManageProduct.ascx" TagPrefix="uc1" TagName="ucManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageProduct runat="server" id="ucManageProduct" /> 
</asp:Content>
