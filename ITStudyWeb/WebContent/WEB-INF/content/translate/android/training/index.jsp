<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Android翻译</title>
	
	<link rel="stylesheet/less" type="text/css" href="../libs/lctree/lctree.less" >
    <link rel="stylesheet/less" type="text/css" href="../styles/translate/translate.less" >
    <link rel="stylesheet" href="../libs/Bootstrap/css/bootstrap.min.css">
    
    <script src="../libs/Jquery/jquery-2.1.1.min.js"></script>
    <script src="../libs/Bootstrap/js/bootstrap.min.js"></script>
    <script src="../libs/less/less-1.7.0.min.js"></script>

    <script src="../libs/lctree/lctree.js"></script>
    <script src="../js/side-menu-android.js"></script>

</head>
<body>
	<jsp:include page="../../../../content/header.jsp" />
	<article>
		<header>
			<jsp:include page="../title.jsp"></jsp:include>
		</header>
	</article>
	<div class="container translate-content">
		<section class = "col-md-4 col-sm-5 col-xs-6">
			<jsp:include page="../../gifModal.jsp" />
			<jsp:include page="side-menu.jsp" />
		</section>
		<section class = "col-md-8 col-sm-7 col-xs-6">
			<div id="#top"></div>
			<jsp:include page="c1.jsp" />
		</section>
	</div>
</body>
</html>