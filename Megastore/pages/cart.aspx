<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Megastore.pages.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="rightbarHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <asp:GridView ID="CartGrid" runat="server" AutoGenerateColumns="false" OnRowDeleting="RemoveSelected">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="Name" />
            <asp:BoundField DataField="price_per_unit" HeaderText="Price" />
            <asp:BoundField DataField="unit" HeaderText="Unit" />

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="delSelected" runat="server" Text="Delete" CommandName="Delete"></asp:LinkButton>

                </ItemTemplate>
                <ItemStyle Width="100px" />

            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    Total Sum:
    <asp:Label ID="totalSum" runat="server" AutoGenerateColumns="false"></asp:Label>
    <br />
    <br />

    <input type="hidden" name="upload" value="1" />
    <input type="hidden" name="return" value="http://localhost:50750/index.aspx" />
    <input type="hidden" name="cmd" value="_cart" />
    <input type="hidden" name="business" value="payment@megastore.com" />
    <input type="hidden" name="currency_code" value="SEK" />

    <% 
        ArrayList cartList = (ArrayList)Session["cartList"];
        int count = 0;

        for (int i = 0; i < cartList.Count; i++)
        {
            Megastore.product p = (Megastore.product)cartList[i];

    %>
    <input type="hidden" name="item_name_<%=i + 1 %>" value="<%=p.product_name%>" />
    <input type="hidden" name="amount_<%=i + 1 %>" value="<%=p.price_per_unit%>" />
    <input type="hidden" name="quantity_<%=i + 1 %>" value="1" />
    <%
        }
    %>



    <asp:Button ID="checkbtn" Text="Complete purchase" runat="server" PostBackUrl="https://www.sandbox.paypal.com/cgi-bin/webscr" OnClick="checkoutBtnClick" />
    ADD LOGIN CONTROL TO THIS BUTTON

</asp:Content>
