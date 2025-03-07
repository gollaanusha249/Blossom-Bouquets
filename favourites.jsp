<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, cn.techtutorial.dao.ProductDao, cn.techtutorial.model.Product, cn.techtutorial.model.User, cn.techtutorial.dao.FavouriteDao, cn.techtutorial.connection.DBCon"%>

<%-- Retrieve authenticated user from session --%>
<% User auth = (User) request.getSession().getAttribute("auth"); %>

<%-- Initialize DAOs and fetch data --%>
<% ProductDao pd = new ProductDao(DBCon.getConnection());
   FavouriteDao fd = new FavouriteDao(DBCon.getConnection());
   List<Product> favouriteProducts = new ArrayList<>();
   if (auth != null) {
       List<Integer> favouriteProductIds = fd.getFavouriteProductIds(auth.getId());
       for (int productId : favouriteProductIds) {
           Product product = pd.getProductById(productId);
           if (product != null) {
               favouriteProducts.add(product);
           }
       }
   }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Favorite Products</title>
    <!-- Include any necessary CSS or JavaScript files -->
</head>
<body>
    <h1>Favorite Products</h1>

    <% if (auth != null && !favouriteProducts.isEmpty()) { %>
        <ul>
            <% for (Product product : favouriteProducts) { %>
                <li>
                    <strong><%= product.getName() %></strong> - <%= product.getPrice() %>
                    <!-- Add more product details as needed -->
                </li>
            <% } %>
        </ul>
    <% } else { %>
        <p>No favorite products found.</p>
    <% } %>

</body>
</html>
