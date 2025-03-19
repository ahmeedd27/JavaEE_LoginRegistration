<%-- 
    Document   : log
    Created on : Nov 14, 2024, 10:19:34 AM
    Author     : computop
logout
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
          response.setHeader("Cache-Control", "no-cache , no-store , must-revalidate");
            if (session.getAttribute("name") != null) {
                session.removeAttribute("name");
                session.invalidate();
                RequestDispatcher v = request.getRequestDispatcher("login.jsp");
                    v.forward(request, response);
                

            } else {
                RequestDispatcher v = request.getRequestDispatcher("login.jsp");
                    v.forward(request, response);
            }


        %>
    </body>
</html>
