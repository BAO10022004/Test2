<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageProduct.ascx.cs" Inherits="Test2.UserCotrol.ucManageProduct" %>
<table style="width: 100%;">
    <tr>
        <td>
            PRODUCT NAME 
        </td>
        <td>
            <asp:TextBox ID="PRONAME" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>PRICE</td>
        <td>
            <asp:TextBox ID="PROPRICE" runat="server"></asp:TextBox>

        </td>
    </tr>
    <tr>
        <td>
            CATEGORY

        </td>
        <td>
            <asp:DropDownList ID="DropDownList" runat="server"  AutoPostBack="True"></asp:DropDownList>
            </td>
    </tr>
    <tr>
        <td>DESCRIPTION</td>
        <td>
            <asp:TextBox ID="PRODESCRIPTION" runat="server"></asp:TextBox>

        </td>
    </tr>
    <tr>
        <td>
            PICTURE
        </td>
        <td>
            <asp:FileUpload ID="FileUpload" runat="server" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="ADD" runat="server" Text="ADD" OnClick="ADD_Click" /></td>
    </tr>
</table>
<asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True"></asp:CommandField>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
        
       
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
       
        <asp:TemplateField HeaderText="Image Product">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/img/Products/"+ Eval("FilePath") %>'/>
            </ItemTemplate>
        </asp:TemplateField>

    </Columns>
</asp:GridView>
<asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntitySetName="Products" OnSelecting="EntityDataSource1_Selecting" OnUpdated="EntityDataSource1_Updated" OnDeleted="EntityDataSource1_Updated"></asp:EntityDataSource>
