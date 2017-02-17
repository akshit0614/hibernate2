<%-- 
    Document   : newjspdel
    Created on : 17 Feb, 2017, 10:18:13 AM
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
        session1.delete(user);
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
