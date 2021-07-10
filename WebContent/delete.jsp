<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
PhoneDao phoneDao = new PhoneDao();

int personId = Integer.parseInt(request.getParameter("id"));

int count = phoneDao.personDelete(personId);

System.out.println(count);

List<PersonVo> personList = phoneDao.getPersonList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	response.sendRedirect("./list.jsp");
	%>
</body>
</html>