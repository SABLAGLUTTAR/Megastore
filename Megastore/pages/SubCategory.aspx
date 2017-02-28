<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="Megastore.pages.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
  
       <asp:UpdatePanel runat="server" ID="updatePanelIndex"><ContentTemplate>
    <asp:GridView ID="GridView1" ShowHeader="False" Font-Bold="true" AllowSorting="true" GridLines="Horizontal" runat="server" BackColor="White" Width="100%" CellPadding="5" DataSourceID="sqlTest" ForeColor="Black" AutoGenerateColumns="false">

       <EmptyDataTemplate>There where no products found!</EmptyDataTemplate>
         <AlternatingRowStyle BackColor="#FFFFFF" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#ededed" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        <Columns>

            <asp:ImageField DataImageUrlField="Image" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="160px"></asp:ImageField>
            <asp:BoundField ItemStyle-Width="180px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Left" DataField="Name" HeaderText="Product name" />
            <asp:BoundField ItemStyle-Width="250px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Left" DataField="Description" HeaderText="Description" />
            <asp:HyperLinkField DataTextField="Price"
                ItemStyle-HorizontalAlign="Center"
                ItemStyle-Width="150px"
                DataTextFormatString="{0:c}"
                HeaderText="Price"
                Target="" />
            <asp:HyperLinkField Text="View Details" 
                ItemStyle-Width="200px"
                DataNavigateUrlFields="Id"
                DataNavigateUrlFormatString="~\Pages\ProductDetails.aspx?Id={0}"
                Target="" />
        </Columns>
    </asp:GridView>
        </ContentTemplate>
        </asp:UpdatePanel>
   <asp:SqlDataSource ID="sqlTest" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT product_id As Id, product_type.type_name AS Type, product.product_name AS Name, product.product_description AS Description, product.unit AS Unit, product.price_per_unit AS Price, product.image_url AS Image, categories.category_name AS Category FROM product_type INNER JOIN product ON product_type.product_type_id = product.product_type_idproduct_type INNER JOIN categories ON product.categories_catogories_id = categories.categories_id WHERE (product_type.type_name = @category AND categories.category_name = @subcat)">
        <SelectParameters>
           
    <asp:QueryStringParameter Name="category" QueryStringField="category" />
                 <asp:QueryStringParameter Name="subcat" QueryStringField="subcat" />
  </SelectParameters>
        </asp:SqlDataSource>
    
       
</asp:Content>
