<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="bs-docs-header" id="content">
    <div class="container" id="title">
        <div>
            <h1>Hibernate<br/><small> hibernate-release-4.3.6.Final</small></h1>
            <p>这里是Hibernate文档的翻译页面，可以自由切换中英文。</p>
            <p>有任何问题或建议，欢迎加入QQ群：130472594 </p>
        </div>
    </div>
    <div id="side-controller">
		<div class="btn-group-vertical">
			<s:url action="toZH" var="toZH">
			  	<s:param name="name">${name }</s:param>
			  	<s:param name="version">${version }</s:param>
			</s:url>
			<s:url action="toEN" var="toEN">
			  	<s:param name="name">${name }</s:param>
			  	<s:param name="version">${version }</s:param>
			</s:url>
			<a id="toTop" href="#top" class="btn btn-default glyphicon glyphicon-chevron-up"></a>
			<input id="currentChapter" type="hidden" value="${currentChapter }" />
			<s:set name="currentLanguage" value="currentLanguage" />
			<s:if test="#currentLanguage == 'zh' ">
				<a id="btnChangeLanguage" href="${toEN }" class="btn btn-default"><span class="current-language">中</span>/<span>EN</span></a>
			</s:if>
			<s:else>
				<a id="btnChangeLanguage" href="${toZH }" class="btn btn-default"><span>中</span>/<span class="current-language">EN</span></a>
			</s:else>
		</div>
	</div>
</div>