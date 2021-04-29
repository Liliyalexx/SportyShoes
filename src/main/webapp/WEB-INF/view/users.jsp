<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <title>Users</title>
</head>
<body>
<div align="center">
    <h1>User List</h1>
    <table border="1" cellpadding="5" class="tg">
        <tr>
            <th class="tg-general">First Name</th>
            <th class="tg-general">Last Name</th>
            <th class="tg-general">Email</th>
            <th class="tg-general">Username</th>
        </tr>

        <c:forEach items="${users}" var="user">
            <tr>
                <td class="tg-general">${user.firstName}</td>
                <td class="tg-general">${user.lastName}</td>
                <td class="tg-general">${user.email}</td>
                <td class="tg-general">${user.login.username}</td>
            </tr>
        </c:forEach>

    </table>
    <br>
    <form action="/users/user">
        <label>Find a user:</label>
        <input type="text" id="search" name="search">
        <input type="submit" name="submit" value="Search">
        <p>
            <i>Search term is compared against all user properties. Any records containing the search term are displayed below</i>
        </p>
    </form>
    <c:if test="${searchResult != null}">
        <table border="1" cellpadding="5" class="tg">
            <tr>
                <th class="tg-general">First Name</th>
                <th class="tg-general">Last Name</th>
                <th class="tg-general">Email</th>
                <th class="tg-general">Username</th>
            </tr>
            <c:forEach items="${searchResult}" var="result">
                <tr>
                    <td class="tg-general">${result.firstName}</td>
                    <td class="tg-general">${result.lastName}</td>
                    <td class="tg-general">${result.email}</td>
                    <td class="tg-general">${result.login.username}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <a href="/admin?id=<%=(Long)session.getAttribute("adminId")%>" class="previous">&laquo; Back to Admin Dashboard</a>
</div>
</body>
</html>