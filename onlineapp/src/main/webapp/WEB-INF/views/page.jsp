<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title}</title>
    
    <script>
   		 window.menu = '${title}';
    </script>
    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.css" rel="stylesheet">
    
    <link href="${css}/boot-themes.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
<div class="wrapper">
<!-- Navigation  -->
<%@include file="./shared/navbar.jsp" %>

<!-- Page Content -->
<div class="content">

<c:if test ="${UserClickHome == true }">
	<%@include file ="home.jsp" %>
</c:if>

<!-- Load only when user click about -->
<c:if test ="${UserClickAbout == true }">
	<%@include file ="about.jsp" %>
</c:if>

<!-- Load only when user click contact -->
<c:if test ="${UserClickContact == true }">
	<%@include file ="contact.jsp" %>
</c:if>
 </div>
<!-- Footer -->
<%@include file="./shared/footer.jsp" %>
    <!-- /.container -->

    <!-- JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/bootstrap.js"></script>
    <script src="${js}/myapp.js"></script>
</div>
</body>

</html>
