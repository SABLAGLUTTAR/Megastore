<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Megastore.pages.MyOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:GridView ID="GridView1" CssClass="table table-striped table-hover"  GridLines="None" runat="server" DataSourceID="SqlDataSource1" >
        <EmptyDataTemplate>You have no orders yet!</EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dataConn %>" ProviderName="<%$ ConnectionStrings:dataConn.ProviderName %>" SelectCommand="SELECT shipment.shipment_id as OrderNr, shipment.time_created as Date, shipment.shipping_address as Shipping, shipment.billing_address as Billing, shipment.final_price as Price, shipment_type.type_name as Type, shipment.customer_customer_email as Email FROM shipment INNER JOIN shipment_type ON shipment.shipment_type_sipment_type_id = shipment_type.sipment_type_id WHERE (shipment.customer_customer_email = @email)">
        <SelectParameters>
            <asp:QueryStringParameter Name="email" QueryStringField="email" />

        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
