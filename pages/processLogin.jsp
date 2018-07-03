
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
        
        if(userName.equals("zan")&&password.equals("19980708")){
        	session.setAttribute("userName", userName);
        	session.setAttribute("password", password);
        	session.setAttribute("isLogin",true);
        	
        	 request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
        }else{
        	response.sendRedirect("index.jsp");
        }
       
    %>
</body>
</html>
