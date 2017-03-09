<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="Megastore.pages.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

 
    

<div class="container-fluid">

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Statistics</a></li>
    <li><a data-toggle="tab" href="#menu1">Manage admin accounts</a></li>
    <li><a data-toggle="tab" href="#menu2">Manage customer accounts</a></li>
    <li><a data-toggle="tab" href="#menu3">Manage products</a></li>
    <li><a data-toggle="tab" href="#menu4">Manage orders</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>General statistics</h3>
      <table class="table table-striped table-hover ">
  <thead>
    <tr>
      
      <th>Type</th>
      <th>Information</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      
      <td>Registered users</td>
      <td>
          <asp:Label ID="labelTotalUsers" runat="server" Text="Label" ></asp:Label>
        </td>
    </tr>
    <tr>
      
      <td>Total products in stock</td>
      <td>
          <asp:Label ID="labelTotalProducts" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
     <tr>
      
      <td>Total orders</td>
      <td>
          <asp:Label ID="labelTotalOrders" runat="server" Text="Label"></asp:Label>
         </td>
    </tr>
     <tr>
      
      <td>Orders this week</td>
      <td>
          <asp:Label ID="labelOrdersWeek" runat="server" Text="N/A"></asp:Label>
         </td>
    </tr>
     <tr>
      
      <td>Orders this month</td>
      <td>
          <asp:Label ID="labelOrdersMonth" runat="server" Text="N/A"></asp:Label>
         </td>
    </tr>
     <tr>
      
      <td>Order this year</td>
      <td>
          <asp:Label ID="labelTotalYear" runat="server" Text="N/A"></asp:Label>
         </td>
    </tr>
     <tr>
      
      <td>Value of all orders</td>
      <td>
          <asp:Label ID="labelOrdersValue" runat="server" Text="Label"></asp:Label>
         </td>
    </tr>
  </tbody>
