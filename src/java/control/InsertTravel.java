package control;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Travel;

public class InsertTravel extends HttpServlet {
    
    private Travel travel;
    private TravelDAO dao;

    //The servlet request uses post method
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        //Instantiate an object of the class Travel
        travel = new Travel();
        //Request the parameters from the jsp form to the travel object
        travel.setName(request.getParameter("name"));
        travel.setPhone(request.getParameter("phone"));
        travel.setDateTo(request.getParameter("dateTo"));
        travel.setDateFrom(request.getParameter("dateFrom"));
        travel.setOrigin(request.getParameter("origin"));
        travel.setDestination(request.getParameter("destination"));
        travel.setPeople(Integer.parseInt(request.getParameter("people")));
        //Instantiate a session to inform to the jsp page if the database transaction was successful
        HttpSession session = request.getSession();
        try {
            dao = new TravelDAO();
            //Do the database insertion
            dao.insert(travel);
            //If the insertion was successful, flag = true
            session.setAttribute("flag", true);
            RequestDispatcher r = request.getRequestDispatcher("/response.jsp");
            r.forward(request, response);
        } catch (Exception ex) {
            //If the insertion failed, flag = false
            session.setAttribute("flag", false);
            RequestDispatcher r = request.getRequestDispatcher("/response.jsp");
            r.forward(request, response);
        }
    }
}
