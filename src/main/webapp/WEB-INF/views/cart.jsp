<%@ page pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>
<font color=white>
    <c:choose>
        <c:when test="${(sessionScope.productsCartMapSize!=0)}">
            <c:forEach var="product" items="${sessionScope.productsCartMap}">
                <table>
                    <tr><td>${product.key.name}</td><td></td></tr>
                    <tr><td> <a href="products?id=${product.key.id}"> <img src="static/images/${product.key.id}.jpg" width="150" height="100%"/></a></td><td>${product.key.description}</td></tr>
                    <td>${product.key.price}</td><td>${product.value}</td></tr>
                    <tr><td></td><td>
                    <form action="cart" method="post">
                        <input type="number" min="1" max="100" step="1" name="quantity" value="1"/>
                        <input type="hidden" name="id" value=${product.key.id}/>
                        <input type="submit" name="operation" value="Remove">
                    </form>
                </table>
            </c:forEach>
            </br></br>
            <h1> Готовьтесь расстаться с вашими деньгами на сумму ${sessionScope.total} грн.</h1>
        </c:when>
        <c:otherwise>
            <h1> Ваша корзина пуста! </h1>
        </c:otherwise>
    </c:choose>
</font>
<%@include file="footer.jsp" %>
