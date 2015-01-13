<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c18">
		<div>
			<h1 id="c18"><s:text name="title18" /></h1>
			<p><s:text name="p18-1" /></p>
			<p><s:text name="p18-2" /></p>
		</div>
		<div>
			<h2 id="c18-1"><s:text name="title18-1" /></h2>
			<p><s:text name="p18-1-1" /></p>
		</div>
		<div>
			<h3 id="c18-1-1"><s:text name="title18-1-1" /></h3>
			<p><s:text name="p18-1-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT * FROM CATS").list();
sess.createSQLQuery("SELECT ID, NAME, BIRTHDATE FROM CATS").list();
</pre>
			<p><s:text name="p18-1-1-2" /></p>
			<p><s:text name="p18-1-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT * FROM CATS")
 .addScalar("ID", Hibernate.LONG)
 .addScalar("NAME", Hibernate.STRING)
 .addScalar("BIRTHDATE", Hibernate.DATE)
</pre>
			<p><s:text name="p18-1-1-4" /></p>
			<ul>
				<li><s:text name="li18-1-1-1-1" /></li>
				<li><s:text name="li18-1-1-1-2" /></li>
			</ul>
			<p><s:text name="p18-1-1-5" /></p>
			<p><s:text name="p18-1-1-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT * FROM CATS")
 .addScalar("ID", Hibernate.LONG)
 .addScalar("NAME")
 .addScalar("BIRTHDATE")
</pre>
			<p><s:text name="p18-1-1-7" /></p>
			<p><s:text name="p18-1-1-8" /></p>
		</div>
		<div>
			<h3 id="c18-1-2"><s:text name="title18-1-2" /></h3>
			<p><s:text name="p18-1-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT * FROM CATS").addEntity(Cat.class);
sess.createSQLQuery("SELECT ID, NAME, BIRTHDATE FROM CATS").addEntity(Cat.class);
</pre>
			<p><s:text name="p18-1-2-2" /></p>
			<ul>
				<li><s:text name="li18-1-2-1-1" /></li>
				<li><s:text name="li18-1-2-1-2" /></li>
			</ul>
			<p><s:text name="p18-1-2-3" /></p>
			<p><s:text name="p18-1-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT ID, NAME, BIRTHDATE, DOG_ID FROM CATS").addEntity(Cat.class);
</pre>
			<p><s:text name="p18-1-2-5" /></p>
		</div>
		<div>
			<h3 id="c18-1-3"><s:text name="title18-1-3" /></h3>
			<p><s:text name="p18-1-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT c.ID, NAME, BIRTHDATE, DOG_ID, D_ID, D_NAME FROM CATS c, DOGS d WHERE c.DOG_ID = d.D_ID")
 .addEntity("cat", Cat.class)
 .addJoin("cat.dog");
</pre>
			<p><s:text name="p18-1-3-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT ID, NAME, BIRTHDATE, D_ID, D_NAME, CAT_ID FROM CATS c, DOGS d WHERE c.ID = d.CAT_ID")
 .addEntity("cat", Cat.class)
 .addJoin("cat.dogs");
</pre>
			<p><s:text name="p18-1-3-3" /></p>
		</div>
		<div>
			<h3 id="c18-1-4"><s:text name="title18-1-4" /></h3>
			<p><s:text name="p18-1-4-1" /></p>
			<p><s:text name="p18-1-4-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT c.*, m.*  FROM CATS c, CATS m WHERE c.MOTHER_ID = c.ID")
 .addEntity("cat", Cat.class)
 .addEntity("mother", Cat.class)
</pre>
			<p><s:text name="p18-1-4-3" /></p>
			<p><s:text name="p18-1-4-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT {cat.*}, {m.*}  FROM CATS c, CATS m WHERE c.MOTHER_ID = m.ID")
 .addEntity("cat", Cat.class)
 .addEntity("mother", Cat.class)
</pre>
			<p><s:text name="p18-1-4-5" /></p>
			<ul>
				<li><s:text name="li18-1-4-1-1" /></li>
				<li><s:text name="li18-1-4-1-2" /></li>
			</ul>
			<p><s:text name="p18-1-4-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
