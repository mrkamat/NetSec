package mailserver;

import java.io.IOException;
import java.io.PrintWriter;

import java.security.cert.X509Certificate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MailServer
 */
@WebServlet("/MailServer")
public class MailServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailServer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ehllo from diana");
		//response.sendRedirect("https://localhost:8443/NetSec/jsp/Login.jsp");
		//response.addHeader("isUser","true");
		response.setContentType("text/xml");

        PrintWriter out = response.getWriter();
        //out.println("I am on welcome servlet...");
        
        out.println("<xml>");
        out.println("<UserAuthenticated>");
        out.println("true");
        out.println("</UserAuthenticated>");
        out.println("</xml>");
        out.close();
        
        try{
        	
        
        X509Certificate[] certs = (X509Certificate[]) request.getAttribute("javax.servlet.request.X509Certificate");
        if (null != certs && certs.length > 0) {
            System.out.println("cert found");
            System.out.println(certs[0].getSigAlgName());
            System.out.println(certs[0].getIssuerDN());
        }
        }
        catch(Exception e)
        {
        	System.out.println("Got an exception " + e.getMessage());
        }
        
        
       // System.out.println(request.isSecure());
   //     return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println(session.getAttribute("user"));
		session=request.getSession();
		try{
			if(request.getHeader("referer").contains("Login"))
			{
				if(session.getAttribute("user")==null)
				{
					session.setAttribute("user",request.getParameter("username"));
					response.sendRedirect(request.getContextPath() + "/jsp/ShowEmail.jsp" );
				}
				else
				{
					session.setAttribute("user",request.getParameter("username"));
					response.sendRedirect(request.getContextPath() + "/jsp/ShowEmail.jsp" );
				}
			}
			else if(request.getHeader("referer").contains("compose"))
			{
				if(session.getAttribute("user")!=null)
				{
					System.out.println(request.getParameter("emailBody"));
					response.sendRedirect(request.getContextPath() + "/jsp/ShowEmail.jsp" );
				}
				else
					response.sendRedirect("/NecSec/jsp/Login.jsp");
			}
			else if(request.getParameter("logout")!= null)
			{
				if(session.getAttribute("user")!=null)
				{
					session.invalidate();	
				}
				response.sendRedirect("/NecSec/jsp/Login.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception" + e.getMessage());
			response.sendRedirect(request.getContextPath() + "/jsp/Login.jsp" );
		}
	}
	
	//public String getUser(){
//		return "ncsu";
//	}

}
