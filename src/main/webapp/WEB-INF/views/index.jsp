<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String contextPath = request.getContextPath();
    String fromServlet = (String) request.getAttribute("fromServlet");
%>
    <h1>JSP (Java Server Pages)</h1>
    <a href="<%= contextPath %>/hello.jsp">Hello world</a>
    <p>
        fromServlet = <%= fromServlet %>
    </p>
    <%
        //блок коду
        int x = 10;
        double y = x / .01;
        int[] arr = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    %>
    <p>x = <%= x %></p>
    <p>y = <%= y %></p>
    <% for (int a : arr) { %>
        <span> element = <%= a %></span> &emsp;
    <% } %>
