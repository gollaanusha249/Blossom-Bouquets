<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(to right, #f7f9fc, #e1e5ea);
        }
        .container {
            text-align: center;
            background: #fff;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            max-width: 500px;
            width: 100%;
            animation: fadeIn 1s ease-in-out;
        }
        .container img {
            width: 150px;
            height: auto;
            margin-bottom: 20px;
        }
        .container h1 {
            font-size: 28px;
            margin-bottom: 10px;
            color: #333;
        }
        .container p {
            font-size: 18px;
            color: #666;
            margin-bottom: 20px;
        }
        .container a {
            color: #ff0000;
            text-decoration: none;
            font-size: 16px;
            border: 1px solid #ff0000;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        .container a:hover {
            background-color: #ff0000;
            color: #fff;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://i.pinimg.com/originals/0d/e4/1a/0de41a3c5953fba1755ebd416ec109dd.gif" alt="Payment Success">
        <h1>Your Payment is Successful!</h1>
        <p>Thank you for your payment. An automated payment receipt will be sent to your registered email.</p>
        <a href="<%= request.getContextPath() %>/main.html">Back to Home</a>
    </div>
</body>
</html>
