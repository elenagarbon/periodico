package basico;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Añadir
 */
@WebServlet("/Añadir")
public class Añadir extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Añadir() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/**protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String email = request.getParameter("email");
		String categoria = request.getParameter("categoria");
		String titulo = request.getParameter("titulo");
		String contenido = request.getParameter("contenido");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url= "jdbc:mysql://localhost:3306/tienda";
		String user= "root";
		String password = "";
		
		Connection connect = DriverManager.getConnection(url, user, password);
		PreparedStatement ps = connect.prepareStatement("INSERT INTO  (, , , ) VALUES (?,?,?,?)");
		    
        ps.setString(1, email);

  		ps.setString(2, categoria);

  		ps.setString(3, titulo);
  		
  		ps.setString(4, contenido);

  		ps.executeUpdate();

    } catch (ClassNotFoundException e) {

        e.printStackTrace();

    } catch (SQLException e) {

        e.printStackTrace();

    } 

}
}
