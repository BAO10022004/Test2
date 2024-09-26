<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageProduct.ascx.cs" Inherits="Test2.UserCotrol.ucManageProduct" %>
<asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" AutoGenerateColumns="False" DataKeyNames="id" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True"></asp:CommandField>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
    </Columns>
</asp:GridView>
<asp:DetailsView runat="server" Width="125px" Height="50px" DataSourceID="EntityDataSource1" ID="ctl00" AllowPaging="True">
    <Fields>
        <asp:CommandField  ShowInsertButton="True"></asp:CommandField>
    </Fields>
</asp:DetailsView>
<asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntitySetName="Categories" EntityTypeFilter="Category" OnSelecting="EntityDataSource1_Selecting" OnUpdated="EntityDataSource1_Updated" OnInserted="EntityDataSource1_Updated" OnDeleted="EntityDataSource1_Updated"></asp:EntityDataSource>
