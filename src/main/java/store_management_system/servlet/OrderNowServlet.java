package store_management_system.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import store_management_system.model.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store_management_system.model.User;


@WebServlet("/order-now")
public class OrderNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String auth = null;
       
    public OrderNowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
			
			Date date = new Date();
			
			User user = (User) request.getSession().getAttribute("auth");
			if(auth != null) {
				
				String productId = request.getParameter("id");
				int productQuantity = Integer.parseInt(request.getParameter("quantity"));
				if(productQuantity <=0 ) {
					productQuantity = 1;
				}
				
				Order orderModel = new Order();
				orderModel.setId(Integer.parseInt(productId));
				orderModel.setUid(auth.getId());
				orderModel.setQuantity(productQuantity);
				orderModel.setDate(formatter.format(date));
				
				
				
				
			}else {
				response.sendRedirect("login.jsp");
			}
			
		}
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
