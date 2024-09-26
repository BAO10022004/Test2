<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Test2.Search" %>

<%@ Register Src="~/UserCotrol/ucSearch.ascx" TagPrefix="uc1" TagName="ucSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucSearch runat="server" id="ucSearch" />
</asp:Content>
