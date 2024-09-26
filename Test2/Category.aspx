<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Test2.Category1" %>

<%@ Register Src="~/UserCotrol/usProductListByCategory.ascx" TagPrefix="uc1" TagName="usProductListByCategory" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:usProductListByCategory runat="server" ID="usProductListByCategory" />
</asp:Content>
