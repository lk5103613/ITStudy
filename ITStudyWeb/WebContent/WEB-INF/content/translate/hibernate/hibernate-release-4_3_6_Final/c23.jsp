<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c23">
		<div>
			<h1 id="c23"><s:text name="title23" /></h1>
			<p><s:text name="p23-1" /></p>
		</div>
		<div>
			<h2 id="c23-1"><s:text name="title23-1" /></h2>
			<p><s:text name="p23-1-1" /></p>
			<ul>
				<li><s:text name="li23-1-1-1" /></li>
				<li><s:text name="li23-1-1-2" /></li>
				<li><s:text name="li23-1-1-3" /></li>
			</ul>
			<p><s:text name="p23-1-2" /></p>
		</div>
		<div>
			<h2 id="c23-2"><s:text name="title23-2" /></h2>
			<p><s:text name="p23-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="children"&gt;
    &lt;key column="parent_id"/&gt;
    &lt;one-to-many class="Child"/&gt;
&lt;/set&gt;</pre>
			<p><s:text name="p23-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = .....;
Child c = new Child();
p.getChildren().add(c);
session.save(c);
session.flush();</pre>
			<p><s:text name="p23-2-3" /></p>
			<ul>
				<li><s:text name="li23-2-1-1" /></li>
				<li><s:text name="li23-2-1-2" /></li>
			</ul>
			<p><s:text name="p23-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="children"&gt;
    &lt;key column="parent_id" not-null="true"/&gt;
    &lt;one-to-many class="Child"/&gt;
&lt;/set&gt;</pre>
			<p><s:text name="p23-2-5" /></p>
			<p><s:text name="p23-2-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="parent" column="parent_id" not-null="true"/&gt;</pre>
			<p><s:text name="p23-2-7" /></p>
			<p><s:text name="p23-2-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="children" inverse="true"&gt;
    &lt;key column="parent_id"/&gt;
    &lt;one-to-many class="Child"/&gt;
&lt;/set&gt;</pre>
			<p><s:text name="p23-2-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = (Parent) session.load(Parent.class, pid);
Child c = new Child();
c.setParent(p);
p.getChildren().add(c);
session.save(c);
session.flush();</pre>
			<p><s:text name="p23-2-10" /></p>
			<p><s:text name="p23-2-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public void addChild(Child c) {
    c.setParent(this);
    children.add(c);
}</pre>
			<p><s:text name="p23-2-12" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = (Parent) session.load(Parent.class, pid);
Child c = new Child();
p.addChild(c);
session.save(c);
session.flush();</pre>
		</div>
		<div>
			<h2 id="c23-3"><s:text name="title23-3" /></h2>
			<p><s:text name="p23-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="children" inverse="true" cascade="all"&gt;
    &lt;key column="parent_id"/&gt;
    &lt;one-to-many class="Child"/&gt;
&lt;/set&gt;</pre>
			<p><s:text name="p23-3-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = (Parent) session.load(Parent.class, pid);
Child c = new Child();
p.addChild(c);
session.flush();</pre>
			<p><s:text name="p23-3-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = (Parent) session.load(Parent.class, pid);
session.delete(p);
session.flush();</pre>
			<p><s:text name="p23-3-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = (Parent) session.load(Parent.class, pid);
Child c = (Child) p.getChildren().iterator().next();
p.getChildren().remove(c);
c.setParent(null);
session.flush();</pre>
			<p><s:text name="p23-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = (Parent) session.load(Parent.class, pid);
Child c = (Child) p.getChildren().iterator().next();
p.getChildren().remove(c);
session.delete(c);
session.flush();</pre>
			<p><s:text name="p23-3-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="children" inverse="true" cascade="all-delete-orphan"&gt;
    &lt;key column="parent_id"/&gt;
    &lt;one-to-many class="Child"/&gt;
&lt;/set&gt;</pre>
			<p><s:text name="p23-3-7" /></p>
		</div>
		<div>
			<h2 id="c23-4"><s:text name="title23-4" /></h2>
			<p><s:text name="p23-4-1" /></p>
			<p><s:text name="p23-4-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
//parent and child were both loaded in a previous session
parent.addChild(child);
Child newChild = new Child();
parent.addChild(newChild);
session.update(parent);
session.flush();</pre>
			<p><s:text name="p23-4-3" /></p>
		</div>
		<div>
			<h2 id="c23-5"><s:text name="title23-5" /></h2>
			<p><s:text name="p23-5-1" /></p>
			<p><s:text name="p23-5-2" /></p>
		</div>
	</s:i18n>
</div>