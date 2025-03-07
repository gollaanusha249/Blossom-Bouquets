package cn.techtutorial.servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import cn.techtutorial.model.Cart;

@WebServlet("/update-cart")
public class UpdateCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");

        int id = Integer.parseInt(request.getParameter("id"));
        String action = request.getParameter("action");

        if(cart_list != null) {
            for(Cart c : cart_list) {
                if(c.getId() == id) {
                    int quantity = c.getQuantity();
                    if("increase".equals(action)) {
                        c.setQuantity(quantity + 1);
                    } else if("decrease".equals(action) && quantity > 1) {
                        c.setQuantity(quantity - 1);
                    }
                    break;
                }
            }
        }
        response.sendRedirect("cart.jsp");
    }
}
