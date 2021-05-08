package Controlleur;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Modele.Authentificationbean;
import Modele.ClientBean;

/**
 * Servlet implementation class ClientServlet
 */
@WebServlet("/ClientServlet")
public class ClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ClientBean  client = (ClientBean)session.getAttribute("client");
		if ( client== null) //la première connexion de user
		{
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String adresse = request.getParameter("adresse");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		
		client = new ClientBean ();
		client.setPrenom(prenom);
		client.setNom(nom);
		client.setAdresse(adresse);
		client.setTel(tel);
		client.setEmail(email);
		session.setAttribute("client", client);
		}
		String address = "InscritClient.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
				
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
