<%-- 
    Document   : start
    Created on : 19 Mar, 2021, 10:28:52 AM
    Author     : Rohan Prabhakar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
out.println("<html lang=\"en\">");
out.println("    <head>");
out.println("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">");
out.println("        <meta charset=\"utf-8\">");
out.println("    ");
out.println("      <title>College Attendance</title>");
out.println("      <meta name=\"description\" content=\"The HTML5 Herald\">");
out.println("      <meta name=\"author\" content=\"SitePoint\">");
out.println("    ");
out.println("      <link rel=\"stylesheet\" href=\"css/styles.css?v=1.0\">");
out.println("      <script type=\"text/javascript\"> ");
out.println("        var opacity = 0; ");
out.println("        var intervalID = 0; ");
out.println("        window.onload = fadeIn(); ");
out.println("  ");
out.println("        function fadeIn() { ");
out.println("            setInterval(show, 200); ");
out.println("        } ");
out.println("  ");
out.println("        function show() { ");
out.println("            var body = document.getElementById(\"ssa\"); ");
out.println("            opacity = Number(window.getComputedStyle(ssa) ");
out.println("                             .getPropertyValue(\"opacity\")); ");
out.println("            if (opacity < 1) { ");
out.println("                opacity = opacity + 0.2; ");
out.println("                ssa.style.opacity = opacity ");
out.println("            } else { ");
out.println("                clearInterval(intervalID); ");
out.println("            } ");
out.println("        } ");
out.println("    </script> ");
out.println("    </head>");
out.println("    ");
out.println("    <body background=\"https://static.vecteezy.com/system/resources/previews/000/681/821/large_2x/blue-green-gradient-fluid-overlapping-shapes.jpg\">");
out.println("      <script src=\"js/scripts.js\"></script>");
out.println("      <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>");
out.println("      <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>");
out.println("      <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>");
out.println("      <nav class=\"navbar navbar-expand-lg navbar-dark\" style=\"background-color: #563d7c;\">");
out.println("        <a class=\"navbar-brand\" href=\"#\" style=\"color: white;\">College Attendance System</a>");
out.println("        ");
out.println("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
out.println("          <span class=\"navbar-toggler-icon\"></span>");
out.println("        </button>");
out.println("      ");
out.println("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
out.println("          <ul class=\"navbar-nav mr-auto\">");
out.println("            <li class=\"nav-item active\">");
out.println("              <a class=\"nav-link\" href=\"start.jsp\">Home <span class=\"sr-only\">(current)</span></a>");
out.println("            </li>");
out.println("            <li class=\"nav-item\">");
out.println("              <a class=\"nav-link\" href=\"log.jsp\">Faculty</a>");
out.println("            </li>"
                        + "<li class=\"nav-item\">");
out.println("              <a class=\"nav-link\" href=\"Stulog.jsp\">Student</a>");
out.println("            </li>");
out.println("        ");
out.println("                  </div>");
out.println("                  <a class=\"navbar-brand\" href=\"#\" style=\"text-align: end; font-size: 15px;\"\">Hi Guest</a>");
out.println("      ");
out.println("                </nav>");
out.println("      <div class=\"welcome-message\">");
out.println("          <h1 id=\"ssa\" style=\"color: rgb(255, 255, 255); text-align: center; padding-top: 250px; opacity: 0;margin-left: 60px;\">Welcome to College Attendance System</h1>");
out.println("      </div>");
out.println("      <jsp:include page= s.jsp\"/>");
out.println("    </body>");
out.println("    </html>");
%>
    </body>
</html>
