<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="Test2.ManageCategory" %>

<%@ Register Src="~/UserCotrol/ucManageCategory.ascx" TagPrefix="uc1" TagName="ucManageCategory" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageCategory runat="server" id="ucManageCategory" />
</asp:Content>
