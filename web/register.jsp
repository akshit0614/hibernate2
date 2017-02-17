<%-- 
    Document   : register
    Created on : 14 Feb, 2017, 2:48:20 PM
    Author     : mca1
--%>

<%@page import="com.Userdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:useBean id="obj" class="com.User">
            <jsp:setProperty property="*" name="obj"/>
        </jsp:useBean>
        <%
        int i= Userdao.register(obj);
        if(i>0)
            out.print("Successfull registration");
        else
            out.print("not successfull");
        %>

    </body>
</html>
