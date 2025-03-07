<%@page import="java.util.List" %>
<%@page import="cn.techtutorial.dao.ProductDao" %>
<%@page import="cn.techtutorial.connection.DBCon" %>
<%@page import="cn.techtutorial.model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
ProductDao pd = new ProductDao(DBCon.getConnection());
List<Product> products = pd.getAllRedProducts();
%>

<!DOCTYPE html>
<html>

<head>
    <title>Red Flowers</title>
    <%@ include file="/includes/head.jsp" %>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5dc;
        }

        .container {
            width: 95%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        h1 span {
            font-weight: normal;
            color: #888;
        }

        .filters {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            align-items: center;
        }

        .filter {
            display: flex;
            align-items: center;
        }

        .filter label {
            margin-right: 10px;
            font-weight: bold;
        }

        .filter input {
            padding: 5px;
            cursor: pointer;
        }

        .filter select {
            padding: 5px;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .product-item {
            background-color: #fff;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        .product-item img {
            max-width: 100%;
            border-bottom: 1px solid #eee;
            margin-bottom: 10px;
        }

        .product-item p {
            margin: 10px 0;
        }

        .product-item .price {
            font-size: 18px;
            font-weight: bold;
        }

        .product-item .rating {
            display: inline-block;
            font-size: 14px;
            color: #555;
            background-color: #1acf45;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .product-item .wishlist {
            display: inline-block;
            font-size: 14px;
            color: #fff;
            background-color: #007bff;
            padding: 5px 10px;
            border-radius: 5px;
            margin-left: 10px;
            cursor: pointer;
        }

        .heart {
            font-size: 24px;
            color: grey;
            cursor: pointer;
            position: absolute;
            top: 10px;
            right: 10px;
            transition: color 0.3s;
        }

        .heart.red {
            color: red;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 14px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-dark {
            background-color: #915c83 ;
            color: #fff;
        }

        .btn-dark:hover {
            background-color: #23272b;
        }

        .btn-primary {
            background-color: #dda0dd;
            color: #fff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>

<div class="container">
	<h1>Red Flowers</h1>
    <div class="product-grid" id="product-grid">
        <% if (!products.isEmpty()) {
            for (Product p : products) { %>
                <div class="product-item">
                    <span class="heart" onclick="toggleHeart(this)">&#9829;</span>
                    <a href="index2.jsp?id=<%=p.getId()%>">
                        <img src="<%=p.getImage()%>" alt="<%=p.getName()%>">
                    </a>
                    <p><%=p.getName()%></p>
                    <div class="price">&#8377 <%=p.getPrice()%></div>
                    <a href="add-to-cart?id=<%= p.getId() %>" class="btn btn-dark">Add to Cart</a>
                    <a href="Address.jsp" class="btn btn-primary">Buy Now</a>
                </div>
            <% }
        } %>
    </div>
</div>


<script>
    function toggleHeart(element) {
        element.classList.toggle('red');
    }
</script>
</body>
</html>
