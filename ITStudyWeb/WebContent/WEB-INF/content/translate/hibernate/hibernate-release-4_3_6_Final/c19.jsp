<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c19">
		<div>
			<h1 id="c19"><s:text name="title19" /></h1>
			<p><s:text name="p19-1" /></p>
		</div>
		<div>
			<h2 id="c19-1"><s:text name="title19-1" /></h2>
			<p><s:text name="p19-1-1" /></p>
			<p><s:text name="p19-1-2" /></p>
			<p><s:text name="p19-1-3" /></p>
			<div class="example"><a id="objectstate-filters"></a><a id="d5e8685"><p class="title"><strong>Example&nbsp;19.1.&nbsp;@FilterDef and @Filter annotations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">FilterDef</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"minLength"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;parameters</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">ParamDef</span><span class="java_separator">(</span><span class="java_plain">&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"minLength"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;type</span><span class="java_operator">=</span><span class="java_literal">"integer"</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Filters</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Filter</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"betweenLength"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;condition</span><span class="java_operator">=</span><span class="java_literal">":minLength&nbsp;&lt;=&nbsp;length&nbsp;and&nbsp;:maxLength&nbsp;&gt;=&nbsp;length"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Filter</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"minLength"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;condition</span><span class="java_operator">=</span><span class="java_literal">":minLength&nbsp;&lt;=&nbsp;length"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Forest</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span></pre>
    </div></a></div>
			<p><s:text name="p19-1-4" /></p>
			<div class="example"><a id="d5e8685"></a><a id="d5e8691"><p class="title"><strong>Example&nbsp;19.2.&nbsp;Using <code class="classname">@FilterJoinTable</code> for filterting on
      the association table</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">OneToMany</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">JoinTable</span>
<!--  --><br><span class="java_operator">//</span><span class="java_plain">filter&nbsp;on&nbsp;the&nbsp;target&nbsp;entity&nbsp;table</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Filter</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"betweenLength"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;condition</span><span class="java_operator">=</span><span class="java_literal">":minLength&nbsp;&lt;=&nbsp;length&nbsp;and&nbsp;:maxLength&nbsp;&gt;=&nbsp;length"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_operator">//</span><span class="java_plain">filter&nbsp;on&nbsp;the&nbsp;association&nbsp;table</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">FilterJoinTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"security"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;condition</span><span class="java_operator">=</span><span class="java_literal">":userlevel&nbsp;&gt;=&nbsp;requredLevel"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Forest</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getForests</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span></pre>
    </div></a></div>
			<p><s:text name="p19-1-5" /></p>
			<p><s:text name="p19-1-6" /></p>
			<div class="example"><a id="d5e8691"></a><a id="d5e8704"><p class="title"><strong>Example&nbsp;19.3.&nbsp;@Filter annotation, disabling deduceAliasInjectionPoints</strong></p><div class="example-contents">
		

		<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Table</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"T_TREE"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Filters</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Filter</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"isTall"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;condition</span><span class="java_operator">=</span><span class="java_literal">"{alias}.LENGTH&nbsp;&gt;=&nbsp;100"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;deduceAliasInjectionPoints&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">false</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Filter</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"isOak"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;condition</span><span class="java_operator">=</span><span class="java_literal">"{t}.WOODTYPE&nbsp;like&nbsp;'oak'"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;deduceAliasInjectionPoints&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">false</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aliases</span><span class="java_operator">=</span><span class="java_separator">{</span><span class="java_plain">@</span><span class="java_type">SqlFragmentAlias</span><span class="java_separator">(</span><span class="java_plain">alias</span><span class="java_operator">=</span><span class="java_literal">"t"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;table</span><span class="java_operator">=</span><span class="java_literal">"T_TREE"</span><span class="java_separator">)})</span>
<!--  --><br><span class="java_separator">})</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Tree</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
	</div></a></div>
			<p><s:text name="p19-1-7" /></p>
			<div class="example"><a id="d5e8704"></a><a id="d5e8710"><p class="title"><strong>Example&nbsp;19.4.&nbsp;Defining a filter definition via
      <code class="literal">&lt;filter-def&gt;</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;filter-def name="myFilter"&gt;
    &lt;filter-param name="myFilterParam" type="string"/&gt;
&lt;/filter-def&gt;</pre>
    </div></a></div>
			<p><s:text name="p19-1-8" /></p>
			<div class="example"><a id="d5e8710"></a><a id="d5e8715"><p class="title"><strong>Example&nbsp;19.5.&nbsp;Attaching a filter to a class or collection using
      <code class="literal">&lt;filter&gt;</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="myClass" ...&gt;
    ...
    &lt;filter name="myFilter" condition=":myFilterParam = MY_FILTERED_COLUMN"/&gt;

    &lt;set ...&gt;
        &lt;filter name="myFilter" condition=":myFilterParam = MY_FILTERED_COLUMN"/&gt;
    &lt;/set&gt;  
&lt;/class&gt;</pre>
    </div></a></div>
			<p><s:text name="p19-1-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
session.enableFilter("myFilter").setParameter("myFilterParam", "some-value");</pre>
			<p><s:text name="p19-1-10" /></p>
			<p><s:text name="p19-1-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;filter-def name="effectiveDate"&gt;
    &lt;filter-param name="asOfDate" type="date"/&gt;
&lt;/filter-def&gt;

&lt;class name="Employee" ...&gt;
...
    &lt;many-to-one name="department" column="dept_id" class="Department"/&gt;
    &lt;property name="effectiveStartDate" type="date" column="eff_start_dt"/&gt;
    &lt;property name="effectiveEndDate" type="date" column="eff_end_dt"/&gt;
...
    &lt;!--
        Note that this assumes non-terminal records have an eff_end_dt set to
        a max db date for simplicity-sake
    --&gt;
    &lt;filter name="effectiveDate"
            condition=":asOfDate BETWEEN eff_start_dt and eff_end_dt"/&gt;
&lt;/class&gt;

&lt;class name="Department" ...&gt;
...
    &lt;set name="employees" lazy="true"&gt;
        &lt;key column="dept_id"/&gt;
        &lt;one-to-many class="Employee"/&gt;
        &lt;filter name="effectiveDate"
                condition=":asOfDate BETWEEN eff_start_dt and eff_end_dt"/&gt;
    &lt;/set&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p19-1-12" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = ...;
session.enableFilter("effectiveDate").setParameter("asOfDate", new Date());
List results = session.createQuery("from Employee as e where e.salary &gt; :targetSalary")
         .setLong("targetSalary", new Long(1000000))
         .list();
</pre>
			<p><s:text name="p19-1-13" /></p>
			<p><s:text name="p19-1-14" /></p>
			<p><s:text name="p19-1-15" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;filter-def name="myFilter" condition="abc &gt; xyz"&gt;...&lt;/filter-def&gt;
&lt;filter-def name="myOtherFilter"&gt;abc=xyz&lt;/filter-def&gt;</pre>
			<p><s:text name="p19-1-16" /></p>
		</div>
	</s:i18n>
</div>