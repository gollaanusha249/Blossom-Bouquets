<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://i.pinimg.com/474x/2a/fa/a2/2afaa21cd7a2bd7f45686658fc518cba.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .logo-container {
            position: absolute;
            top: 1px;
            left: 5px;
        }
        .logo {
            max-width: 150px; /* Adjust size as needed */
            height: auto;
        }

        .login-container {
            display: flex;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            max-width: 600px;
            width: 100%;
        }
        .login-image {
            background-color: #fff5e6;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 50%;
        }
        .login-image img {
            max-width: 100%;
            height: auto;
        }
        .login-info {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            text-align: left;
            margin-top: 20px;
            width: 100%;
        }
        .login-info div {
            display: flex;
            align-items: center;
            margin: 10px 0;
            width: 100%;
        }
        .login-info div img {
            width: 24px;
            height: 24px;
            margin-right: 10px;
        }
        .login-form {
            padding: 40px 20px;
            width: 50%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .login-form h1 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #ff007f;
        }
        .login-form input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        .login-form button {
            width: 100%;
            padding: 10px;
            background-color: #ff007f;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        .login-form button:hover {
            background-color: #e6006f;
        }
        .login-form .google-login {
            margin-top: 20px;
            width: 100%;
            text-align: center;
        }
        .login-form .google-login button {
            background-color: #fff;
            color: #000;
            border: 1px solid #ccc;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-form .google-login button img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
    <div class="logo-container">
            <img src="images/logo.png" alt="Logo" class="logo">
        </div>
    
    
        <div class="login-image">
            <img src="images/cute.jpg" alt="Login Image">
            <div class="login-info">
                <div>
                    <img src="images/cart.jpg" alt="Instant Checkout">
                    <span>Instant Checkout</span>
                </div>
                <div>
                    <img src="images/home.jpg" alt="Manage Your Orders">
                    <span>Manage Your Orders</span>
                </div>
                <div>
                    <img src="images/discount.jpg" alt="Exclusive Offers">
                    <span>Exclusive Offers</span>
                </div>
            </div>
        </div>
        <div class="login-form">
            <h1>Login</h1>
            <form action="LoginServlet" method="post">
                <input type="text" name="mobileNumber" placeholder="Mobile Number">
                <input type="password" name="password" placeholder="Password">
                <button type="submit">CONTINUE</button>
            </form>
            <p>By continuing, you agree to Winni <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>.</p>
            <div class="google-login">
                <a href="signup.jsp"><button>Sign Up</button></a>
            </div>
        </div>
    </div>
    <script>
        window.onload = function() {
            // Check for the error parameter
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('error')) {
                // Display alert if error parameter is present
                alert('Invalid credentials. Please try again.');
            }
        };
    </script>
</body>
</html>
