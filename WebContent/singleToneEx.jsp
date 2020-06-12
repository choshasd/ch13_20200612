<%@page import="chap13.boardex.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*  
	BoardDBBean bdb = new BoardDBBean();
	out.println(bdb.toString()+"<br/>");
	BoardDBBean bdb1 = new BoardDBBean();
	out.println(bdb1.toString()+"<br/>");
	BoardDBBean bdb2 = new BoardDBBean();
	out.println(bdb2.toString()+"<br/><br/>");
*/
	
	out.println("<h1>Single Tone</h1>");
	BoardDBBean gbdb1 = BoardDBBean.getInstance();
	out.println(gbdb1.toString()+"<br/>");
	BoardDBBean gbdb2 = BoardDBBean.getInstance();
	out.println(gbdb2.toString()+"<br/>");
	BoardDBBean gbdb3 = BoardDBBean.getInstance();
	out.println(gbdb3.toString()+" "+gbdb3.doA()+"<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
writeForm.jsp

</body>
</html>