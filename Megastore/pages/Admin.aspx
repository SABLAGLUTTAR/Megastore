﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Megastore.pages.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/simplex/bootstrap.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Access granted!</strong> You can now as an admin alter information regarding megastore</a>.
</div>


    <h1>General statistics</h1>
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
      <td>N/A</td>
    </tr>
    <tr>
      
      <td>Total products in stock</td>
      <td>N/A</td>
    </tr>
     <tr>
      
      <td>Total orders</td>
      <td>N/A</td>
    </tr>
     <tr>
      
      <td>Orders this week</td>
      <td>N/A</td>
    </tr>
     <tr>
      
      <td>Orders this month</td>
      <td>N/A</td>
    </tr>
     <tr>
      
      <td>Order this year</td>
      <td>N/A</td>
    </tr>
     <tr>
      
      <td>Value of all orders</td>
      <td>N/A</td>
    </tr>
  </tbody>
</table> 
    <br />
    <br />
    <br />
    <h1>Add administrator</h1>
        <br />
    <br />
    <br />
    <h1>Manage products</h1>
            <br />
    <br />
    <br />
    <h1>Latest orders</h1>

</asp:Content>