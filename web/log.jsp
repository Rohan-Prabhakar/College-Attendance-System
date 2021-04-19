<%-- 
    Document   : log
    Created on : 19 Mar, 2021, 10:30:49 AM
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
out.println("      <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">");
out.println("      <meta charset=\"utf-8\">");
out.println("  ");
out.println("   ");
out.println("    ");
out.println("    </head>");
out.println("    <body onload=\"getInputValue\" background=\"https://static.vecteezy.com/system/resources/previews/000/681/821/large_2x/blue-green-gradient-fluid-overlapping-shapes.jpg\">");
out.println("        <script src=\"js/scripts.js\"></script>");
out.println("      <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>");
out.println("      <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>");
out.println("      <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>");

out.println("      <nav class=\"navbar navbar-expand-lg navbar-dark\" style=\"background-color: #563d7c;\">");
out.println("        <a class=\"navbar-brand\" href=\"#\"\">College Attendance System</a>");
out.println("        ");
out.println("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
out.println("          <span class=\"navbar-toggler-icon\"></span>");
out.println("        </button>");
out.println("      ");
out.println("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
out.println("          <ul class=\"navbar-nav mr-auto\">");
out.println("            <li class=\"nav-item \">");
out.println("              <a class=\"nav-link\" href=\"start.jsp\">Home</a>");
out.println("            </li>");
out.println("            <li class=\"nav-item active\">");
out.println("              <a class=\"nav-link\" href=\"http://localhost:8080/College%20Attendance%20System/facultyView\">Log-in<span class=\"sr-only\">(current)</span></a>");
out.println("            </li>");
out.println("        ");
out.println("                  </div>");
out.println("                  <a class=\"navbar-brand\" href=\"#\" style=\"text-align: end;\"><span id=\"text-center\"></span></a>");
out.println("      ");
out.println("                </nav>");
out.println("        <form action=\"facultyView\" method=\"post\" style=\"margin-bottom:15px;background-color: #f7f7f7; box-shadow: 0 2px 2px; padding: 30px; box-sizing: border-box; display: block; margin-top: 100px;margin-bottom: 500px; height: 400px; width: 400px; margin-left: 420px;\" >");
out.println("            <h2 id=\"text-center\" style=\"padding-bottom: 30px;\">Log in</h2>       ");
out.println("            <script>function getInputValue(){");
out.println("                ");
out.println("                var inputVal = document.getElementById(\"text-center\").value;");
out.println("                ");
out.println("            } </script>");
out.println("            <div class=\"form-group\">");
out.println("                <input type=\"text\" class=\"form-control\" placeholder=\"Username\" required=\"required\" >");
out.println("            </div>");
out.println("            <div class=\"form-group\">");
out.println("                <input type=\"password\" class=\"form-control\" placeholder=\"Password\" required=\"required\">");
out.println("            </div>");
out.println("            <div class=\"form-group\">");
out.println("                <button type=\"submit\" class=\"btn btn-primary btn-block\" ;\">Log in</button>");
out.println("            </div>");
out.println("            <div class=\"clearfix\">");
out.println("                <label class=\"float-left form-check-label\"><input type=\"checkbox\"> Remember me</label>");
out.println("                <a href=\"#\" class=\"float-right\">Forgot Password?</a>");
out.println("            </div>        ");
out.println("        </form>");
out.println("    </body>");
out.println("</html>");
%>
    </body>
</html>
