<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav id="nav-header" class="navbar navbar-default" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">ICNDOC</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">文档翻译</a></li>
			</ul>
			<div id="unLogin" style="display: none;">
				<ul class="nav navbar-nav navbar-right">
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="用户名">
							<input type="password" class="form-control" placeholder="密码">
						</div>
						<button type="submit" class="btn btn-default btn-login">登陆</button>
						<a href="#" class="btn btn-default btn-reg">注册</a>
					</form>
				</ul>
			</div>
			<div id="logined">
				<ul class="nav navbar-nav navbar-right">
<!-- 					<p class="navbar-text navbar-right">
						Welcome <a href="#" class="navbar-link">Like</a>
					</p> -->
				</ul>
			</div>
		</div>
	</div>
</nav>