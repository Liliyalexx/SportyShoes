<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/css/bootstrap.css">
        <title>New Category</title>
    </head>
    <body>
    <div align="center">
        <h1>New Category</h1>
        <form action="save_category" method="post">
            <table border="0" cellpadding="5" class="tg">
                <tr>
                    <td class="tg-general">Name:</td>
                    <td class="tg-general"><input type="text" id="name" name="name"></td>
                </tr>
            </table>
            <input type="submit" name="register" value="Save" class="previous">
        </form>
        <a href="/admin?id=<%=(Long)session.getAttribute("adminId")%>" class="previous">&laquo; Back to Admin Dashboard</a>
    </div>
    </body>
</html>