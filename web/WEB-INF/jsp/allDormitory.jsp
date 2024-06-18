<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>宿舍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* 新的样式 */
        :root {
            --white: #e9e9e9;
            --gray: #333;
            --blue: #0367a6;
            --lightblue: #008997;
            --brown: #a37547; /* Brown color */

            --button-radius: 0.7rem;
            --max-width: 758px;
            --max-height: 420px;

            font-size: 16px;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
            Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
        }

        body {
            background-color: #282c34;
            background: url("${pageContext.request.contextPath}/日照金山.jpg") no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #a37547; /* Brownish text color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            font-size: 38px;
            font-weight: bold;
            color: #282c34;
            margin-bottom: 20px;
        }

        .btn-primary {
            display: inline-block;
            padding: 10px 20px;
            background-color: #a37547; /* Brown background color */
            color: #fff; /* White text color */
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #89633e; /* Darker brown on hover */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 1px solid #a37547; /* Brown border color */
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #a37547; /* Brown border color */
        }

        th {
            background-color: #66462f; /* Darker brown for table header */
            color: #fff; /* White text color */
        }

        a {
            color: #a37547; /* Brown link color */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .btn {
            background-color: #a37547; /* Brown background color */
            border-radius: 10px; /* Rounded border */
            border: 1px solid #a37547; /* Brown border color */
            color: #fff; /* White text color */
            cursor: pointer;
            font-size: 0.8rem;
            font-weight: bold;
            letter-spacing: 0.1rem;
            padding: 5px 10px; /* Smaller padding */
            text-transform: uppercase;
            transition: transform 80ms ease-in;
        }

        .btn:active {
            transform: scale(0.95);
        }

        .btn:focus {
            outline: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>宿舍列表 —— 显示所有学生</h1>
    <a class="btn-primary" href="${pageContext.request.contextPath}/dormitory/toAddDormitory">新增</a>
    <table>
        <thead>
        <tr>
            <th>学生编号</th>
            <th>名字</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="dormitory" items="${requestScope.get('list')}">
            <tr>
                <td>${dormitory.getId()}</td>
                <td>${dormitory.getName()}</td>
                <td>
                    <a class="btn" href="${pageContext.request.contextPath}/dormitory/toUpdateDormitory?id=${dormitory.getId()}">更改</a> |
                    <a class="btn" href="${pageContext.request.contextPath}/dormitory/delete/${dormitory.getId()}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
