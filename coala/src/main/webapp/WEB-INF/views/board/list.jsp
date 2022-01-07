<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id = "root">
		<header>
			<h1>�Խ���</h1>
		</header>
		<hr />
		
		<nav>
			Ȩ - �� �ۼ�
		</nav>
		<hr />
		
		<section id = "container">
			<form role="form" method = "post" action = "/board/write">
				<table>
					<tr><th>��ȣ</th><th>����</th><th>�ۼ���</th><th>�����</th></tr>
					
					<c:forEach items = "${list}" var = "list">
						<tr>
							<td><c:out value="${list.bno}"/></td>
							<td>
								<a href="/board/readView?bno=${list.bno}"><c:out value="${list.title}"/></a>
							</td>
							<td><c:out value="${list.writer}"/></td>
							<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
						</tr>	
					</c:forEach>
				</table>
			</form>
		</section>
	</div>

</body>
</html>