</table> 
    </div>
    <div id="menu1" class="tab-pane fade">
         
      <h3>Administrator accounts</h3>
        <br />
        <br />
        
        <asp:UpdatePanel runat="server" UpdateMode="Always" ID="updatePaneladmin"><ContentTemplate>
      <asp:GridView ID="GridView1" CssClass="table table-striped table-hover" DataKeyNames="email" GridLines="None" runat="server" AutoGenerateColumns="false" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Delete"  ShowEditButton="true"  edittext="Edit"
            canceltext="Cancel"
            updatetext="Update"
            headertext="Edit"/>
            
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="Email" ReadOnly="true" />
            <asp:BoundField DataField="first_name" HeaderText="Firstname" SortExpression="Firstname"  />
            <asp:BoundField DataField="last_name" HeaderText="Surname" SortExpression="Surname"  />
        </Columns>
    </asp:GridView>
            </ContentTemplate>
           
        </asp:UpdatePanel> 
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:dataConn %>" DeleteCommand="DELETE FROM admin WHERE email =@email" InsertCommand="INSERT INTO admin (email, first_name, last_name) VALUES (?, ?, ?)"  ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT email, first_name, last_name FROM admin" UpdateCommand="UPDATE admin SET first_name = @first_name, last_name = @last_name WHERE email = @email">
        <DeleteParameters>
            <asp:Parameter Name="email" Type="String" />
            
            
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            
            
        </UpdateParameters>
    </asp:SqlDataSource>
            
        <br />
        <br />
        <h3>Add another administrator</h3>
             
            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            <br />
    <asp:TextBox ID="TextBoxFirstName" runat="server" CssClass="form-control" placeholder="Firstname"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBoxLastName" runat="server" CssClass="form-control" placeholder="Lastname"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBoxPass" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
    <br />
    <asp:Button ID="ButtonAddAdmin" runat="server" CssClass="btn btn-default" OnClick="Button1_Click"  Text="Add" Width="127px" />
        
             

    </div>

      
    <div id="menu2" class="tab-pane fade">
      <h3>Customer accounts</h3>
        <br />
        <br />
        <asp:UpdatePanel runat="server"  ID="updatePanelCustomer"><ContentTemplate>
        <asp:GridView ID="GridView2" CssClass="table table-striped table-hover"  DataKeyNames="customer_email" GridLines="None" AutoGenerateColumns="false" runat="server" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Delete"  ShowEditButton="true"  edittext="Edit"
            canceltext="Cancel"
            updatetext="Update"
            headertext="Edit"/>

            <asp:BoundField DataField="customer_email" HeaderText="Email" SortExpression="Email" ReadOnly="true" />
            <asp:BoundField DataField="first_name" HeaderText="Firstname" SortExpression="Firstname"  />
            <asp:BoundField DataField="last_name" HeaderText="Surname" SortExpression="Surname"  />
            <asp:BoundField DataField="customer_address" HeaderText="Adress" SortExpression="Adress" />
            
        </Columns>
        </asp:GridView>
            </ContentTemplate>
            </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"  ConnectionString="<%$ ConnectionStrings:dataConn %>" DeleteCommand="DELETE FROM customer WHERE customer_email = @customer_email"  ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT first_name, last_name, customer_address, customer_email FROM customer" UpdateCommand="UPDATE customer SET first_name = @first_name, last_name = @last_name, customer_address = @customer_address WHERE customer_email = @customer_email ">
            <DeleteParameters>
                <asp:Parameter Name="customer_email" Type="String" />
                
            </DeleteParameters>
            
            <UpdateParameters>
                <asp:Parameter Name="customer_email" Type="String" />
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="customer_address" Type="String" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
      
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Manage products</h3>
        <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="updatePanelIndex"><ContentTemplate>
    <asp:GridView ID="GridView4"  CssClass="table table-striped table-hover"  DataKeyNames="Id" GridLines="None" runat="server"   DataSourceID="productsData">
       <EmptyDataTemplate>There where no products found!</EmptyDataTemplate>
         
        <Columns>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Delete"  />
            <asp:HyperLinkField Text="Edit" 
                
                DataNavigateUrlFields="Id"
                DataNavigateUrlFormatString="~\Pages\ManageProduct.aspx?Id={0}"
                Target="" />

            
            
        </Columns>
    </asp:GridView>
        </ContentTemplate>
        </asp:UpdatePanel>
    <asp:SqlDataSource ID="productsData" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT product_type.type_name AS Type, product_id As Id, product.product_name AS Name, categories.category_name AS Category, product.product_description AS Description, product.price_per_unit AS Price, product.unit AS Unit, product.image_url AS Image FROM categories INNER JOIN product ON categories.categories_id = product.categories_catogories_id INNER JOIN product_type ON product.product_type_idproduct_type = product_type.product_type_id" DeleteCommand="Delete from product where product_id=@Id">
        <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        
    </asp:SqlDataSource>

        <br />
        <br />
        <asp:Button ID="AddProduct" runat="server" CssClass="btn btn-default" OnClick="AddProduct_Click"  Text="Add" Width="127px" />
      
    </div>
      <div id="menu4" class="tab-pane fade">
      <h3>Manage orders</h3>
          <asp:GridView ID="GridView3" CssClass="table table-striped table-hover" DataKeyNames="OrderNr" GridLines="None" runat="server" DataSourceID="SqlDataSource3" >
        <EmptyDataTemplate>There are no orders!</EmptyDataTemplate>
        <Columns>
        <asp:CommandField ShowDeleteButton="True" DeleteText="Delete" 
            />
            
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT shipment.shipment_id as OrderNr, shipment.time_created as Date, shipment.shipping_address as Shipping, shipment.billing_address as Billing, shipment.final_price as Price, shipment_type.type_name as Type, shipment.customer_customer_email as Email FROM shipment INNER JOIN shipment_type ON shipment.shipment_type_sipment_type_id = shipment_type.sipment_type_id " DeleteCommand="DELETE from shipment where shipment.shipment_id=@OrderNr">
        <DeleteParameters>
        <asp:Parameter Name="OrderNr" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
    
        </UpdateParameters>
    </asp:SqlDataSource>
      <br />
      <br />
      
    </div>
  </div>
    
</div>
    

    
      

</asp:Content>