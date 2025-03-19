<%-- 
    Document   : view
    Created on : Nov 14, 2024, 1:09:47 AM
    Author     : computop
--%>

<%@page import="model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <h2>you successfully logged in </h2>
       <%
           
           response.setHeader("Cache-Control", "no-cache , no-store , must-revalidate");
            Employee s= null;
           HttpSession ss=request.getSession();  
           if(ss.getAttribute("name")!=null){
           s=(Employee) ss.getAttribute("name");
           
           }
           else{
           RequestDispatcher v=request.getRequestDispatcher("login.jsp");
           v.forward(request, response);
           }
       %>
     <h2>name : </h2> <%= s.getName() %> <br>
    <h2>contact : </h2> <%= s.getContact() %> <hr><br>
    <h6><iframe width="560" height="315" src="https://www.youtube.com/embed/byuXSA5nPCE?si=zUf688JJLZ8rZrZV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></h6>
    <hr><br ><a href="log.jsp">logOut</a>
    </body>
</html>
