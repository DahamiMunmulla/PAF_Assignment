package Com;
import Com.Contacts;


import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ContactsAPI
 */
@WebServlet("/ContactsAPI")
public class ContactsAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Contacts contactsObj = new Contacts();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactsAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String output = contactsObj.insertContact(request.getParameter("DistrictCode"), request.getParameter("Description"),
				request.getParameter("ComplainNo"), request.getParameter("CustomerServiceNo"), request.getParameter("NewConnectionsNo"), request.getParameter("EmergencyNo"), request.getParameter("Address"));
		response.getWriter().write(output);
	}
	
	

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		String output = contactsObj. updateContact(paras.get("hidItemIDSave").toString(), paras.get("Description").toString(),
				paras.get("ComplainNo").toString(), paras.get("CustomerServiceNo").toString(), paras.get("NewConnectionsNo").toString(), paras.get("EmergencyNo").toString(), paras.get("Address").toString());
	}

	
	private static Map getParasMap(HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
			scanner.close();
			String[] params = queryString.split("&");
			for (String param : params) {
				String[] p = param.split("=");
				map.put(p[0], p[1]);
			}
		} catch (Exception e) {
		}
		return map;
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Map paras = getParasMap(request);
		String output = contactsObj.deleteContact(paras.get("DistrictCode").toString());
		response.getWriter().write(output);
	}

}
