<%-- 
    Document   : printAttendance
    Created on : Mar 26, 2021, 10:41:54 AM
    Author     : vijmr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="rs" scope="request" type="java.sql.ResultSet" />
<%
out.println("<html>");
out.println("    <head>");
out.println("        <title>Print attendance</title>");
out.println("        <link  rel=\"stylesheet\" href=\"css/style.css\" href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css' >");
out.println("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">");
out.println("    </head>");
out.println("    ");
out.println("    <body onload=\"Geeks\" background=\"https://static.vecteezy.com/system/resources/previews/000/681/821/large_2x/blue-green-gradient-fluid-overlapping-shapes.jpg\">");
out.println("        ");
out.println("        <nav class=\"navbar navbar-expand-lg navbar-dark\" style=\"background-color: #563d7c;\">");
out.println("            <a class=\"navbar-brand\" href=\"#\"\">College Attendance System</a>");
out.println("            ");
out.println("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
out.println("              <span class=\"navbar-toggler-icon\"></span>");
out.println("            </button>");
out.println("          ");
out.println("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
out.println("              <ul class=\"navbar-nav mr-auto\">");
out.println("                <li class=\"nav-item \">");
out.println("                  <a class=\"nav-link\" href=\"open-java.html\">Home</a>");
out.println("                </li>");
out.println("                <li class=\"nav-item \">");
out.println("                  <a class=\"nav-link\" href=\"vijdhobal.html\">Faculty<span class=\"sr-only\">(current)</span></a>");
out.println("                </li>");
out.println("                <li class=\"nav-item active\">");
out.println("                    <a class=\"nav-link\" href=\"vijdhobal.html\">Student<span class=\"sr-only\">(current)</span></a>");
out.println("                  </li>");
out.println("            ");
out.println("                      </div>");
out.println("                      <a class=\"navbar-brand\" href=\"#\" style=\"text-align: end;\"><span id=\"text-center\"></span></a>");
out.println("                      ");
out.println("                    </nav>");
%>
   <div style="float: left; margin-top: 76px; margin-left: 200px;">

      <table cellpadding="0" style="font-family: verdana; font-size: 10pt;border-width: 0ch; border-spacing: 0ch;">
           <tr>

              <th style="height:38px;text-align:center; color: white;">NAME</th>
               <th style="height:38px;text-align:center; color: white;">ENROLL_NO</th>
         
           </tr>

           <%             
                   while(rs.next()){
               
           %>
           <tr>    

              <td style="color: white;"><%= rs.getString(1) %></td>
      <td style="color: white;"><%= rs.getString(2) %></td>

       </tr>
      <%
        }
    %>
   </table>
</div>
<div>
    <table cellpadding="5" style="font-family: verdana; font-size: 10pt; margin-top: 100px;">

      <tr>     
          <th style="height:38px;text-align:center; color: white;">DAYS ABSENT</th>
    </tr>  
    <tr>
      <td style="color: white; text-align: center;">2</td>
    </tr>
   <tr>
       <td style="color: white;text-align: center;">0</td>
   </tr>
    <tr>
      <td style="color: white;text-align: center;">3</td>
    </tr>
  <tr>
      <td style="color: white;text-align: center;">4</td>
  </tr>
  <tr>
    <td style="color: white;text-align: center;">2</td>
 </tr>
  </table>
    
</div>
   </script>

   </body>
</html>
