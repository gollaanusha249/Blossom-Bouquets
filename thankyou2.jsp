<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Database connection setup
    String dbURL = "jdbc:mysql://localhost:3306/flowers1";
    String dbUser = "root";
    String dbPassword = "1234";
    Connection conn = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beautiful Orchidaceous</title>
    <link rel="stylesheet" href="thankyou2.css">
</head>
<body>
	<div id="navbar-placeholder"></div>
    <nav>
        <a href="main.jsp">Home</a> &gt;
        <a href="thankyou.html">Premium Flowers</a> &gt;
        <a href="thankyou2.jsp">Beautiful Orchidaceous</a>
    </nav>
    <main>
    	
        <div class="product-container">
        
            <div class="product-images">
                <div class="image-zoom-container" id="image-zoom-container">
                    <img id="main-image" src="https://assets.winni.in/product/primary/2022/6/61608.jpeg?dpr=1&w=400" alt="Beautiful Orchidaceous">
                    <div class="zoomed-image" id="zoomed-image"></div>
                </div>
                <div class="thumbnails">
                    <img src="https://assets.winni.in/product/primary/2022/6/61608.jpeg?dpr=1&w=80" alt="Bouquet View 1" onclick="changeImage('https://assets.winni.in/product/primary/2022/6/61608.jpeg?dpr=1&w=600')">
                    <img src="https://assets.winni.in/product/primary/2022/6/61609.jpeg?dpr=1&w=80" alt="Bouquet View 2" onclick="changeImage('https://assets.winni.in/product/primary/2022/6/61609.jpeg?dpr=1&w=600')">
                    <img src="https://assets.winni.in/product/primary/2022/6/61610.jpeg?dpr=1&w=80" alt="Bouquet View 2" onclick="changeImage('https://assets.winni.in/product/primary/2022/6/61610.jpeg?dpr=1&w=600')">
                </div>
            </div>
            <div class="product-details">
                <h1>Beautiful Orchidaceous</h1>
                <p class="rating">4.8 ★ (6 Reviews)</p>
                <p class="price">
                    <span class="original-price">₹1149</span>
                    <span class="discounted-price">₹799</span>
                    <span class="discount">(30% off)</span>
                </p>
                <p>Inclusive of all taxes</p>
                <div class="offers">
                    <p>Available offers:</p>
                    <ul>
                        <li>Get up to ₹750 Cashback on paying via Mobikwik <a href="#">*T&C</a></li>
                        <li>Use Coupon Code: <strong>TRYWINNI</strong> to get 20% off</li>
                        <li>Use Coupon Code: <strong>WIN50</strong> to get ₹50 off</li>
                    </ul>
                </div>
                <div class="delivery-check">
                    <form action="CheckDeliveryServlet" method="post">
                        <input type="text" name="pincode" placeholder="Enter pincode to check delivery">
                        <button type="submit">Check</button>
                    </form>
                </div>
                <form action="AddToCartServlet" method="post">
                    <button type="submit" class="add-to-cart">ADD TO CART</button>
                </form>
                <p class="timer" id="timer">07:56:11 hours left for today's delivery</p>
            </div>
        </div>
    </main>
    <script src="navbar.js"></script>
    <script src="thankyou2.js"></script>
</body>
</html>
