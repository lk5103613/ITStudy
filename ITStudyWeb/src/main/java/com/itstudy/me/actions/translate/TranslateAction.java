package com.itstudy.me.actions.translate;

import java.util.Locale;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TranslateAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	private Locale chLocale = new Locale("zh");
	private Locale enLocale = new Locale("en");
	
	private String name;
	private String version;
	private String currentLanguage = "zh";
	private String currentChapter = "top";
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getCurrentLanguage() {
		return currentLanguage;
	}
	public String getCurrentChapter() {
		return currentChapter;
	}
	public void setCurrentChapter(String currentChapter) {
		this.currentChapter = currentChapter;
	}
	@Action(value = "index", results = {@Result(location = "${name}/${version}/index.jsp")})
	public String index() {
		ActionContext ac = ActionContext.getContext();
		ac.setLocale(chLocale);
		return SUCCESS;
	}
	
	@Action(value = "toZH", results = {@Result(location = "${name}/${version}/index.jsp")})
	public String toZH() {
		ActionContext ac = ActionContext.getContext();
		ac.setLocale(chLocale);
		this.currentLanguage = "zh";
		return SUCCESS;
	}
	
	@Action(value = "toEN", results = {@Result(location = "${name}/${version}/index.jsp")})
	public String toEN() {
		ActionContext ac = ActionContext.getContext();
		ac.setLocale(enLocale);
		this.currentLanguage = "en";
		return SUCCESS;
	}
	
}
