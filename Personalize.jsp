<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personalize Your Gift</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff8e1; /* cream color */
            color: #333;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #fff8e1; /* cream color */
            padding: 20px;
            text-align: center;
        }
        header img {
            width: 150px;
        }
        .personalize {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .personalize input, .personalize textarea, .personalize select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .personalize button {
            background: #d4af37; /* gold color */
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        .personalize button:hover {
            background: #c5a700; /* darker gold */
        }
        .sidebar {
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        .sidebar h3 {
            color: #d4af37; /* gold color */
        }
        .sidebar img {
            width: 100%;
            border-radius: 5px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <img src="images/logo.png" alt="Santa - Gifting Happiness">
        </div>
    </header>

    <div class="container">
        <div class="main-content" style="display: flex; gap: 20px;">
            <div class="personalize" style="flex: 2;">
                <h2>Personalize Your Gift</h2>
                <form action="payment.jsp" method="post">
                    <label for="delivery-date">Delivery Date and Time</label>
                    <input type="datetime-local" id="delivery-date" name="delivery-date">
                    
                    <label for="occasion">Occasion</label>
                    <select id="occasion" name="occasion">
                        <option value="birthday">Birthday</option>
                        <option value="anniversary">Anniversary</option>
                        <option value="other">Other</option>
                    </select>
                    
                    <label for="message">Personal Message</label>
                    <textarea id="message" name="message" rows="4"></textarea>
                    <button type="submit">Save and Continue</button></a>
                </form>
            </div>
            
            <div class="sidebar" style="flex: 1;">
                <h3>Celebrate Relations</h3>
                <img src="https://dudusonline.com/cdn/shop/files/main_banner_m2_668x751.webp?v=1660551952" alt="Personalizing Gift">
                <!-- Removed delivery and item details -->
            </div>
        </div>
    </div>
</body>
</html>
>