String sql = "SELECT ID as {c.id}, NAME as {c.name}, " +
         "BIRTHDATE as {c.birthDate}, MOTHER_ID as {c.mother}, {mother.*} " +
         "FROM CAT_LOG c, CAT_LOG m WHERE {c.mother} = c.ID";

List loggedCats = sess.createSQLQuery(sql)
        .addEntity("cat", Cat.class)
        .addEntity("mother", Cat.class).list()
</pre>
		</div>
		<div>
			<h4 id="c18-1-4-1"><s:text name="title18-1-4-1" /></h4>
			<p><s:text name="p18-1-4-1-1" /></p>
			<p><s:text name="p18-1-4-1-2" /></p>
			<p><s:text name="p18-1-4-1-3" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th18-1-4-1-1-1" /></th>
						<th><s:text name="th18-1-4-1-1-2" /></th>
						<th><s:text name="th18-1-4-1-1-3" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td18-1-4-1-1-1" /></td>
						<td><s:text name="td18-1-4-1-1-2" /></td>
						<td><s:text name="td18-1-4-1-1-3" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-4" /></td>
						<td><s:text name="td18-1-4-1-1-5" /></td>
						<td><s:text name="td18-1-4-1-1-6" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-7" /></td>
						<td><s:text name="td18-1-4-1-1-8" /></td>
						<td><s:text name="td18-1-4-1-1-9" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-10" /></td>
						<td><s:text name="td18-1-4-1-1-11" /></td>
						<td><s:text name="td18-1-4-1-1-12" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-13" /></td>
						<td><s:text name="td18-1-4-1-1-14" /></td>
						<td><s:text name="td18-1-4-1-1-15" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-16" /></td>
						<td><s:text name="td18-1-4-1-1-17" /></td>
						<td><s:text name="td18-1-4-1-1-18" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-19" /></td>
						<td><s:text name="td18-1-4-1-1-20" /></td>
						<td><s:text name="td18-1-4-1-1-21" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-22" /></td>
						<td><s:text name="td18-1-4-1-1-23" /></td>
						<td><s:text name="td18-1-4-1-1-24" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-25" /></td>
						<td><s:text name="td18-1-4-1-1-26" /></td>
						<td><s:text name="td18-1-4-1-1-27" /></td>
					</tr>
					<tr>
						<td><s:text name="td18-1-4-1-1-28" /></td>
						<td><s:text name="td18-1-4-1-1-29" /></td>
						<td><s:text name="td18-1-4-1-1-30" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<h3 id="c18-1-5"><s:text name="title18-1-5" /></h3>
			<p><s:text name="p18-1-5-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.createSQLQuery("SELECT NAME, BIRTHDATE FROM CATS")
        .setResultTransformer(Transformers.aliasToBean(CatDTO.class))</pre>
			<p><s:text name="p18-1-5-2" /></p>
			<ul>
				<li><s:text name="li18-1-5-1-1" /></li>
				<li><s:text name="li18-1-5-1-2" /></li>
			</ul>
			<p><s:text name="p18-1-5-3" /></p>
		</div>
		<div>
			<h3 id="c18-1-6"><s:text name="title18-1-6" /></h3>
			<p><s:text name="p18-1-6-1" /></p>
		</div>
		<div>
			<h3 id="c18-1-7"><s:text name="title18-1-7" /></h3>
			<p><s:text name="p18-1-7-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Query query = sess.createSQLQuery("SELECT * FROM CATS WHERE NAME like ?").addEntity(Cat.class);
List pusList = query.setString(0, "Pus%").list();
     
query = sess.createSQLQuery("SELECT * FROM CATS WHERE NAME like :name").addEntity(Cat.class);
List pusList = query.setString("name", "Pus%").list();          </pre>
		</div>
		<div>
			<h2 id="c18-2"><s:text name="title18-2" /></h2>
			<p><s:text name="p18-2-1" /></p>
			<div class="example"><a id="d5e8473"><p class="title"><strong>Example&nbsp;18.1.&nbsp;Named sql query using the &lt;sql-query&gt; maping
      element</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="persons"&gt;
    &lt;return alias="person" class="eg.Person"/&gt;
    SELECT person.NAME AS {person.name},
           person.AGE AS {person.age},
           person.SEX AS {person.sex}
    FROM PERSON person
    WHERE person.NAME LIKE :namePattern
