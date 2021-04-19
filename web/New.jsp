<%-- 
    Document   : New
    Created on : Mar 19, 2021, 9:03:36 PM
    Author     : vijmr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

out.println("      <nav class=\"navbar navbar-expand-lg navbar-dark\" style=\"background-color: blueviolet;\">");
out.println("        <a class=\"navbar-brand\" href=\"#\"\">College Attendance System</a>");
out.println("        ");
out.println("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
out.println("          <span class=\"navbar-toggler-icon\"></span>");
out.println("        </button>");
out.println("      ");
out.println("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
out.println("          <ul class=\"navbar-nav mr-auto\">");
out.println("            <li class=\"nav-item \">");
out.println("              <a class=\"nav-link\" href=\"index.html\">Home</a>");
out.println("            </li>");
out.println("            <li class=\"nav-item active dropdown\">");
out.println("              <a class=\"nav-link\" href=\"New\">Faculty<span class=\"sr-only\">(current)</span></a>");
out.println("            </li>");
out.println("            <li class=\"nav-item dropdown\">");
out.println("                <a class=\"nav-link\" href=\"New\">Student<span class=\"sr-only\">(current)</span></a>");
out.println("              </li>");
out.println("        ");
out.println("                  </div>");
out.println("                  <a class=\"navbar-brand\" href=\"#\" style=\"text-align: end;\"><span id=\"text-center\"></span></a>");
out.println("      ");
out.println("                </nav>");
out.println("<form action=\"New\" method=\"post\" style=\"margin-bottom:15px;background-color: #32383e; box-shadow: 0 2px 2px; padding: 30px; box-sizing: border-box; display: block; margin-top: 100px;margin-bottom: 500px; height: 500px; width: 800px; margin-left: 200px; border-radius: 5px;\" >");
out.println("    <h2 id=\"text-center\" style=\"padding-bottom: 30px; font-size: 60px; color: white;\">Add Faculty</h2>       ");
out.println("    <script>function getInputValue(){");
out.println("        ");
out.println("        var inputVal = document.getElementById(\"text-center\").value;");
out.println("        ");
out.println("    } </script>");
out.println("    <div class=\"form-group\" style=\"width: 350px; float:left\" >");
out.println("        <input type=\"text\" name=\"name\" class=\"form-control\" placeholder=\"Name\" required=\"required\" style=\"margin-top:40px;\">");
out.println("    </div>");
out.println("    <div class=\"form-group\" style=\"width: 350px; float:right;margin-left: 10px; \" >");
out.println("        <input type=\"text\" name=\"date\" class=\"form-control\" placeholder=\"D.O.B\" required=\"required\" style=\"margin-top:40px;\">");
out.println("    </div>");
out.println("    <div class=\"form-group\">");
out.println("        <input type=\"text\" name=\"subject\" class=\"form-control\" placeholder=\"Course\" required=\"required\" style=\"margin-top:70px;\">");
out.println("    </div>");
out.println("    <div class=\"form-group\">");
out.println("        <input type=\"text\" name=\"mobile\" class=\"form-control\" placeholder=\"Mobile No\" required=\"required\">");
out.println("    </div>");
out.println("    <div class=\"form-group\">");
out.println("        <input  type=\"text\" name=\"id\" class=\"form-control\" placeholder=\"Faculty-Id\" required=\"required\">");
out.println("    </div>");
out.println("    <div class=\"form-group\">");
out.println("        <input  type=\"text\" name=\"email\" class=\"form-control\" placeholder=\"Email\" required=\"required\">");
out.println("    </div>");
out.println("    <div class=\"form-group\">");
out.println("        <button type=\"submit\" class=\"btn btn-primary btn-block \" style=\"margin-top:80px; width: 250px; align-self:flex-end; margin-left: 520px;background-color: darkviolet;\">Add</button>");
out.println("    </div>");
out.println("    <div class=\"form-group\">");
out.println("    </div>");
out.println("    <div class=\"clearfix\">");
out.println("        ");
out.println("    </div>        ");
out.println("</form>");
out.println("</body>");
out.println("</html>");
%>