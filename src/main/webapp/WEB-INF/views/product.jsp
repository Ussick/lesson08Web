<%@ page pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>
<font color=white>
    <c:if test="${productList!=null}">
    <c:forEach items="${productList}" var="product">
        <table>
        <tr><td>${product.name}</td><td></td></tr>
        <tr><td><img src="static/images/${product.id}.jpg" width="150" height="100%"/> </td><td>${product.description}</td></tr>
        <td>${product.price}</td><td>buy</td></tr>
        </table></br></br>
    </c:forEach>
    </c:if>
</font>
    <%@include file="footer.jsp" %>
