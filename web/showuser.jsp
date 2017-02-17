<%-- 
    Document   : showuser
    Created on : 17 Feb, 2017, 10:06:15 AM
    Author     : mca1
--%>


<%@page import="java.util.*,com.*,org.hibernate.*,org.hibernate.cfg.*" %>
<%! int id; String pw; String name;Session session1=null; %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <table width="220" border="1">
            <tr>
                <th>ID</th> <th>NAME</th> <th>PASSWORD</th>
            </tr>
            <%
                Configuration cf=new Configuration();
                cf.configure();
                SessionFactory sf= cf.buildSessionFactory();
                session1=sf.openSession();
                String SQL_QUERY = "from User";
                Query query = session1.createQuery(SQL_QUERY);
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
                    <%
                }
                session1.close();%>

        </table>
    </body>
</html>
