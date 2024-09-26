<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="usProductListByCategory.ascx.cs" Inherits="Test2.UserCotrol.usProductListByCategory" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="id">
    <ItemTemplate>
        <span style="background-color: #E0FFFF; color: #333333;">
            Name:
            <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /><br />
            FilePath:
            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/img/Products/"+ Eval("FilePath") %>'/>
            <br />
            Price:
            <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /><br />
            Description:
            <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
            <br />
        </span>
    </ItemTemplate>
</asp:ListView>
<asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Products"></asp:EntityDataSource>
