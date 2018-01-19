package basico;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Meternoticia
 */
@WebServlet("/Meternoticia")
public class Meternoticia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Meternoticia() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email= request.getParameter("email");
		int idcategoria= Integer.parseInt(request.getParameter("idcategoria"));
		String titulo = request.getParameter("titulo");
		String contenido = request.getParameter("contenido");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/periodico", "root", "");
			PreparedStatement st= conn.prepareStatement("INSERT INTO noticias (email, idcategoria, titulo, contenido) values (?, ?, ?, ?)") ;
	
			st.setString(1, email);
			st.setInt(2, idcategoria);
			st.setString(3, titulo);
			st.setString(4, contenido);
			
			st.executeUpdate();
			
			PrintWriter writerA = response.getWriter();
			writerA.println("Se ha añadido la noticia");
			
			writerA.println("<a href=leer.jsp>");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
