<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="/css/bootstrap.css">
        <meta charset="ISO-8859-1">
        <title>Dashboard</title>
    </head>
    <body>
        <div style="text-align: center">
            <h2>Welcome ${admin.login.username}</h2>
            <hr>
            <a href="/admin/edit?id=${admin.id}" class="button">Change Password</a>
            <br/>
            <a href="/new_category" class="button">Add New Category</a>
            <br/>
            <a href="/categories" class="button">Categories</a>
            <br/>
            <a href="/new_product" class="button">Add New Product</a>
            <br/>
            <a href="/products" class="button">Products</a>
            <br/>
            <a href="/users" class="button">Users</a>
            <br/>
            <a href="/purchase_report" class="button">Purchase Report</a>
            <br/>
            <a href="/" class="button">Logout</a>
            <br/>
        </div>
    </body>
</html>