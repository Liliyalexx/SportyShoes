<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <link rel="stylesheet" href="/css/bootstrap.css">
        <title>Categories</title>
    </head>
    <body>
    <div align="center">
        <h1>Category List</h1>
        <table border="1" cellpadding="5" class="tg">
            <tr>
                <th class="tg-general">Name</th>
                <th class="tg-general">Actions</th>
            </tr>
            <c:forEach items="${categories}" var="category">
                <tr>
                    <td class="tg-general">${category.name}</td>
                    <td class="tg-general">
                        <a href="/category/edit?id=${category.id}">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="/admin?id=<%=(Long)session.getAttribute("adminId")%>" class="previous">&laquo; Back to Admin Dashboard</a>
    </div>
    </body>
</html>