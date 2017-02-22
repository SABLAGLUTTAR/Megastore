<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Megastore.pages.store.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <asp:Label ID="testLabel" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView1" Font-Bold="true" AllowSorting="true" GridLines="Horizontal" runat="server" Width="100%" DataSourceID="sqlTest" BackColor="#FFFFFF" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="#FFFFFF" />
        <FooterStyle BackColor="#FFFFFF" />
        <HeaderStyle BackColor="#FFFFFF" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFFFFF" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFFFF" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFFFFF" />
        <SortedAscendingHeaderStyle BackColor="#FFFFFF" />
        <SortedDescendingCellStyle BackColor="#FFFFFF" />
        <SortedDescendingHeaderStyle BackColor="#FFFFFF" />
        <Columns>

            <asp:ImageField DataImageUrlField="Image" ItemStyle-HorizontalAlign="Left" ControlStyle-Width="160px"></asp:ImageField>
            <asp:BoundField ItemStyle-Width="180px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Left" DataField="Name" HeaderText="Product name" />
            <asp:BoundField ItemStyle-Width="250px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Left" DataField="Description" HeaderText="Description" />
            <asp:BoundField ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" DataField="Type" />
            <asp:BoundField ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" DataField="Category" />
            <asp:HyperLinkField DataTextField="Price"
                ItemStyle-HorizontalAlign="Center"
                ItemStyle-Width="150px"
                DataTextFormatString="{0:c}"
                HeaderText="Price"
                Target="" />
            <asp:TemplateField ItemStyle-Width="200px" ShowHeader="false" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:LinkButton Text="Add to Cart" runat="server" CommandArgument='<%#Eval("Name")%>' CommandName="Add" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sqlTest" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT product_type.type_name AS Type, product.product_name AS Name, product.product_description AS Description, product.unit AS Unit, product.price_per_unit AS Price, product.image_url AS Image, categories.category_name AS Category FROM product_type INNER JOIN product ON product_type.product_type_id = product.product_type_idproduct_type INNER JOIN categories ON product.categories_catogories_id = categories.categories_id WHERE (product_type.type_name = @category) ">
        <SelectParameters>
            <asp:QueryStringParameter Name="category" QueryStringField="category" />

        </SelectParameters>
    </asp:SqlDataSource>



</asp:Content>