&lt;/sql-query&gt;</pre>
    </div></a></div>			
			<div class="example"><a id="d5e8473"></a><a id="d5e8476"><p class="title"><strong>Example&nbsp;18.2.&nbsp;Execution of a named query</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
List people = sess.getNamedQuery("persons")
    .setString("namePattern", namePattern)
    .setMaxResults(50)
    .list();</pre>
    </div></a></div>
			<p><s:text name="p18-2-2" /></p>
			<div class="example"><a id="d5e8476"></a><a id="d5e8482"><p class="title"><strong>Example&nbsp;18.3.&nbsp;Named sql query with association</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="personsWith"&gt;
    &lt;return alias="person" class="eg.Person"/&gt;
    &lt;return-join alias="address" property="person.mailingAddress"/&gt;
    SELECT person.NAME AS {person.name},
           person.AGE AS {person.age},
           person.SEX AS {person.sex},
           address.STREET AS {address.street},
           address.CITY AS {address.city},
           address.STATE AS {address.state},
           address.ZIP AS {address.zip}
    FROM PERSON person
    JOIN ADDRESS address
        ON person.ID = address.PERSON_ID AND address.TYPE='MAILING'
    WHERE person.NAME LIKE :namePattern
&lt;/sql-query&gt;</pre>
    </div></a></div>
			<p><s:text name="p18-2-3" /></p>
			<div class="example"><a id="d5e8482"></a><a id="d5e8487"><p class="title"><strong>Example&nbsp;18.4.&nbsp;Named query returning a scalar</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="mySqlQuery"&gt;
    &lt;return-scalar column="name" type="string"/&gt;
    &lt;return-scalar column="age" type="long"/&gt;
    SELECT p.NAME AS name, 
           p.AGE AS age,
    FROM PERSON p WHERE p.NAME LIKE 'Hiber%'
&lt;/sql-query&gt;</pre>
    </div></a></div>
			<p><s:text name="p18-2-4" /></p>
			<div class="example"><a id="d5e8487"></a><a id="d5e8493"><p class="title"><strong>Example&nbsp;18.5.&nbsp;&lt;resultset&gt; mapping used to externalize mapping
      information</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;resultset name="personAddress"&gt;
    &lt;return alias="person" class="eg.Person"/&gt;
    &lt;return-join alias="address" property="person.mailingAddress"/&gt;
&lt;/resultset&gt;

&lt;sql-query name="personsWith" resultset-ref="personAddress"&gt;
    SELECT person.NAME AS {person.name},
           person.AGE AS {person.age},
           person.SEX AS {person.sex},
           address.STREET AS {address.street},
           address.CITY AS {address.city},
           address.STATE AS {address.state},
           address.ZIP AS {address.zip}
    FROM PERSON person
    JOIN ADDRESS address
        ON person.ID = address.PERSON_ID AND address.TYPE='MAILING'
    WHERE person.NAME LIKE :namePattern
