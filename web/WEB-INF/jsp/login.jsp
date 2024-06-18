<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>宿舍管理登录</title>
    <style>
        :root {
            /* COLORS */
            --white: #e9e9e9;
            --gray: #4a3f35;
            --brown: #8b5a2b;
            --lightbrown: #a57c55;

            /* RADII */
            --button-radius: 0.7rem;

            /* SIZES */
            --max-width: 658px;
            --max-height: 400px; /* Adjusted height */

            font-size: 16px;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
            Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
        }

        body {
            align-items: center;
            background-color: var(--white);
            background: url("${pageContext.request.contextPath}/日照金山.jpg");
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: grid;
            height: 100vh;
            place-items: center;
            margin: 0;
            padding: 0;
        }

        .form__title {
            font-weight: 300;
            margin: 0;
            margin-bottom: 1.25rem;
            color: var(--white); /* White text color */
        }

        .link {
            color: var(--gray); /* Gray text color */
            font-size: 0.9rem;
            margin-top: 1rem; /* Adjusted margin */
            text-decoration: none;
            display: block; /* Display as block to ensure it takes full width */
            text-align: center; /* Center align the link */
        }

        .container {
            background-color: rgba(155, 155, 155, 0.5); /* Semi-transparent white background */
            border-radius: var(--button-radius);
            box-shadow: 0 0.9rem 1rem rgba(0, 0, 0, 0.2),
            0 0.7rem 0.7rem rgba(0, 0, 0, 0);
            height: var(--max-height);
            max-width: var(--max-width);
            overflow: hidden;
            position: relative;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .form {
            background-color: transparent; /* Transparent background */
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 3rem;
            height: 100%;
            text-align: center;
        }

        .input {
            background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent white background for input */
            border: none;
            padding: 0.9rem 0.9rem;
            margin: 0.5rem 0;
            width: 100%;
        }

        .btn {
            background-color: var(--brown); /* Brown background color */
            background-image: linear-gradient(90deg, var(--brown) 0%, var(--lightbrown) 74%);
            border-radius: 20px;
            border: 1px solid var(--brown);
            color: var(--white); /* White text color */
            cursor: pointer;
            font-size: 0.8rem;
            font-weight: bold;
            letter-spacing: 0.1rem;
            padding: 0.9rem 4rem;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
            outline: none;
            margin: 10px 0; /* Adjusted margin */
        }

        .btn:active {
            transform: scale(0.95);
        }

        .btn:focus {
            outline: none;
        }

        .error-message {
            text-align: center;
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="container__form container--signin">
        <form action="${pageContext.request.contextPath}/dormitory/authenticate" method="post" class="form">
            <h2 class="form__title">宿舍管理登录</h2>
            <input type="text" name="username" placeholder="用户名" class="input" required />
            <input type="password" name="password" placeholder="密码" class="input" required />
            <button class="btn">登录</button>
            <c:if test="${not empty error}">
                <div class="error-message">${error}</div>
            </c:if>
            <a href="${pageContext.request.contextPath}/dormitory/toresign" class="btn">注册</a>
        </form>
    </div>
</div>
</body>
</html>

