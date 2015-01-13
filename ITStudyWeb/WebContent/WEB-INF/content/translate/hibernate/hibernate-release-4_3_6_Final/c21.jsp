<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c21">
		<div>
			<h1 id="c21"><s:text name="title21" /></h1>
			<p><s:text name="p21-1" /></p>
			<p><s:text name="p21-2" /></p>
			<ul>
				<li><s:text name="li21-1-1" /></li>
				<li><s:text name="li21-1-2" /></li>
				<li><s:text name="li21-1-3" /></li>
			</ul>
			<p><s:text name="p21-3" /></p>
			<p><s:text name="p21-4" /></p>
		</div>
		<div>
			<h2 id="c21-1"><s:text name="title21-1" /></h2>
			<p><s:text name="p21-1-1" /></p>
			<p><s:text name="p21-1-2" /></p>
			<p><s:text name="p21-1-3" /></p>
		</div>
		<div>
			<h3 id="c21-1-1"><s:text name="title21-1-1" /></h3>
			<p><s:text name="p21-1-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="zip" length="5"/&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="balance" precision="12" scale="2"/&gt;</pre>
			<p><s:text name="p21-1-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="bar" column="barId" not-null="true"/&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;element column="serialNumber" type="long" not-null="true" unique="true"/&gt;</pre>
			<p><s:text name="p21-1-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="org" column="orgId" unique-key="OrgEmployeeId"/&gt;
&lt;property name="employeeId" unique-key="OrgEmployee"/&gt;</pre>
			<p><s:text name="p21-1-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="lastName" index="CustName"/&gt;
&lt;property name="firstName" index="CustName"/&gt;</pre>
			<p><s:text name="p21-1-1-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="bar" column="barId" foreign-key="FKFooBar"/&gt;</pre>
			<p><s:text name="p21-1-1-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="name" type="my.customtypes.Name"/&gt;
    &lt;column name="last" not-null="true" index="bar_idx" length="30"/&gt;
    &lt;column name="first" not-null="true" index="bar_idx" length="20"/&gt;
    &lt;column name="initial"/&gt;
&lt;/property&gt;</pre>
			<p><s:text name="p21-1-1-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="credits" type="integer" insert="false"&gt;
    &lt;column name="credits" default="10"/&gt;
&lt;/property&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;version name="version" type="integer" insert="false"&gt;
    &lt;column name="version" default="0"/&gt;
&lt;/property&gt;</pre>
			<p><s:text name="p21-1-1-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="balance" type="float"&gt;
    &lt;column name="balance" sql-type="decimal(13,3)"/&gt;
&lt;/property&gt;</pre>
			<p><s:text name="p21-1-1-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="foo" type="integer"&gt;
    &lt;column name="foo" check="foo &gt; 10"/&gt;
&lt;/property&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Foo" table="foos" check="bar &lt; 100.0"&gt;
    ...
    &lt;property name="bar" type="float"/&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p21-1-1-10" /></p>
			<p><s:text name="p21-1-1-11" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th21-1-1-1-1" /></th>
						<th><s:text name="th21-1-1-1-2" /></th>
						<th><s:text name="th21-1-1-1-2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td21-1-1-1-1" /></td>
						<td><s:text name="td21-1-1-1-2" /></td>
						<td><s:text name="td21-1-1-1-3" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-4" /></td>
						<td><s:text name="td21-1-1-1-5" /></td>
						<td><s:text name="td21-1-1-1-6" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-7" /></td>
						<td><s:text name="td21-1-1-1-8" /></td>
						<td><s:text name="td21-1-1-1-9" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-10" /></td>
						<td><s:text name="td21-1-1-1-11" /></td>
						<td><s:text name="td21-1-1-1-12" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-13" /></td>
						<td><s:text name="td21-1-1-1-14" /></td>
						<td><s:text name="td21-1-1-1-15" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-16" /></td>
						<td><s:text name="td21-1-1-1-17" /></td>
						<td><s:text name="td21-1-1-1-18" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-19" /></td>
						<td><s:text name="td21-1-1-1-20" /></td>
						<td><s:text name="td21-1-1-1-21" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-22" /></td>
						<td><s:text name="td21-1-1-1-23" /></td>
						<td><s:text name="td21-1-1-1-24" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-25" /></td>
						<td><s:text name="td21-1-1-1-26" /></td>
						<td><s:text name="td21-1-1-1-27" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-28" /></td>
						<td><s:text name="td21-1-1-1-29" /></td>
						<td><s:text name="td21-1-1-1-30" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-1-1-31" /></td>
						<td><s:text name="td21-1-1-1-32" /></td>
						<td><s:text name="td21-1-1-1-33" /></td>
					</tr>
				</tbody>
			</table>
			<p><s:text name="p21-1-1-12" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Customer" table="CurCust"&gt;
    &lt;comment&gt;Current customers only&lt;/comment&gt;
    ...
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="balance"&gt;
    &lt;column name="bal"&gt;
        &lt;comment&gt;Balance in USD&lt;/comment&gt;
    &lt;/column&gt;
&lt;/property&gt;</pre>
			<p><s:text name="p21-1-1-13" /></p>
		</div>
		<div>
			<h3 id="c21-1-2"><s:text name="title21-1-2" /></h3>
			<p><s:text name="p21-1-2-1" /></p>
			<p><s:text name="p21-1-2-2" /></p>
			<p><s:text name="p21-1-2-3" /></p>
			<p><s:text name="p21-1-2-4" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th21-1-2-2-1" /></th>
						<th><s:text name="th21-1-2-2-2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td21-1-2-2-1" /></td>
						<td><s:text name="td21-1-2-2-2" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-3" /></td>
						<td><s:text name="td21-1-2-2-4" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-5" /></td>
						<td><s:text name="td21-1-2-2-6" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-7" /></td>
						<td><s:text name="td21-1-2-2-8" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-9" /></td>
						<td><s:text name="td21-1-2-2-10" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-11" /></td>
						<td><s:text name="td21-1-2-2-12" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-13" /></td>
						<td><s:text name="td21-1-2-2-14" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-15" /></td>
						<td><s:text name="td21-1-2-2-16" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-17" /></td>
						<td><s:text name="td21-1-2-2-18" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-2-2-19" /></td>
						<td><s:text name="td21-1-2-2-20" /></td>
					</tr>
				</tbody>
			</table>
			<p><s:text name="p21-1-2-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Configuration cfg = ....;
