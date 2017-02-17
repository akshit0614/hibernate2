<%-- 
    Document   : updatedb
    Created on : 17 Feb, 2017, 10:04:11 AM
    Author     : mca1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*,com.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! int id; String pw; String name;Session session1=null; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Before Updation</h1>
        <jsp:include page="showuser.jsp"/>
        <br/><br/>
        <h1>After Updation</h1>
        <table width="220" border="1">
            <tr>
                <td>ID</td><th>NAME</th><th>PASSWORD</th>
            </tr>
        
        <% int i=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String pw=request.getParameter("password");
        Configuration cf=new Configuration();
        cf.configure();
        SessionFactory sf=cf.buildSessionFactory();
        session1=sf.openSession();
        User user=null;
        session1.beginTransaction();
        user=(User)session1.get(User.class, i);
        user.setName(name);
        user.setPassword(pw);
        session1.update(user);
        session1.getTransaction().commit();
        String SQL_QUERY="from User";
        Query query=session1.createQuery(SQL_QUERY);
        Iterator it=query.iterate();
                while(it.hasNext())
                {
                    User e=(User)it.next();
                    id =e.getId();
                    name= e.getName();
                    pw=e.getPassword();
                
               
        %>
        <tr>
                    <td><%= id%></td><td><%= name%></td><td><%= pw%></td>
        </tr>
        </table>
        <%
                }
                session1.close();
        %>
  
    </body>
</html>
