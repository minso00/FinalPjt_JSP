<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("email");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String nickname = request.getParameter("nickname");
	
	
	LoginDto dto = new LoginDto(email, name, pwd, nickname);
	
	LoginDao dao = new LoginDao();
	
	dao.insertLogin(dto);	
	response.sendRedirect("list.jsp");
</body>
</html>