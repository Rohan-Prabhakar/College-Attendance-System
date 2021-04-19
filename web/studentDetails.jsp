<%-- 
    Document   : studentDetails
    Created on : Mar 26, 2021, 11:37:11 AM
    Author     : vijmr
--%>

<%@page contentType="text/html" %>
<jsp:useBean id="rs" scope="request" type="java.sql.ResultSet" />
<%
out.println("<html>");
out.println("   <head>");
out.println("       <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">");
out.println("       <meta charset=\"utf-8\">");
out.println("   ");
out.println("     <meta name=\"description\" content=\"The HTML5 Herald\">");
out.println("     <meta name=\"author\" content=\"SitePoint\">");
out.println("   ");
out.println("     <link rel=\"stylesheet\" href=\"css/styles.css?v=1.0\">");
out.println("     <meta charset=\"utf-8\">");
out.println("       <title>Faculty Database</title>");
out.println("   </head>");
out.println("   <body style=\"font-family: verdana; font-size: 10pt;\" background=\"https://static.vecteezy.com/system/resources/previews/000/681/821/large_2x/blue-green-gradient-fluid-overlapping-shapes.jpg\">");
out.println("       <script src=\"js/scripts.js\"></script>");
out.println("       <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>");
out.println("       <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>");
out.println("       <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>");
out.println("       <nav class=\"navbar navbar-expand-lg navbar-dark\" style=\"background-color: #563d7c;\">");
out.println("           <a class=\"navbar-brand\" href=\"#\"\">College Attendance System</a>");
out.println("           ");
out.println("           <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
out.println("             <span class=\"navbar-toggler-icon\"></span>");
out.println("           </button>");
out.println("         ");
out.println("           <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
out.println("             <ul class=\"navbar-nav mr-auto\">");
out.println("               <li class=\"nav-item \">");
out.println("                 <a class=\"nav-link\" href=\"#\">Home</a>");
out.println("               </li>");
out.println("               <li class=\"nav-item active dropdown\">");
out.println("                 <a class=\"nav-link\" href=\"#\">Faculty<span class=\"sr-only\">(current)</span></a>");
out.println("               </li>");
out.println("               <li class=\"nav-item dropdown\">");
out.println("                   <a class=\"nav-link\" href=\"#\">Student<span class=\"sr-only\">(current)</span></a>");
out.println("                 </li>");
out.println("                 <li class=\"nav-item active dropdown\">");
out.println("                   <a class=\"nav-link\" href=\"logout.jsp\" style=\"text-align: end; margin-left: 628px;\">Log-out<span class=\"sr-only\">(current)</span></a>");
out.println("                 </li>");
out.println("           ");
out.println("                     </div>");
out.println("                     <a class=\"navbar-brand\" href=\"#\" style=\"text-align: end;\"><span id=\"text-center\"></span></a>");
out.println("         ");
out.println("                   </nav>");
%>

        <table class="table table-hover table-dark" cellpadding="5" style="font-family: verdana; font-size: 10pt;">
            <tr>
          
                <th>Enrollment No.</th>
                <th>NAME</th>
                <th>SEMESTER</th>
                <th>cOURSE</th>
                <th>EMAIL-ID</th>
                <th>FATHER NAME</th>
                <th>MOTHER NAME</th>
                <th>MOBILE</th>
                <th>ADDRESS</th>
                <th>Missed Days</th>
                
            </tr>
            <%
                while(rs.next()){
            %>
            <tr>
               
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %></td>
                <td><%= rs.getString(7) %></td>
                <td><%= rs.getString(8) %></td>
                <td><%= rs.getString(9) %></td>
                <td><%= rs.getString(10) %></td>
                
                
                
            
            </tr>
            <%
                }
            %>
        </table>
        
        
    </body>
</html>