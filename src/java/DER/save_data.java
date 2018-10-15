/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DER;

import database.dbConn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author GNyabuto
 */
public class save_data extends HttpServlet {
HttpSession session;
String results,id,date,year,month,mflcode,indicator,value,timestamp,rev_id,datekey,phone,delivery_point;
int counter;
int rows,added;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           session = request.getSession();
           dbConn conn = new dbConn();
           
           counter =added = 0;
           results = request.getParameter("results");
           
           JSONParser parser = new JSONParser();
           JSONObject alldata = (JSONObject) parser.parse(results);

           rows = Integer.parseInt(alldata.get("total_rows").toString());
           JSONArray array_data = (JSONArray)alldata.get("rows");
            
            for(int i=0;i<rows;i++){
                JSONObject obj_data = (JSONObject)array_data.get(i);
                JSONObject indic_data = (JSONObject)obj_data.get("doc");
                
//           System.out.println(i+". objdata : "+obj_data);
           if(indic_data.get("date")!=null){
           id = indic_data.get("_id").toString();
           date = indic_data.get("date").toString();
           if(indic_data.get("delivery_point")!=null){
           delivery_point = indic_data.get("delivery_point").toString();
           }
           else{
             delivery_point="1";  
           }
           year = indic_data.get("year").toString();
           month = indic_data.get("month").toString();
           mflcode = indic_data.get("mflcode").toString();
           indicator = indic_data.get("indicator").toString();
           value = indic_data.get("value").toString();
           if(indic_data.get("phone")!=null){
           phone = indic_data.get("phone").toString();
           }
           else{
               phone="";
           }
           timestamp = indic_data.get("timestamp").toString();
           rev_id = indic_data.get("_rev").toString();
            
           datekey = date.replace("-", "");
            
//            System.out.println("Console logs for results : "+results);
           
            if(phone==null){phone="";}
           
           String replacer = "REPLACE INTO der_data SET id=?,date=?,year=?,month=?,mflcode=?,indicator_id=?,value=?,browser_timestamp=?,datekey=?,phone=?,delivery_point=?";
           conn.pst = conn.conn.prepareStatement(replacer);
           conn.pst.setString(1, id);
           conn.pst.setString(2, date);
           conn.pst.setString(3, year);
           conn.pst.setString(4, month);
           conn.pst.setString(5, mflcode);
           conn.pst.setString(6, indicator);
           conn.pst.setString(7, value);
           conn.pst.setString(8, timestamp);
           conn.pst.setString(9, datekey);
           conn.pst.setString(10, phone);
           conn.pst.setString(11, delivery_point);
           
           added+=conn.pst.executeUpdate();
           }
           else{
//               mising info entry
//            System.out.println("Missing information");
           }
            }
           
            if(conn.pst!=null){conn.pst.close();}
            if(conn.conn!=null){conn.conn.close();}
            
           JSONObject obj_output = new JSONObject();
           obj_output.put("updated", (added+" out of "+rows)+" Entries added/updated");
            
            out.println(obj_output);
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
    } catch (SQLException ex) {
        Logger.getLogger(save_data.class.getName()).log(Level.SEVERE, null, ex);
    } catch (ParseException ex) {
        Logger.getLogger(save_data.class.getName()).log(Level.SEVERE, null, ex);
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
    } catch (SQLException ex) {
        Logger.getLogger(save_data.class.getName()).log(Level.SEVERE, null, ex);
    } catch (ParseException ex) {
        Logger.getLogger(save_data.class.getName()).log(Level.SEVERE, null, ex);
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
