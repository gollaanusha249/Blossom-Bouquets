<%@ page import="cn.techtutorial.dao.ProductDao" %>
<%@ page import="java.util.*" %>
<%@ page import="cn.techtutorial.connection.DBCon" %>
<%@ page import="cn.techtutorial.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
double totalPrice = 0.0;

if (cart_list != null) {
    ProductDao pDao = new ProductDao(DBCon.getConnection());
    cartProduct = pDao.getCartProducts(cart_list);
    request.setAttribute("cart_list", cart_list);

    // Calculate total price
    for (Cart cart : cartProduct) {
        totalPrice += cart.getPrice() * cart.getQuantity();
    }
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <%@ include file="includes/header.jsp" %>
    <style type="text/css">
        .table tbody td {
            vertical-align: middle;
        }
        .btn-incre, .btn-decre {
            box-shadow: none;
            font-size: 25px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="d-flex py-3">
        <h3>Total Price: Rs.<%= totalPrice %></h3>
        <a class="mx-3 btn btn-primary" href="Address.jsp">Check out</a>
    </div>
    <table class="table table-light">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Category</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <% if (cart_list != null) {
                for (Cart c : cartProduct) { %>
            <tr>
                <td><%= c.getName() %></td>
                <td><%= c.getCategory() %></td>
                <td>$<%= String.format("%.2f", c.getPrice()) %></td>
                <td>
                    <form action="update-cart" method="post" class="form-inline">
                        <input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
                        <div class="form-group d-flex justify-content-between">
                            <button type="submit" name="action" value="decrease" class="btn btn-sm btn-decre"><i class="fas fa-minus-square"></i></button>
                            <input type="text" name="quantity" class="form-control" value="<%= c.getQuantity() %>" readonly>
                            <button type="submit" name="action" value="increase" class="btn btn-sm btn-incre"><i class="fas fa-plus-square"></i></button>
                        </div>
                    </form>
                </td>
                <td>$<%= String.format("%.2f", c.getPrice() * c.getQuantity()) %></td>
                <td>
                    <form action="remove-from-cart" method="post">
                        <input type="hidden" name="id" value="<%= c.getId() %>">
                        <button type="submit" class="btn btn-sm btn-danger">Remove</button>
                    </form>
                </td>
            </tr>
            <% } } %>
        </tbody>
    </table>
</div>

</body>
</html>
