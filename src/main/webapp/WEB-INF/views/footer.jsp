<%@ page pageEncoding="UTF-8" %>			  </div>
            
				<div id="sidebar">
					<table border=1>
                    <tr>
                    <td width="252" align="left">
                    <font color=white>
<c:choose>
	<c:when test="${sessionScope.authorized!=null}">Вы авторизировались как ${sessionScope.authorized}</c:when><c:otherwise>
	Вы не авторизованы
</c:otherwise>
</c:choose><br />
                    В вашей <a href="cart"><font color=white> корзине </font></a> ${(sessionScope.productsCartMapSize==null?0:productsCartMapSize)} товаров.
                    </font>
                    </td>
                    </tr>
                    </table>
                    <h2>Боковое меню</h2>
					<ul>
					<font color=white>
						<li><a href="products?category=1"><font color=white>Myaso</font></a></li>
						<li><a href="products?category=2"><font color=white>Kolbasa</font></a></li>
						<li><a href="products?category=3"><font color=white>Salo</font></a></li>
						<li><a href="registration"><font color=white>Регистрация</font></a></li>
						<li><a href="login"><font color=white>Вход</font></a></li>
						<li><a href="cart"><font color=white>Корзина</font></a></li>
					</ul>
					</font>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="footer">
	<p>Copyright (c) by Бондаренко Антон</p>
</div>
<!-- end #footer -->
</body>
</html>
