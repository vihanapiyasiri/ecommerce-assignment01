package lk.ijse.ecommerce.controller.ProductContraller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.ecommerce.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "getProductList", value = "/getProductList")
public class GetProductListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();

        ServletContext context = req.getServletContext();
        SessionFactory sessionFactory = (SessionFactory) context.getAttribute("SessionFactory");
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        products = session.createQuery("FROM Product", Product.class).getResultList();
        session.getTransaction().commit();
        session.close();
        req.setAttribute("products", products);
        System.out.println("1");
        req.getRequestDispatcher("getCategoryList").forward(req, resp);
    }
}
