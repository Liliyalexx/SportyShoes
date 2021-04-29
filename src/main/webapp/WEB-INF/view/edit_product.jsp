<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <title>Edit Product</title>
</head>
<body>
<div align="center">
    <h2>Edit Product</h2>
    <form action="/save_product" method="post">
        <table border="0" cellpadding="5" class="tg">
            <tr>
                <input type="hidden" id="id" name="id" value="${product.id}">
                <td class="tg-general">Name:</td>
                <td class="tg-general"><input type="text" id="name" name="name" value="${product.name}"></td>
            </tr>
            <tr>
                <td class="tg-general">Price:</td>
                <td class="tg-general"><input type="text" id="price" name="price" value="${product.price}"></td>
            </tr>
            <tr>
                <td class="tg-general">Category:</td>
                <td class="tg-general">
                    <select id="categoryId" name="categoryId">
                        <c:forEach items="${categories}" var="category">
                            <option value="${category.id}" ${product.category.id == category.id ? "selected" : ""}>
                                    ${category.name}
                            </option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr align="center">
                <td colspan="2" class="tg-general">
                    <input type="submit" name="register" value="Save" class="previous">
                </td>
            </tr>
        </table>
    </form>
    <a href="/admin?id=<%=(Long)session.getAttribute("adminId")%>" class="previous">&laquo; Back to Admin Dashboard</a>
</div>
</body>
</html>