<%@ page pageEncoding="UTF-8" %>
<%@include file="header.jsp" %>
<font color=white>
    <c:if test="${product!=null}">
            <table>
                <tr><td>${product.name}</td><td></td></tr>
                <tr><td> <a href="products?id=${product.id}"> <img src="static/images/${product.id}.jpg" width="250" height="100%"/></a></td><td>${product.description}</td></tr>
                <td>${product.price}</td><td>
            <form action="cart" method="post">
            <input type="number" min="1" max="100" step="1" name="quantity" value="1"/>
            <input type="hidden" name="id" value=${product.id}/>
            <input type="submit" name="operation" value="Buy">
            </form>
				</td></tr>
            </table></br></br>
    </c:if>
</font>
<%@include file="footer.jsp" %>
