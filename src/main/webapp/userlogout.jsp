<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Invalidate the session
    session.invalidate();

    // Redirect to homepage or login page
    response.sendRedirect("index.jsp"); // Or use "user_login.jsp" if you prefer
%>
