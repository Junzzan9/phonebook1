<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.javaex.dao.PhoneDao"%>
<%@page import="com.javaex.vo.PersonVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String com = request.getParameter("company");

PhoneDao phoneDao = new PhoneDao();
PersonVo personVo = new PersonVo(name, hp, com);

phoneDao.personInsert(personVo);

/*
System.out.println(name + hp + com);
*/

List<PersonVo> personList = phoneDao.getPersonList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트-insert</h1>
	<br>
	<p>입력한 정보 내역입니다.</p>

	<%
	response.sendRedirect("./list.jsp");
	%>

</body>
</html>