<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
</head>
<body>
	<div id="root">
		<header>
			<h1>�Խ���</h1>
		</header>
		<hr />
		
		<nav>
			Ȩ - �� �ۼ�
		</nav>
		<hr />
		
		<section id = "container">
			<form role="form" method="post">
				<table>
					<tr>
						<td>
							<label for="bno">�� ��ȣ</label><input type="text" id="bno" name="bno" value="${read.bno}"/>
						</td>
					</tr>
					<tr>
						<td>
							<label for="title">����</label><input type="text" id="title" name="title" value="${read.title}"/>
						</td>
					</tr>
					<tr>
						<td>
							<label for="content">����</label><textarea id="content" name="content"><c:out value="${read.content}"/></textarea>
						</td>
					</tr>
					<tr>
						<td>
							<label for="writer">�ۼ���</label><input type="text" id="writer" name="writer" value="${read.writer}"/>
						</td>
					</tr>
					<tr>
						<td>
							<label for="bno">�ۼ���¥</label>
							<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd" />
						</td>
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>