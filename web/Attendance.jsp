<%-- 
    Document   : Attendance
    Created on : Mar 21, 2021, 4:07:10 PM
    Author     : vijmr
--%>

<%@page contentType="text/html" %>
<jsp:useBean id="rs" scope="request" type="java.sql.ResultSet" />
<%
out.println("<html>");
out.println("    <head>");
out.println("        <title>Faculty Database</title>");
out.println("        <link  rel=\"stylesheet\" href=\"style.css\" href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css' >");
out.println("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">");
out.println("    </head>");
out.println("    ");
%>
    <body onload="myFunction()" background="https://static.vecteezy.com/system/resources/previews/000/681/821/large_2x/blue-green-gradient-fluid-overlapping-shapes.jpg">");

<%
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
out.println("                <li class=\"nav-item active\">");
out.println("                  <a class=\"nav-link\" href=\"vijdhobal.html\">Log-in<span class=\"sr-only\">(current)</span></a>");
out.println("                </li>");
out.println("            ");
out.println("                      </div>");
out.println("                      <a class=\"navbar-brand\" href=\"#\" style=\"text-align: end;\"><span id=\"text-center\"></span></a>");
out.println("                      ");
out.println("                    </nav>");
 %>
 
<div style="float: left; margin-top: 100px; margin-left: 200px;">

 
<table cellpadding="0" style="font-family: verdana; font-size: 10pt;">
           <tr>

              <th style="height:38px; width:200px; text-align:center; color: white;">Student Name</th>
           </tr>

            <%
                while(rs.next()){
            %>
            <tr>
               
               
                <td style="color: white;height:38px;"><%= rs.getString(1) %></td>
                
                
                
            
            </tr>
           
            <%
                }
            %>
            
        </table>
    </div>
            <div style="float:right; position: absolute; margin-top: 100px; margin-left: 200px; " >
         <table class="attendance-view"> <thead> <tr> <th style="width:10px;" class="name-col">Student Name</th> <th>1</th> <th>2</th> <th>3</th> <th>4</th> <th>5</th> <th>6</th> <th>7</th> <th>8</th> <th>9</th> <th>10</th> <th>11</th> <th>12</th> <th class="missed-col">Days Missed-col</th> 
                 </tr>
             </thead>
             <tbody>
             </tbody>
         </table></div> <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> <script src="js/app.js"></script> <script  src="script.js"></script>
         <button class="btn btn-primary" style="background-color: #4CAF50; margin-left: 555px;" onclick="document.location='printattend.jsp'">Submit Attendance</button>
    
        }
       <script>

  document.getElementsByclass(".name-col")[0].setAttribute("style", "opacity:0;");
          

</script>
         <script> 
         
            function Geeks() { 
                var el_down = document.getElementByClass("name-col"); 
                var tble = document.getElementByClass('attendance-view'); 
                var row = tble.rows; // Getting the rows 
        
                for (var i = 0; i < row[0].cells.length; i++) { 
        
                    // Getting the text of columnName 
                    var str = row[0].cells[i].innerHTML; 
        
                    // If 'Geek_id' matches with the columnName  
                    if (str.search("Student Name") != -1) {  
                        for (var j = 0; j < row.length; j++) { 
        
                            // Deleting the ith cell of each row 
                            row[j].deleteCell(i); 
                        } 
                    } 
                } 
                el_down.innerHTML =  
                    "Column is removed from the table."; 
            } 
        </script>  </body> </html>
        
   
