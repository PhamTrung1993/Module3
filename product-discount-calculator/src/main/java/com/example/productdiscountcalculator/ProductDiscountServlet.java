package com.example.productdiscountcalculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountServlet", value = "/discount")
public class ProductDiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("Price"));
        float present = Float.parseFloat(request.getParameter("Percent"));

        double amount = price * present * 0.01;
        double realPrice = price - amount;

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Iphone 14 Deep Purple Price: </h1>");
        writer.println("<h2>Discount Amount: " + amount + "</h2>");
        writer.println("<h2>Discount Price : " + realPrice + "</h2>");
        writer.println("</html>");
    }

}
