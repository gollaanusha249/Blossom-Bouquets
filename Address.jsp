<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Delivery Address</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fffdd0; /* Cream background color */
            color: #d81b60; /* Dark pink text color */
            margin: 20px;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #fff; /* White background for the form */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group .optional {
            font-size: 12px;
            color: #999; /* Slightly darker color for optional text */
        }
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        .button-group button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        .button-group .save-button {
            background-color: #4CAF50;
            color: white;
        }
        .button-group .cancel-button {
            background-color: #f44336;
            color: white;
        }
        .address-type {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .address-type button {
            flex: 1;
            margin: 5px;
            padding: 10px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        .address-type .home {
            background-color: #e91e63;
            color: white;
        }
        .address-type .office, .address-type .other {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Add Delivery Address</h1>
        <form id="addressForm" method="post" action="save-address.jsp">
            <div class="form-group">
                <label for="country">Select Country</label>
                <select id="country" name="country" required>
                    <option value="India">India</option>
                    <option value="United States">United States</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="Canada">Canada</option>
                    <option value="Australia">Australia</option>
                    <option value="Germany">Germany</option>
                    <option value="France">France</option>
                    <option value="China">China</option>
                    <option value="Japan">Japan</option>
                    <option value="Brazil">Brazil</option>
                    <option value="Russia">Russia</option>
                    <option value="South Africa">South Africa</option>
                    <option value="Italy">Italy</option>
                    <option value="Spain">Spain</option>
                    <option value="Mexico">Mexico</option>
                    <option value="Netherlands">Netherlands</option>
                    <option value="Sweden">Sweden</option>
                    <!-- Add more countries as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="recipientName">Recipient Name *</label>
                <input type="text" id="recipientName" name="recipientName" required>
            </div>
            <div class="form-group">
                <label for="recipientAddress">Recipient Address *</label>
                <input type="text" id="recipientAddress" name="recipientAddress" required>
            </div>
            <div class="form-group">
                <label for="landmark">Landmark <span class="optional">(optional)</span></label>
                <input type="text" id="landmark" name="landmark">
            </div>
            <div class="form-group">
                <label for="pinCode">Pin Code *</label>
                <input type="text" id="pinCode" name="pinCode" required>
            </div>
            <div class="form-group">
                <label for="city">City *</label>
                <input type="text" id="city" name="city" required>
            </div>
            <div class="form-group">
                <label for="recipientMobile">Recipient Mobile Number *</label>
                <input type="text" id="recipientMobile" name="recipientMobile" required>
            </div>
            <div class="form-group">
                <label for="alternateMobile">Alternate Mobile Number <span class="optional">(optional)</span></label>
                <input type="text" id="alternateMobile" name="alternateMobile">
            </div>
            <div class="address-type">
            
          
                
            <a href="main.html">
                <button type="button" class="home">Home</button>
            </a>
               
            </div>
            <div class="button-group">
                <button type="button" class="save-button" onclick="validateAndSubmit()">Next</button>
                <button type="button" class="cancel-button" onclick="cancelForm()">Cancel</button>
            </div>
        </form>
    </div>

    <script>
    function validateForm() {
        var form = document.getElementById('addressForm');
        var requiredFields = form.querySelectorAll('input[required], select[required]');
        var isValid = true;

        requiredFields.forEach(function(field) {
            if (!field.value.trim()) {
                isValid = false;
                // You can add error handling here, such as showing a message or styling the field
                // Example: field.style.border = '1px solid red';
            }
        });

        if (!isValid) {
            alert('Please fill in all required fields.');
        }

        return isValid;
    }

    function validateAndSubmit() {
        if (validateForm()) {
            // Redirect to Personalize.jsp
            window.location.href = "Personalize.jsp";
        }
    }

    function cancelForm() {
        if (confirm('Are you sure you want to cancel?')) {
            document.getElementById('addressForm').reset();
            window.location.href = "main.html";
        }
    }
    </script>
</body>
</html>
