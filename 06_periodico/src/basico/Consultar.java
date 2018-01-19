package basico;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Consultar
 */
@WebServlet("/Consultar")
public class Consultar extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Consultar() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		//getServletConfig().getServletContext().getRequestDispatcher("/leer.jsp").forward(request, response); //volver al servlet
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/periodico", "root", "");
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("select * from noticias");
			PrintWriter writerA = response.getWriter();
			
			String resultado="";
			resultado +="<table class=\"striped\">";
			resultado += "<thead><tr><th>Titulo Noticia</th><th>Contenido</th><th>Fecha Publicaci�n</th></tr></thead><tbody>";
			while (rs.next()){
				
				resultado += "<tr>";
				resultado += "<td>" + rs.getString(4) + "</td>";
				resultado += "<td>" + rs.getString(5) + "</td>";
				resultado += "<td>" + rs.getString(6) + "</td>";
				resultado += "</tr>";
		
			}
			
			resultado += "</tbody></table>";
			
			request.getSession().setAttribute("servletMsg", resultado);
			response.sendRedirect("leer.jsp"); //tmb para volver al servlet pero no se queda en consulta
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
