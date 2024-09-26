<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSearch.ascx.cs" Inherits="Test2.UserCotrol.ucSearch" %>
 <table style="width: 100%;">
     <tr>
         <td  Width="100px">
             <asp:Label runat="server" Text="Label" Width="100px">
                 Name: 
             </asp:Label>

         </td>
         <td>
             <asp:TextBox ID="NameSearch" runat="server"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td  Width="100px">
             <asp:Label runat="server" Text="Label" Width="100px">
             Price: 
             </asp:Label>

         </td>
         <td  Width="100px">
             <asp:TextBox ID="PriceFrom" runat="server"></asp:TextBox>
         </td>
         <td> 
             To
            <asp:TextBox ID="PriceTo" runat="server"></asp:TextBox>
         <td  Width="100px">
         </td>
     </tr>
     <tr>
         <td  Width="100px"></td>
         <td>
             <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" /></td>
     </tr>
      </table>
<asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="id" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        
         <ItemTemplate>
             <span style="background-color: #E0FFFF; color: #333333;">
                 Name:
                 <asp:Label Text='<%# Eval("Name") %>' runat="server" ID="NameLabel" /><br />
         
                 <asp:Image ID="Image1" ImageUrl='<%#"../img/Products/"  +Eval("FilePath") %>' runat="server" />
                 <br />
                 Price:
                 <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" /><br />
                 Description:
                 <asp:Label Text='<%# Eval("Description") %>' runat="server" ID="DescriptionLabel" /><br />
                 
             </span>
         </ItemTemplate>
         

     </asp:ListView>
<asp:EntityDataSource runat="server" ID="EntityDataSource1" DefaultContainerName="MyShopEntities" ConnectionString="name=MyShopEntities" EnableFlattening="False" EntitySetName="Products" EntityTypeFilter="Product" OnSelecting="EntityDataSource1_Selecting" Select="" Where="it.Name like '%' + @NameSearch + '%' AND it.Price >= @PriceFrom AND it.Price <= @PriceTo">
    <WhereParameters>
        <asp:ControlParameter ControlID="NameSearch" PropertyName="Text" Name="NameSearch" Type="String"></asp:ControlParameter>
        <asp:ControlParameter ControlID="PriceFrom" PropertyName="Text" Name="PriceFrom" Type="Decimal"></asp:ControlParameter>
        <asp:ControlParameter ControlID="PriceTo" PropertyName="Text" Name="PriceTo" Type="Decimal"></asp:ControlParameter>
    </WhereParameters>
</asp:EntityDataSource>
