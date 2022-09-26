package com.example.exerciselistofcustomers.servlet;

import com.example.exerciselistofcustomers.model.Employee;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/showEmployee")
public class EmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Employee> empList =new ArrayList<>();
        empList.add(new Employee("Trung","01/09/1993","Quang Ninh","D:\\Code_gym\\Module3\\exercise\\exercise-list-of-customers\\image\\trung.png"));
        empList.add(new Employee("Quan","14/04/1993","Hai Phong","D:\\Code_gym\\Module3\\exercise\\exercise-list-of-customers\\image\\quan.png"));
        empList.add(new Employee("Hieu","07/04/1999","Bac Ninh","D:\\Code_gym\\Module3\\exercise\\exercise-list-of-customers\\image\\hieu.png"));
        empList.add(new Employee("Hoang","07/04/1999","Ha Nam","D:\\Code_gym\\Module3\\exercise\\exercise-list-of-customers\\image\\hoang.png"));

//        Một Attribute là một đối tượng được sử dụng để chia sẻ thông tin trong một ứng dụng web.
//        Thuộc tính cho phép Servlets chia sẻ thông tin với nhau
        request.setAttribute("empList",empList);
        System.out.print(empList.get(1));
//        Một RequestDispatcher là một class vô cùng quan trọng trong Java.
//        Nó giúp cho trang web chuyển request từ servlet này sang một servlet khác bằng cách cho phép gọi một servlet khác từ trong một servlet khác.
//        Nó tạo ra một đối tượng nhận request từ client và gửi chúng đến bất kỳ resource nào như một servlet, HTML hay JSP file.
        RequestDispatcher rd = request.getRequestDispatcher("show.jsp");
//        Với Forward bạn có thể sử dụng request.setAttribute() để truyền dữ liệu từ trang 1 sang trang thứ 2
        rd.forward(request,response);
    }
}
