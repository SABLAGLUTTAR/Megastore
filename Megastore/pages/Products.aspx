<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Megastore.pages.store.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    
        <asp:Label ID="testLabel" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" Width="100%" DataSourceID="sqlTest" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        <Columns>

            <asp:BoundField ItemStyle-Width="150px" DataField="Name" HeaderText="Product name" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Description" HeaderText="Description" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Unit" HeaderText="In storage" />
            <asp:HyperLinkField DataTextField="Price"
                ItemStyle-Width="150px"
                DataTextFormatString="{0:c}"
                HeaderText="Price"
                Target="" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Type" HeaderText="Type" />
            <asp:BoundField ItemStyle-Width="150px" DataField="Category" HeaderText="Category" />
            <asp:ImageField DataImageUrlField="Image" ControlStyle-Width="150px" ControlStyle-Height="150px"></asp:ImageField>
            <asp:TemplateField ShowHeader="false">
                <ItemTemplate>
                    <asp:Button Text="Add to cart" runat="server"  />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlTest" runat="server" ConnectionString="<%$ ConnectionStrings:etvffqgz_megastoreEntities %>" ProviderName="<%$ ConnectionStrings:etvffqgz_megastoreEntities.ProviderName %>" SelectCommand="SELECT product_type.type_name AS Type, product.product_name AS Name, product.product_description AS Description, product.unit AS Unit, product.price_per_unit AS Price, product.image_url AS Image, categories.category_name AS Category FROM product_type INNER JOIN product ON product_type.product_type_id = product.product_type_idproduct_type INNER JOIN categories ON product.categories_catogories_id = categories.categories_id WHERE (product_type.type_name = @category) ">
             <SelectParameters>
    <asp:QueryStringParameter Name="category" QueryStringField="category" />
                 
  </SelectParameters>
        </asp:SqlDataSource>
    
      
   
</asp:Content>