new SchemaExport(cfg).create(false, true);</pre>
		</div>
		<div>
			<h3 id="c21-1-3"><s:text name="title21-1-3" /></h3>
			<p><s:text name="p21-1-3-1" /></p>
			<ul>
				<li><s:text name="li21-1-3-1-1" /></li>
				<li><s:text name="li21-1-3-1-2" /></li>
				<li><s:text name="li21-1-3-1-3" /></li>
			</ul>
			<p><s:text name="p21-1-3-2" /></p>
			<p><s:text name="p21-1-3-3" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th21-1-3-1-1" /></th>
						<th><s:text name="th21-1-3-1-2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td21-1-3-1-1" /></td>
						<td><s:text name="td21-1-3-1-2" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-3-1-3" /></td>
						<td><s:text name="td21-1-3-1-4" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-3-1-5" /></td>
						<td><s:text name="td21-1-3-1-6" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-3-1-7" /></td>
						<td><s:text name="td21-1-3-1-8" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-3-1-9" /></td>
						<td><s:text name="td21-1-3-1-10" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<h3 id="c21-1-4"><s:text name="title21-1-4" /></h3>
			<p><s:text name="p21-1-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;target name="schemaexport"&gt;
    &lt;taskdef name="schemaexport"
        classname="org.hibernate.tool.hbm2ddl.SchemaExportTask"
        classpathref="class.path"/&gt;
    
    &lt;schemaexport
        properties="hibernate.properties"
        quiet="no"
        text="no"
        drop="no"
        delimiter=";"
        output="schema-export.sql"&gt;
        &lt;fileset dir="src"&gt;
            &lt;include name="**/*.hbm.xml"/&gt;
        &lt;/fileset&gt;
    &lt;/schemaexport&gt;
&lt;/target&gt;</pre>
		</div>
		<div>
			<h3 id="c21-1-5"><s:text name="title21-1-5" /></h3>
			<p><s:text name="p21-1-5-1" /></p>
			<p><s:text name="p21-1-5-2" /></p>
			<p><s:text name="p21-1-5-3" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th21-1-5-1-1" /></th>
						<th><s:text name="th21-1-5-1-2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td21-1-5-1-1" /></td>
						<td><s:text name="td21-1-5-1-2" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-5-1-3" /></td>
						<td><s:text name="td21-1-5-1-4" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-5-1-5" /></td>
						<td><s:text name="td21-1-5-1-6" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-5-1-7" /></td>
						<td><s:text name="td21-1-5-1-8" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-5-1-9" /></td>
						<td><s:text name="td21-1-5-1-10" /></td>
					</tr>
				</tbody>
			</table>
			<p><s:text name="p21-1-5-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Configuration cfg = ....;
new SchemaUpdate(cfg).execute(false);</pre>
		</div>
		<div>
			<h3 id="c21-1-6"><s:text name="title21-1-6" /></h3>
			<p><s:text name="p21-1-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;target name="schemaupdate"&gt;
    &lt;taskdef name="schemaupdate"
        classname="org.hibernate.tool.hbm2ddl.SchemaUpdateTask"
        classpathref="class.path"/&gt;
    
    &lt;schemaupdate
        properties="hibernate.properties"
        quiet="no"&gt;
        &lt;fileset dir="src"&gt;
            &lt;include name="**/*.hbm.xml"/&gt;
        &lt;/fileset&gt;
    &lt;/schemaupdate&gt;
&lt;/target&gt;</pre>
		</div>
		<div>
			<h3 id="c21-1-7"><s:text name="title21-1-7" /></h3>
			<p><s:text name="p21-1-7-1" /></p>
			<p><s:text name="p21-1-7-2" /></p>
			<p><s:text name="p21-1-7-3" /></p>
			<p><s:text name="p21-1-7-4" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th21-1-7-1-1" /></th>
						<th><s:text name="th21-1-7-1-2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td21-1-7-1-1" /></td>
						<td><s:text name="td21-1-7-1-2" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-7-1-3" /></td>
						<td><s:text name="td21-1-7-1-4" /></td>
					</tr>
					<tr>
						<td><s:text name="td21-1-7-1-5" /></td>
						<td><s:text name="td21-1-7-1-6" /></td>
					</tr>
				</tbody>
			</table>
			<p><s:text name="p21-1-7-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Configuration cfg = ....;
new SchemaValidator(cfg).validate();</pre>
		</div>
		<div>
			<h3 id="c21-1-8"><s:text name="title21-1-8" /></h3>
			<p><s:text name="p21-1-8-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;target name="schemavalidate"&gt;
    &lt;taskdef name="schemavalidator"
        classname="org.hibernate.tool.hbm2ddl.SchemaValidatorTask"
        classpathref="class.path"/&gt;
    
    &lt;schemavalidator
        properties="hibernate.properties"&gt;
        &lt;fileset dir="src"&gt;
            &lt;include name="**/*.hbm.xml"/&gt;
        &lt;/fileset&gt;
    &lt;/schemavalidator&gt;
&lt;/target&gt;</pre>
		</div>
	</s:i18n>
</div>
