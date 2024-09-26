<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Test2.UserCotrol.Home" %>

<asp:FormView ID="FormView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="id" AllowPaging="True">
    <EditItemTemplate>
        id:
        <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
        Name:
        <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
        FilePath:
        <asp:TextBox Text='<%# Bind("FilePath") %>' runat="server" ID="FilePathTextBox" /><br />
        Price:
        <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" /><br />
        Description:
        <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /><br />
        Category_id:
        <asp:TextBox Text='<%# Bind("Category_id") %>' runat="server" ID="Category_idTextBox" /><br />
        Category:
        <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /><br />
        <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
    </EditItemTemplate>
    <InsertItemTemplate>
        id:
        <asp:TextBox Text='<%# Bind("id") %>' runat="server" ID="idTextBox" /><br />
        Name:
        <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
        FilePath:
        <asp:TextBox Text='<%# Bind("FilePath") %>' runat="server" ID="FilePathTextBox" /><br />
        Price:
        <asp:TextBox Text='<%# Bind("Price") %>' runat="server" ID="PriceTextBox" /><br />
        Description:
        <asp:TextBox Text='<%# Bind("Description") %>' runat="server" ID="DescriptionTextBox" /><br />
        Category_id:
        <asp:TextBox Text='<%# Bind("Category_id") %>' runat="server" ID="Category_idTextBox" /><br />
        Category:
        <asp:TextBox Text='<%# Bind("Category") %>' runat="server" ID="CategoryTextBox" /><br />
        <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
    </InsertItemTemplate>
    <ItemTemplate>
        id:
        <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
        Name:
        <asp:Label Text='<%# Bind("Name") %>' runat="server" ID="NameLabel" /><br />
        FilePath:
        <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/img/Products/"+ Eval("FilePath") %>'/>
        Price:
        <asp:Label Text='<%# Bind("Price") %>' runat="server" ID="PriceLabel" /><br />
        Description:
        <asp:Label Text='<%# Bind("Description") %>' runat="server" ID="DescriptionLabel" /><br />
        Category_id:
        <asp:Label Text='<%# Bind("Category_id") %>' runat="server" ID="Category_idLabel" /><br />
        Category:
        <asp:Label Text='<%# Bind("Category") %>' runat="server" ID="CategoryLabel" /><br />

    </ItemTemplate>
</asp:FormView>
<asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Products" EntityTypeFilter="Product"></asp:EntityDataSource>

