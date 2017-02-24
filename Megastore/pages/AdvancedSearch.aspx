<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdvancedSearch.aspx.cs" Inherits="Megastore.pages.AdvancedSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    <h1>Advanced Search</h1>
    <div class="searchfilter">
        <asp:TextBox runat="server" ID="searchfield" ></asp:TextBox> 
        <asp:Button runat="server" ID="searchBtn" OnClick="searchBtn_Click" Text="Search" /><br />
        <asp:CheckBox runat="server" ID="movie" Text="Movie"/><br />
        
        <asp:CheckBox runat="server" ID="game" Text="Game"/><br />
        
        <asp:CheckBox runat="server" ID="computer" Text="Computer"/><br />

        <asp:CheckBox runat="server" ID="smartphone" Text="Smartphone"/><br />
        <asp:CheckBox runat="server" ID="book" Text="Book"/>
    </div>
    <div>
        <asp:Label runat="server" ID="searchlabel" Text=""></asp:Label>
        
         <asp:GridView ID="GridView1" Font-Bold="true" AllowSorting="true" GridLines="Horizontal" runat="server" BackColor="White" Width="100%" CellPadding="5" DataSourceID="SqlDataSource1" ForeColor="Black" AutoGenerateColumns="false">
        <EmptyDataTemplate>Sorry the product was not found!</EmptyDataTemplate>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT product_type.type_name AS Type, product.product_name AS Name, categories.category_name AS Category, product.product_description AS Description, product.price_per_unit AS Price, product.unit AS Unit, product.image_url AS Image FROM categories INNER JOIN product ON categories.categories_id = product.categories_catogories_id INNER JOIN product_type ON product.product_type_idproduct_type = product_type.product_type_id WHERE (product_type.type_name =@category AND product.product_name LIKE  @name)">
             <SelectParameters>
    <asp:QueryStringParameter Name="category" QueryStringField="category" />
                 <asp:QueryStringParameter Name="name" QueryStringField="name" />
  </SelectParameters>

        </asp:SqlDataSource>

    </div>
 



</asp:Content>
