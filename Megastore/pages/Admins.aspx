<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="Megastore.pages.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <div class="alert alert-dismissible alert-success">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <strong>Access granted!</strong><a> You can now as an admin alter information regarding megastore</a>.
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
    <br />
    <br />
    <br />
    <h1>All administrators 
    </h1>
        <br />
    <asp:GridView ID="GridView1" CssClass="table table-striped table-hover"  GridLines="None" runat="server" DataSourceID="SqlDataSource1">
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
    <h1>Add an administrator</h1>
    
            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            <br />
    <asp:TextBox ID="TextBoxFirstName" runat="server" CssClass="form-control" placeholder="Firstname"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBoxLastName" runat="server" CssClass="form-control" placeholder="Lastname"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBoxPass" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
    <br />
    <asp:Button ID="ButtonAddAdmin" runat="server" OnClick="Button1_Click" Text="Button" Width="127px" />
        
    <h1>Latest orders</h1>

</asp:Content>