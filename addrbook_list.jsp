<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" %>
    <%@page import="java.util.*, jspbook.addrbook.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록:목록화면</title>
</head>
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList"/>
<body>
<div align="center">
<H2>주소록:목록화면</H2>
<HR>
<form>
<a href="addrbook_form.jsp">주소록 등록</a><P>

<table border="1">
<tr><th>번호</th><th>이름</th><th>전화번호</th><th>생일</th>
<th>회사</th><th>메모</th>
</tr>

<% for(AddrBook ab : (ArrayList<AddrBook>)datas){
	%>

<tr>
<td><a href="addrbook_edit_form.jsp"><%= ab.getAb_id() %></a></td>
<td><%= ab.getAb_name()%></td>
<td><%= ab.getAb_tel()%></td>
<td><%= ab.getAb_birth()%></td>
<td><%= ab.getAb_comdept()%></td>
<td><%= ab.getAb_memo() %></td>
</tr>
<%}%>
</table>
</form>
</div>
</body>
</html>