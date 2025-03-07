<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: url('images/sibg.jpg') no-repeat center center fixed;
            background-size: cover;
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
        .white-section {
            background-color: white;
            padding: 20px;
            text-align: center;
            max-width: 400px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .user-icon,
        .password-icon,
        .phone-icon {
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }
        .login-button {
            background-color: rgb(224, 152, 28);
            color: #fff;
            border-radius: 14px;
            height: 30px;
            width: 100px;
            cursor: pointer;
        }
        .login-button:hover {
            background-color: rgb(175, 227, 62);
        }
        /* Popup style */
        .popup {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: none;
        }
        .popup h2 {
            margin-bottom: 10px;
        }
        .popup button {
            background-color: rgb(224, 152, 28);
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            cursor: pointer;
        }
        .popup button:hover {
            background-color: rgb(175, 227, 62);
        }
    </style>
</head>
<body>
    <div class="white-section">
     <div class="logo-container">
            <img src="images/logo.png" alt="Logo" class="logo">
        </div>
        <h4>Sign up</h4>
        <form action="SignUpServlet" method="post" onsubmit="return validateform()">
            <div>
                <img src="images/user-icon.jpg" alt="" class="user-icon">
                <input type="text" name="user_name" placeholder="User Name">
            </div>
            <br>
            <div>
                <img src="images/password-icon.png" alt="" class="password-icon">
                <input type="password" name="password" placeholder="Password">
            </div>
            <br>
            <div>
                <img src="images/phone-icon.jpg" alt="" class="phone-icon">
                <input type="tel" name="number" placeholder="Phone">
            </div>
            <p class="login-link"><button type="submit" class="login-button">Sign up</button></p>
            <p class="login-link">Already have an account? <button type="button" onclick="login()" class="login-button">Login</button></p>
        </form>
    </div>
    <!-- Popup -->
    <div id="popup" class="popup">
        <h2>Successfully Registered!</h2>
        <form action="login.jsp">
        <button class="login-button">OK</button>
        </form>
    </div>
    <script>
        function login() {
            window.location.href = "login.jsp";
        }

        function validateform() {
            var user_name = document.getElementsByName('user_name')[0].value;
            var password = document.getElementsByName('password')[0].value;
            var number = document.getElementsByName('number')[0].value;

            if (user_name == null || user_name === "") {
                alert("Name can't be blank.");
                return false;
            } else if (password.length < 6) {
                alert("Password must be at least 6 characters.");
                return false;
            } else if (number.length < 10) {
                alert("Enter a valid phone number.");
                return false;
            } else {
                // Show the popup
                document.getElementById('popup').style.display = 'block';
                return true;
            }
        }

        function closePopup() {
            document.getElementById('popup').style.display = 'none';
        }
    </script>
</body>
</html>
