<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="Megastore.pages.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

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
      <asp:GridView ID="GridView1" CssClass="table table-striped table-hover" onrowdatabound="GridView1_RowDataBound" GridLines="None" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dataConn %>" DeleteCommand="DELETE FROM admin WHERE email = ? AND ((first_name = ?) OR (first_name IS NULL AND ? IS NULL)) AND ((last_name = ?) OR (last_name IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO admin (email, first_name, last_name) VALUES (?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT email, first_name, last_name FROM admin" UpdateCommand="UPDATE admin SET first_name = ?, last_name = ? WHERE email = ? AND ((first_name = ?) OR (first_name IS NULL AND ? IS NULL)) AND ((last_name = ?) OR (last_name IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_first_name" Type="String" />
            
            <asp:Parameter Name="original_last_name" Type="String" />
            
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_first_name" Type="String" />
            
            <asp:Parameter Name="original_last_name" Type="String" />
            
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
    <asp:Button ID="ButtonAddAdmin" runat="server" CssClass="btn btn-default" OnClick="Button1_Click" Text="Add" Width="127px" />


    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Customer accounts</h3>
        <br />
        <br />
        <asp:GridView ID="GridView2" CssClass="table table-striped table-hover" onrowdatabound="GridView2_RowDataBound" GridLines="None" runat="server" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dataConn %>" DeleteCommand="DELETE FROM customer WHERE customer_email = ? AND ((first_name = ?) OR (first_name IS NULL AND ? IS NULL)) AND ((last_name = ?) OR (last_name IS NULL AND ? IS NULL)) AND ((customer_address = ?) OR (customer_address IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO customer (first_name, last_name, customer_address, customer_email) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT first_name, last_name, customer_address, customer_email FROM customer" UpdateCommand="UPDATE customer SET first_name = ?, last_name = ?, customer_address = ? WHERE customer_email = ? AND ((first_name = ?) OR (first_name IS NULL AND ? IS NULL)) AND ((last_name = ?) OR (last_name IS NULL AND ? IS NULL)) AND ((customer_address = ?) OR (customer_address IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_customer_email" Type="String" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter Name="original_customer_address" Type="String" />
                <asp:Parameter Name="original_customer_address" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="customer_address" Type="String" />
                <asp:Parameter Name="customer_email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="customer_address" Type="String" />
                <asp:Parameter Name="original_customer_email" Type="String" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter Name="original_customer_address" Type="String" />
                <asp:Parameter Name="original_customer_address" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
      
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Manage products</h3>
        <br />
        <br />
      
    </div>
      <div id="menu4" class="tab-pane fade">
      <h3>Manage orders</h3>
      <br />
      <br />
      
    </div>
  </div>
</div>

</body>
</html>
      

</asp:Content>