<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us - Student Management System</title>
<link rel="stylesheet" href="/studentsoft/resources/static/css/index.css">
</head>
<body>
    <div style="max-width:600px; margin:40px auto; background:linear-gradient(120deg, #e9f7ef 0%, #d0f5e8 100%); border-radius:18px; box-shadow:0 8px 32px rgba(46,125,50,0.10); padding:32px 24px; text-align:center;">
        <h2>Contact Us</h2>
        <p style="font-size:18px; color:#388e3c; margin-bottom:24px;">
            We'd love to hear from you! Please fill out the form below and our team will get back to you soon.
        </p>
        <form>
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="text" name="email" placeholder="Your Email" required>
            <input type="text" name="subject" placeholder="Subject" required>
            <textarea name="message" placeholder="Your Message" rows="5" style="margin-bottom:14px; padding:8px; width:100%; box-sizing:border-box; border-radius:6px; border:1px solid #a5d6a7; font-family:'Segoe UI', Arial, sans-serif; font-size:15px; transition:border 0.3s, box-shadow 0.3s;"></textarea>
            <input type="submit" value="Send Message">
        </form>
        <hr>
        <div style="margin-top:24px; color:#2e7d32; font-size:16px;">
            <strong>Email:</strong> info@glbitm.edu.in<br>
            <strong>Phone:</strong> +91-12345-67890<br>
            <strong>Address:</strong> GL Bajaj Institute of Technology & Management,<br>
            Knowledge Park III, Greater Noida, UP, India
        </div>
       <a href="/studentsoft/">Home page</a>
    </div>
</body>
</html>