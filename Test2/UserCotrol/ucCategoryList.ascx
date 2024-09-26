<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategoryList.ascx.cs" Inherits="Test2.ucCategoryList" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="EntityDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" DataKeyField="id">
    <ItemTemplate>
        <asp:HyperLink  NavigateUrl='<%# "../Category.aspx?id=" + Eval("id")%>'  Text='<%# Eval("Name") + "(" + Eval("Products.Count") +")" %>' runat="server" ID="NameLabel">
        </asp:HyperLink>
    </ItemTemplate>
</asp:DataList><asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Categories" Include="Products" EntityTypeFilter="Category"></asp:EntityDataSource>