&lt;/sql-query&gt;</pre>
    </div></a></div>
			<p><s:text name="p18-2-5" /></p>
			<div class="example"><a id="d5e8493"></a><a id="d5e8497"><p class="title"><strong>Example&nbsp;18.6.&nbsp;Programmatically specifying the result mapping information
      </strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">List cats = sess.createSQLQuery(
        "select {cat.*}, {kitten.*} from cats cat, cats kitten where kitten.mother = cat.id"
    )
    .setResultSetMapping("catAndKitten")
    .list();</pre>
    </div></a></div>
			<p><s:text name="p18-2-6" /></p>
			<p><s:text name="p18-2-7" /></p>
			<p><s:text name="p18-2-8" /></p>
			<p><s:text name="p18-2-9" /></p>
			<div class="example"><a id="example-named-native-query-annotation-with-result-set-mapping"><p class="title"><strong>Example&nbsp;18.7.&nbsp;Named SQL query using <code class="classname">@NamedNativeQuery</code>
      together with <code class="classname">@SqlResultSetMapping</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">NamedNativeQuery</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">name</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"night&amp;area"</span><!-- <br/> --><span class="java_separator">,</span><!-- <br/> --><span class="java_plain">&nbsp;query</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"select&nbsp;night.id&nbsp;nid,&nbsp;night.night_duration,&nbsp;"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">+</span><span class="java_plain">&nbsp;</span><span class="java_literal">"&nbsp;night.night_date,&nbsp;area.id&nbsp;aid,&nbsp;night.area_id,&nbsp;area.name&nbsp;"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">+</span><span class="java_plain">&nbsp;</span><span class="java_literal">"from&nbsp;Night&nbsp;night,&nbsp;Area&nbsp;area&nbsp;where&nbsp;night.area_id&nbsp;=&nbsp;area.id"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resultSetMapping</span><span class="java_operator">=</span><span class="java_literal">"joinMapping"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SqlResultSetMapping</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"joinMapping"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;entities</span><span class="java_operator">=</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EntityResult</span><span class="java_separator">(</span><span class="java_plain">entityClass</span><span class="java_operator">=</span><span class="java_type">Night</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span><span class="java_plain">&nbsp;fields&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"id"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_literal">"nid"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"duration"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_literal">"night_duration"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"date"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_literal">"night_date"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"area"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_literal">"area_id"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;discriminatorColumn</span><span class="java_operator">=</span><span class="java_literal">"disc"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EntityResult</span><span class="java_separator">(</span><span class="java_plain">entityClass</span><span class="java_operator">=</span><span class="java_plain">org</span><span class="java_separator">.</span><span class="java_plain">hibernate</span><span class="java_separator">.</span><span class="java_plain">test</span><span class="java_separator">.</span><span class="java_plain">annotations</span><span class="java_separator">.</span><span class="java_plain">query</span><span class="java_separator">.</span><span class="java_type">Area</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span><span class="java_plain">&nbsp;fields&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"id"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_literal">"aid"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"name"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_literal">"name"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">)</span></pre>
    </div></a></div>
			<div class="example"><a id="example-named-native-query-annotation-with-result-set-mapping"></a><a id="example-implicit-result-set-mapping"><p class="title"><strong>Example&nbsp;18.8.&nbsp;Implicit result set mapping</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SqlResultSetMapping</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"implicit"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;entities</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">EntityResult</span><span class="java_separator">(</span><span class="java_plain">entityClass</span><span class="java_operator">=</span><span class="java_type">SpaceShip</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">))</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">NamedNativeQuery</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"implicitSample"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;query</span><span class="java_operator">=</span><span class="java_literal">"select&nbsp;*&nbsp;from&nbsp;SpaceShip"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resultSetMapping</span><span class="java_operator">=</span><span class="java_literal">"implicit"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">SpaceShip</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;model</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">double</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setName</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"model_txt"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getModel</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;model</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setModel</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;model</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">model&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;model</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">double</span><span class="java_plain">&nbsp;getSpeed</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setSpeed</span><span class="java_separator">(</span><span class="java_type">double</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">speed&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span></pre>
    </div></a></div>
			<div class="example"><a id="example-implicit-result-set-mapping"></a><a id="example-field-result-annotation-with-associations"><p class="title"><strong>Example&nbsp;18.9.&nbsp;Using dot notation in @FieldResult for specifying associations
      </strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SqlResultSetMapping</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"compositekey"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;entities</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">EntityResult</span><span class="java_separator">(</span><span class="java_plain">entityClass</span><span class="java_operator">=</span><span class="java_type">SpaceShip</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fields&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"name"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"name"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"model"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"model"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"speed"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"speed"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"captain.firstname"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"firstn"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"captain.lastname"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"lastn"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"dimensions.length"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"length"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">FieldResult</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"dimensions.width"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"width"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;columns&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;@</span><span class="java_type">ColumnResult</span><span class="java_separator">(</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"surface"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ColumnResult</span><span class="java_separator">(</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"volume"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">NamedNativeQuery</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"compositekey"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;query</span><span class="java_operator">=</span><span class="java_literal">"select&nbsp;name,&nbsp;model,&nbsp;speed,&nbsp;lname&nbsp;as&nbsp;lastn,&nbsp;fname&nbsp;as&nbsp;firstn,&nbsp;length,&nbsp;width,&nbsp;length&nbsp;*&nbsp;width&nbsp;as&nbsp;surface&nbsp;from&nbsp;SpaceShip"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;resultSetMapping</span><span class="java_operator">=</span><span class="java_literal">"compositekey"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">SpaceShip</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;model</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">double</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Captain</span><span class="java_plain">&nbsp;captain</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Dimensions</span><span class="java_plain">&nbsp;dimensions</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setName</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span><span class="java_separator">(</span><span class="java_plain">fetch</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">FetchType</span><span class="java_separator">.</span><span class="java_plain">LAZY</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumns</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fname"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"firstname"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"lname"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"lastname"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Captain</span><span class="java_plain">&nbsp;getCaptain</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;captain</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setCaptain</span><span class="java_separator">(</span><span class="java_type">Captain</span><span class="java_plain">&nbsp;captain</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">captain&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;captain</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getModel</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;model</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setModel</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;model</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">model&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;model</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">double</span><span class="java_plain">&nbsp;getSpeed</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setSpeed</span><span class="java_separator">(</span><span class="java_type">double</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">speed&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;speed</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Dimensions</span><span class="java_plain">&nbsp;getDimensions</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;dimensions</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setDimensions</span><span class="java_separator">(</span><span class="java_type">Dimensions</span><span class="java_plain">&nbsp;dimensions</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">dimensions&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;dimensions</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">IdClass</span><span class="java_separator">(</span><span class="java_type">Identity</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Captain</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstname</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastname</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getFirstname</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;firstname</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setFirstname</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstname</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">firstname&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;firstname</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getLastname</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;lastname</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setLastname</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastname</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">lastname&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;lastname</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span>
</pre>
    </div></a></div>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc18-2-1" /></p>
				<pre xmlns="" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">NamedNativeQuery</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">name</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"implicitSample"</span><!-- <br/> --><span class="java_separator">,</span><!-- <br/> --><span class="java_plain">&nbsp;query</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"select&nbsp;*&nbsp;from&nbsp;SpaceShip"</span><!-- <br/> --><span class="java_separator">,</span><!-- <br/> --><span class="java_plain">&nbsp;resultClass</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_type">SpaceShip</span><!-- <br/> --><span class="java_separator">.</span><!-- <br/> --><span class="java_keyword">class</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">SpaceShip</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span></pre>
			</div>
			<p><s:text name="p18-2-10" /></p>
			<div class="example"><a id="example-field-result-annotation-with-associations"></a><a id="d5e8540"><p class="title"><strong>Example&nbsp;18.10.&nbsp;Scalar values via <code class="classname">@ColumnResult</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">SqlResultSetMapping</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">name</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"scalar"</span><!-- <br/> --><span class="java_separator">,</span><!-- <br/> --><span class="java_plain">&nbsp;columns</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">ColumnResult</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">name</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"dimension"</span><!-- <br/> --><span class="java_separator">))</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">NamedNativeQuery</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"scalar"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;query</span><span class="java_operator">=</span><span class="java_literal">"select&nbsp;length*width&nbsp;as&nbsp;dimension&nbsp;from&nbsp;SpaceShip"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;resultSetMapping</span><span class="java_operator">=</span><span class="java_literal">"scalar"</span><span class="java_separator">)</span></pre>
    </div></a></div>
			<p><s:text name="p18-2-11" /></p>
		</div>
		<div>
			<h3 id="c18-2-1"><s:text name="title18-2-1" /></h3>
			<p><s:text name="p18-2-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="mySqlQuery"&gt;
    &lt;return alias="person" class="eg.Person"&gt;
        &lt;return-property name="name" column="myName"/&gt;
        &lt;return-property name="age" column="myAge"/&gt;
        &lt;return-property name="sex" column="mySex"/&gt;
    &lt;/return&gt;
    SELECT person.NAME AS myName,
           person.AGE AS myAge,
           person.SEX AS mySex,
    FROM PERSON person WHERE person.NAME LIKE :name
&lt;/sql-query&gt;
</pre>
			<p><s:text name="p18-2-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="organizationCurrentEmployments"&gt;
    &lt;return alias="emp" class="Employment"&gt;
        &lt;return-property name="salary"&gt;
            &lt;return-column name="VALUE"/&gt;
            &lt;return-column name="CURRENCY"/&gt;
        &lt;/return-property&gt;
        &lt;return-property name="endDate" column="myEndDate"/&gt;
    &lt;/return&gt;
        SELECT EMPLOYEE AS {emp.employee}, EMPLOYER AS {emp.employer},
        STARTDATE AS {emp.startDate}, ENDDATE AS {emp.endDate},
        REGIONCODE as {emp.regionCode}, EID AS {emp.id}, VALUE, CURRENCY
        FROM EMPLOYMENT
        WHERE EMPLOYER = :id AND ENDDATE IS NULL
        ORDER BY STARTDATE ASC
&lt;/sql-query&gt;</pre>
			<p><s:text name="p18-2-1-3" /></p>
			<p><s:text name="p18-2-1-4" /></p>
		</div>
		<div>
			<h3 id="c18-2-2"><s:text name="title18-2-2" /></h3>
			<p><s:text name="p18-2-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
CREATE OR REPLACE FUNCTION selectAllEmployments
    RETURN SYS_REFCURSOR
AS
    st_cursor SYS_REFCURSOR;
BEGIN
    OPEN st_cursor FOR
 SELECT EMPLOYEE, EMPLOYER,
 STARTDATE, ENDDATE,
 REGIONCODE, EID, VALUE, CURRENCY
 FROM EMPLOYMENT;
      RETURN  st_cursor;
 END;</pre>
			<p><s:text name="p18-2-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="selectAllEmployees_SP" callable="true"&gt;
    &lt;return alias="emp" class="Employment"&gt;
        &lt;return-property name="employee" column="EMPLOYEE"/&gt;
        &lt;return-property name="employer" column="EMPLOYER"/&gt;
        &lt;return-property name="startDate" column="STARTDATE"/&gt;
        &lt;return-property name="endDate" column="ENDDATE"/&gt;
        &lt;return-property name="regionCode" column="REGIONCODE"/&gt;
        &lt;return-property name="id" column="EID"/&gt;
        &lt;return-property name="salary"&gt;
            &lt;return-column name="VALUE"/&gt;
            &lt;return-column name="CURRENCY"/&gt;
        &lt;/return-property&gt;
    &lt;/return&gt;
    { ? = call selectAllEmployments() }
&lt;/sql-query&gt;</pre>
			<p><s:text name="p18-2-2-3" /></p>
		</div>
		<div>
			<h4 id="c18-2-2-1"><s:text name="title18-2-2-1" /></h4>
			<p><s:text name="p18-2-2-1-1" /></p>
			<p><s:text name="p18-2-2-1-2" /></p>
			<p><s:text name="p18-2-2-1-3" /></p>
			<p><s:text name="p18-2-2-1-4" /></p>
			<ul>
				<li><s:text name="li18-2-2-1-1-1" /></li>
			</ul>
			<p><s:text name="p18-2-2-1-5" /></p>
			<ul>
				<li><s:text name="li8-2-2-1-2-1" /></li>
				<li><s:text name="li8-2-2-1-2-2" /></li>
			</ul>
		</div>
		<div>
			<h2 id="c18-3"><s:text name="title18-3" /></h2>
			<p><s:text name="p18-3-1" /></p>
			<div class="example"><a id="example-custom-crdu-via-annotations"><p class="title"><strong>Example&nbsp;18.11.&nbsp;Custom CRUD via annotations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Table</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"CHAOS"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SQLInsert</span><span class="java_separator">(</span><span class="java_plain">&nbsp;sql</span><span class="java_operator">=</span><span class="java_literal">"INSERT&nbsp;INTO&nbsp;CHAOS(size,&nbsp;name,&nbsp;nickname,&nbsp;id)&nbsp;VALUES(?,upper(?),?,?)"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SQLUpdate</span><span class="java_separator">(</span><span class="java_plain">&nbsp;sql</span><span class="java_operator">=</span><span class="java_literal">"UPDATE&nbsp;CHAOS&nbsp;SET&nbsp;size&nbsp;=&nbsp;?,&nbsp;name&nbsp;=&nbsp;upper(?),&nbsp;nickname&nbsp;=&nbsp;?&nbsp;WHERE&nbsp;id&nbsp;=&nbsp;?"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SQLDelete</span><span class="java_separator">(</span><span class="java_plain">&nbsp;sql</span><span class="java_operator">=</span><span class="java_literal">"DELETE&nbsp;CHAOS&nbsp;WHERE&nbsp;id&nbsp;=&nbsp;?"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SQLDeleteAll</span><span class="java_separator">(</span><span class="java_plain">&nbsp;sql</span><span class="java_operator">=</span><span class="java_literal">"DELETE&nbsp;CHAOS"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Loader</span><span class="java_separator">(</span><span class="java_plain">namedQuery&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"chaos"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">NamedNativeQuery</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"chaos"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;query</span><span class="java_operator">=</span><span class="java_literal">"select&nbsp;id,&nbsp;size,&nbsp;name,&nbsp;lower(&nbsp;nickname&nbsp;)&nbsp;as&nbsp;nickname&nbsp;from&nbsp;CHAOS&nbsp;where&nbsp;xml:id=&nbsp;?"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;resultClass&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">Chaos</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Chaos</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;size</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;nickname</span><span class="java_separator">;</span></pre>
    </div></a></div>
			<p><s:text name="p18-3-2" /></p>
			<div class="example"><a id="example-custom-crdu-via-xml"><p class="title"><strong>Example&nbsp;18.12.&nbsp;Custom CRUD XML</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id"&gt;
        &lt;generator class="increment"/&gt;
    &lt;/id&gt;
    &lt;property name="name" not-null="true"/&gt;
    &lt;sql-insert&gt;INSERT INTO PERSON (NAME, ID) VALUES ( UPPER(?), ? )&lt;/sql-insert&gt;
    &lt;sql-update&gt;UPDATE PERSON SET NAME=UPPER(?) WHERE xml:id=?&lt;/sql-update&gt;
    &lt;sql-delete&gt;DELETE FROM PERSON WHERE xml:id=?&lt;/sql-delete&gt;
&lt;/class&gt;</pre>
    </div></a></div>
			<p><s:text name="p18-3-3" /></p>
			<p><s:text name="p18-3-4" /></p>
			<ul>
				<li><s:text name="li8-3-1-1" /></li>
				<li><s:text name="li8-3-1-2" /></li>
				<li><s:text name="li8-3-1-3" /></li>
			</ul>
			<p><s:text name="p18-3-5" /></p>
			<p><s:text name="p18-3-6" /></p>
			<div class="example"><a id="example-overriding-sql-collections-annotations"><p class="title"><strong>Example&nbsp;18.13.&nbsp;Overriding SQL statements for collections using
      annotations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">OneToMany</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"chaos_fk"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SQLInsert</span><span class="java_separator">(</span><span class="java_plain">&nbsp;sql</span><span class="java_operator">=</span><span class="java_literal">"UPDATE&nbsp;CASIMIR_PARTICULE&nbsp;SET&nbsp;chaos_fk&nbsp;=&nbsp;?&nbsp;where&nbsp;id&nbsp;=&nbsp;?"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SQLDelete</span><span class="java_separator">(</span><span class="java_plain">&nbsp;sql</span><span class="java_operator">=</span><span class="java_literal">"UPDATE&nbsp;CASIMIR_PARTICULE&nbsp;SET&nbsp;chaos_fk&nbsp;=&nbsp;null&nbsp;where&nbsp;id&nbsp;=&nbsp;?"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">CasimirParticle</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;particles&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_keyword">new</span><span class="java_plain">&nbsp;</span><span class="java_type">HashSet</span><span class="java_operator">&lt;</span><span class="java_type">CasimirParticle</span><span class="java_operator">&gt;</span><span class="java_separator">();</span></pre>
    </div></a></div>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc18-3-1" /></p>
			</div>
			<p><s:text name="p18-3-7" /></p>
			<div class="example"><a id="example-overriding-sql-collections-annotations"></a><a id="d5e8639"><p class="title"><strong>Example&nbsp;18.14.&nbsp;Overriding SQL statements for secondary tables</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SecondaryTables</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">SecondaryTable</span><span class="java_separator">(</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"`Cat&nbsp;nbr1`"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">SecondaryTable</span><span class="java_separator">(</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"Cat2"</span><span class="java_separator">})</span>
<!--  --><br><span class="java_plain">@org</span><span class="java_separator">.</span><span class="java_plain">hibernate</span><span class="java_separator">.</span><span class="java_plain">annotations</span><span class="java_separator">.</span><span class="java_type">Tables</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Table</span><span class="java_separator">(</span><span class="java_plain">appliesTo&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"Cat"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;comment&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"My&nbsp;cat&nbsp;table"</span><span class="java_plain">&nbsp;</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Table</span><span class="java_separator">(</span><span class="java_plain">appliesTo&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"Cat2"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;foreignKey&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">ForeignKey</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"FK_CAT2_CAT"</span><span class="java_separator">),</span><span class="java_plain">&nbsp;fetch&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">FetchMode</span><span class="java_separator">.</span><span class="java_plain">SELECT</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sqlInsert</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">SQLInsert</span><span class="java_separator">(</span><span class="java_plain">sql</span><span class="java_operator">=</span><span class="java_literal">"insert&nbsp;into&nbsp;Cat2(storyPart2,&nbsp;id)&nbsp;values(upper(?),&nbsp;?)"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Cat</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span></pre>
    </div></a></div>
			<p><s:text name="p18-3-8" /></p>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc18-3-2" /></p>
			</div>
			<p><s:text name="p18-3-9" /></p>
			<div class="example"><a id="d5e8639"></a><a id="d5e8646"><p class="title"><strong>Example&nbsp;18.15.&nbsp;Stored procedures and their return value</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
CREATE OR REPLACE FUNCTION updatePerson (uid IN NUMBER, uname IN VARCHAR2)
    RETURN NUMBER IS
BEGIN

    update PERSON
    set
        NAME = uname,
    where
        ID = uid;

    return SQL%ROWCOUNT;

END updatePerson;</pre>
    </div></a></div>
		</div>
		<div>
			<h2 id="c18-4"><s:text name="title18-4" /></h2>
			<p><s:text name="p18-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="person"&gt;
    &lt;return alias="pers" class="Person" lock-mode="upgrade"/&gt;
    SELECT NAME AS {pers.name}, ID AS {pers.id}
    FROM PERSON
    WHERE xml:id=?
    FOR UPDATE
&lt;/sql-query&gt;</pre>
			<p><s:text name="p18-4-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id"&gt;
        &lt;generator class="increment"/&gt;
    &lt;/id&gt;
    &lt;property name="name" not-null="true"/&gt;
    &lt;loader query-ref="person"/&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p18-4-3" /></p>
			<p><s:text name="p18-4-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="employments" inverse="true"&gt;
    &lt;key/&gt;
    &lt;one-to-many class="Employment"/&gt;
    &lt;loader query-ref="employments"/&gt;
&lt;/set&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="employments"&gt;
    &lt;load-collection alias="emp" role="Person.employments"/&gt;
    SELECT {emp.*}
    FROM EMPLOYMENT emp
    WHERE EMPLOYER = :id
    ORDER BY STARTDATE ASC, EMPLOYEE ASC
&lt;/sql-query&gt;</pre>
			<p><s:text name="p18-4-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;sql-query name="person"&gt;
    &lt;return alias="pers" class="Person"/&gt;
    &lt;return-join alias="emp" property="pers.employments"/&gt;
    SELECT NAME AS {pers.*}, {emp.*}
    FROM PERSON pers
    LEFT OUTER JOIN EMPLOYMENT emp
        ON pers.ID = emp.PERSON_ID
    WHERE xml:id=?
&lt;/sql-query&gt;</pre>
			
		</div>
	</s:i18n>
</div>