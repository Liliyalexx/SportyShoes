<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <title>Purchase History</title>
</head>
<body>
<div align="center">
    <h1>Purchase History</h1>
    <hr style="clear:both;"/>
    <c:forEach items="${purchases}" var="purchase">
        <h2>Purchase ID: ${purchase.id}</h2>
        <h2>Date: ${purchase.date} - Total: $${purchase.total}</h2>
        <table border="1" cellpadding="5" class="tg">
            <tr>
                <th class=tg-general>Product</th>
                <th class=tg-general>Quantity</th>
                <th class=tg-general>Price Per Unit</th>
            </tr>
            <c:forEach items="${purchase.productPurchases}" var="productPurchase">
                <tr>
                    <td class="tg-general">${productPurchase.product.name}</td>
                    <td class="tg-general">${productPurchase.quantity}</td>
                    <td class="tg-general">${productPurchase.product.price}</td>
                </tr>
            </c:forEach>

        </table>
    </c:forEach>
</div>
</body>
</html>