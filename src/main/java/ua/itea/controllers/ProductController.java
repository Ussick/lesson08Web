package ua.itea.controllers;

import ua.itea.daoImpl.ProductDbService;
import ua.itea.model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd= req.getRequestDispatcher("WEB-INF/views/product.jsp");
        ProductDbService pds=new ProductDbService();
        List<Product> products = pds.getProducts();
        req.setAttribute("productList", products);
        rd.forward(req, resp);
    }
}
