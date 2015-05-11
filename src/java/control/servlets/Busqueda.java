/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import control.servicios.Reserva;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.orm.PersistentException;

/**
 *
 * @author edisonarango
 */
@WebServlet(name = "Busqueda", urlPatterns = {"/Busqueda"})
public class Busqueda extends HttpServlet {
    
    private final Reserva reserva = new Reserva();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, PersistentException {
        
        String tipo = request.getParameter("tipo");
        if (tipo==null) {
            tipo="";
        }
        String fechaIn,fechaFin;
        
        switch (tipo) {
            case "medico":
                int idMedico = Integer.valueOf(request.getParameter("medico"));
                fechaIn = request.getParameter("fechaIn");
                fechaFin = request.getParameter("fechaFin");
                request.setAttribute("horasLibres",reserva.buscarHorasAPSPorMedico(idMedico, fechaIn, fechaFin));
                request.setAttribute("fechasRango", reserva.diasDeRango(fechaIn, fechaFin));
                request.getRequestDispatcher("vista/inicio.jsp").forward(request, response);
                break;
            case "especialidad":
                int idEspecialidad = Integer.valueOf(request.getParameter("especialidad"));
                fechaIn = request.getParameter("fechaIn");
                fechaFin = request.getParameter("fechaFin");
                reserva.buscarHorasAPSPorEspecialidad(idEspecialidad, fechaIn, fechaFin);
                break;
            case "":
                request.getRequestDispatcher("vista/inicio.jsp").forward(request, response);
                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (PersistentException ex) {
            Logger.getLogger(Busqueda.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (PersistentException ex) {
            Logger.getLogger(Busqueda.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
