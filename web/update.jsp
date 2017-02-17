    <%-- 
    Document   : update
    Created on : 17 Feb, 2017, 9:45:00 AM
    Author     : mca1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form action="updatedb.jsp" method="post">
            ID : <input type="text" name="id"/><br/><br/>
            Name : <input type="text" name="name"/><br/><br/>
            Password : <input type="password" name="password"/><br/><br/>
            <input type="submit" value="update"/>
        </form>

    </body>
</html>
