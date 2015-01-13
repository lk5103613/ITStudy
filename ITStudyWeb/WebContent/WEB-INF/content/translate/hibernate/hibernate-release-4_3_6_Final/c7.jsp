<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c7">
		<div>
			<h1 id="c7"><s:text name="title7" /></h1>
		</div>
		<div>
			<h2 id="c7-1"><s:text name="title7-1" /></h2>
			<p><s:text name="p7-1-1" /></p>
			<p><s:text name="p7-1-2" /></p>
			<p><s:text name="p7-1-3" /></p>
			<div class="example"><a id="d5e5121"><p class="title"><strong>Example&nbsp;7.1.&nbsp;Hibernate uses its own collection implementations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">Cat cat = new DomesticCat();
Cat kitten = new DomesticCat();
....
Set kittens = new HashSet();
kittens.add(kitten);
cat.setKittens(kittens);
session.persist(cat);

kittens = cat.getKittens(); // Okay, kittens collection is a Set
(HashSet) cat.getKittens(); // Error!</pre>
    </div></a></div>
			<p><s:text name="p7-1-4" /></p>
			<p><s:text name="p7-1-5" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc7-1-1" /></p>
			</div>
		</div>
		<div>
			<h2 id="c7-2"><s:text name="title7-2" /></h2>
			<p><s:text name="p7-2-1" /></p>
			<div class="example"><a id="collections-mapping"></a><a id="example.collection.mapping.annotations"><p class="title"><strong>Example&nbsp;7.2.&nbsp;Collection mapping using @OneToMany and @JoinColumn</strong></p><div class="example-contents">
      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
public class Product {

    private String serialNumber;
    private Set&lt;Part&gt; parts = new HashSet&lt;Part&gt;();

    @Id
    public String getSerialNumber() { return serialNumber; }
    void setSerialNumber(String sn) { serialNumber = sn; }
   
    @OneToMany
    @JoinColumn(name="PART_ID")
    public Set&lt;Part&gt; getParts() { return parts; }
    void setParts(Set parts) { this.parts = parts; }
}


@Entity
public class Part {
   ...
}</pre>
    </div></a></div>
			<p><s:text name="p7-2-2" /></p>
			<div class="example"><a id="example-one-to-many-with-join-table"><p class="title"><strong>Example&nbsp;7.3.&nbsp;Collection mapping using @OneToMany and @JoinTable</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
public class Product {

    private String serialNumber;
    private Set&lt;Part&gt; parts = new HashSet&lt;Part&gt;();

    @Id
    public String getSerialNumber() { return serialNumber; }
    void setSerialNumber(String sn) { serialNumber = sn; }
   
    @OneToMany
    @JoinTable(
            name="PRODUCT_PARTS",
            joinColumns = @JoinColumn( name="PRODUCT_ID"),
            inverseJoinColumns = @JoinColumn( name="PART_ID")
    )
    public Set&lt;Part&gt; getParts() { return parts; }
    void setParts(Set parts) { this.parts = parts; }
}


@Entity
public class Part {
   ...
}</pre>
    </div></a></div>
			<p><s:text name="p7-2-3" /></p>
			<p><s:text name="p7-2-4" /></p>
			<div class="example"><a id="example-one-to-many-with-join-table"></a><a id="example.collections.set"><p class="title"><strong>Example&nbsp;7.4.&nbsp;Mapping a Set using &lt;set&gt;</strong></p><div class="example-contents">
      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Product"&gt;
    &lt;id name="serialNumber" column="productSerialNumber"/&gt;
    &lt;set name="parts"&gt;
        &lt;key column="productSerialNumber" not-null="true"/&gt;
        &lt;one-to-many class="Part"/&gt;
    &lt;/set&gt;
&lt;/class&gt;</pre>
    </div></a></div>
			<p><s:text name="p7-2-5" /></p>
			<ul>
				<li><s:text name="li7-2-1-1" /></li>
				<li><s:text name="li7-2-1-2" /></li>
			</ul>
			<p><s:text name="p7-2-6" /></p>
			<div class="example"><a id="d5e5171"><p class="title"><strong>Example&nbsp;7.5.&nbsp;options of &lt;one-to-many&gt; element</strong></p><div class="example-contents">
      

      <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;one-to-many
        class="ClassName"                                  <span class="co" id="onetomany1">(1)</span>
        not-found="ignore|exception"                       <span class="co" id="onetomany2">(2)</span>
        entity-name="EntityName"                           <span class="co" id="onetomany3">(3)</span>
        node="element-name"
        embed-xml="true|false"
    /&gt;</pre></div>
    </div></a></div>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td7-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td7-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td7-2-1-3" /></td>
				</tr>
			</table>
			<p><s:text name="p7-2-7" /></p>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="warning" /></h5>
				<p><s:text name="wc7-2-1" /></p>
			</div>
			<p><s:text name="p7-2-8" /></p>
			<div class="example"><a id="d5e5213"><p class="title"><strong>Example&nbsp;7.6.&nbsp;Elements of the &lt;map&gt; mapping</strong></p><div class="example-contents">
      

      <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;map
    name="propertyName"                                    <span class="co" id="mappingcollection1">(1)</span>
    table="table_name"                                     <span class="co" id="mappingcollection2">(2)</span>
    schema="schema_name"                                   <span class="co" id="mappingcollection3">(3)</span>
    lazy="true|extra|false"                                <span class="co" id="mappingcollection4">(4)</span>
    inverse="true|false"                                   <span class="co" id="mappingcollection5">(5)</span>
    cascade="all|none|save-update|delete|all-delete-orphan|<span class="co" id="mappingcollection6">(6)</span>delete-orphan"
    sort="unsorted|natural|comparatorClass"                <span class="co" id="mappingcollection7">(7)</span>
    order-by="column_name asc|desc"                        <span class="co" id="mappingcollection8">(8)</span>
    where="arbitrary sql where condition"                  <span class="co" id="mappingcollection9">(9)</span>
    fetch="join|select|subselect"                          <span class="co" id="mappingcollection10">(10)</span>
    batch-size="N"                                         <span class="co" id="mappingcollection11">(11)</span>
    access="field|property|ClassName"                      <span class="co" id="mappingcollection12">(12)</span>
    optimistic-lock="true|false"                           <span class="co" id="mappingcollection13">(13)</span>
    mutable="true|false"                                   <span class="co" id="mappingcollection14">(14)</span>
    node="element-name|."
    embed-xml="true|false"
&gt;

    &lt;key .... /&gt;
    &lt;map-key .... /&gt;
    &lt;element .... /&gt;
&lt;/map&gt;</pre></div>
    </div></a></div>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td7-2-2-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td7-2-2-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td7-2-2-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td7-2-2-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td7-2-2-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td7-2-2-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td7-2-2-7" /></td>
				</tr>
				<tr>
					<td>(8)</td>
					<td><s:text name="td7-2-2-8" /></td>
				</tr>
				<tr>
					<td>(9)</td>
					<td><s:text name="td7-2-2-9" /></td>
				</tr>
				<tr>
					<td>(10)</td>
					<td><s:text name="td7-2-2-10" /></td>
				</tr>
				<tr>
					<td>(11)</td>
					<td><s:text name="td7-2-2-11" /></td>
				</tr>
				<tr>
					<td>(12)</td>
					<td><s:text name="td7-2-2-12" /></td>
				</tr>
				<tr>
					<td>(13)</td>
					<td><s:text name="td7-2-2-13" /></td>
				</tr>
				<tr>
					<td>(14)</td>
					<td><s:text name="td7-2-2-14" /></td>
				</tr>
			</table>
			<p><s:text name="p7-2-9" /></p>
		</div>
		<div>
			<h3 id="c7-2-1"><s:text name="title7-2-1" /></h3>
			<p><s:text name="p7-2-1-1" /></p>
			<p><s:text name="p7-2-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">@JoinColumn(nullable=false)</pre>
			<p><s:text name="p7-2-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;key column="productSerialNumber" not-null="true"/&gt;</pre>
			<p><s:text name="p7-2-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;key column="productSerialNumber" on-delete="cascade"/&gt;</pre>
			<p><s:text name="p7-2-1-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">@OnDelete(action=OnDeleteAction.CASCADE)</pre>
			<p><s:text name="p7-2-1-6" /></p>
		</div>
		<div>
			<h3 id="c7-2-2"><s:text name="title7-2-2" /></h3>
			<p><s:text name="p7-2-2-1" /></p>
		</div>
		<div>
			<h4 id="c7-2-2-1"><s:text name="title7-2-2-1" /></h4>
			<p><s:text name="p7-2-2-1-1" /></p>
			<ul>
				<li><s:text name="li7-2-2-1-1-1" /></li>
				<li><s:text name="li7-2-2-1-1-2" /></li>
			</ul>
			<p><s:text name="p7-2-2-1-2" /></p>
			<div class="example"><a id="d5e5314"></a><a id="d5e5325"><p class="title"><strong>Example&nbsp;7.7.&nbsp;Ordered lists using <code class="classname">@OrderBy</code></strong></p><div class="example-contents">
          

          <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToMany</span><span class="java_separator">(</span><span class="java_plain">mappedBy</span><span class="java_operator">=</span><span class="java_literal">"customer"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OrderBy</span><span class="java_separator">(</span><span class="java_literal">"number"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">List</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getOrders</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setOrders</span><span class="java_separator">(</span><span class="java_type">List</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">orders&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">List</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getNumber</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setNumber</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">number&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;getCustomer</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setCustomer</span><span class="java_separator">(</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">customer&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_operator">--</span><span class="java_plain">&nbsp;</span><span class="java_type">Table</span><span class="java_plain">&nbsp;schema</span>
<!--  --><br><span class="java_operator">|-------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|-------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;customer_id&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|-------------|</span></pre>
        </div></a></div>
			<p><s:text name="p7-2-2-1-3" /></p>
			<div class="example"><a id="d5e5325"></a><a id="d5e5333"><p class="title"><strong>Example&nbsp;7.8.&nbsp;Explicit index column using
          <code class="classname">@OrderColumn</code></strong></p><div class="example-contents">
          

          <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToMany</span><span class="java_separator">(</span><span class="java_plain">mappedBy</span><span class="java_operator">=</span><span class="java_literal">"customer"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OrderColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"orders_index"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">List</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getOrders</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setOrders</span><span class="java_separator">(</span><span class="java_type">List</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">orders&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">List</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getNumber</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setNumber</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">number&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;getCustomer</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setCustomer</span><span class="java_separator">(</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">customer&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_operator">--</span><span class="java_plain">&nbsp;</span><span class="java_type">Table</span><span class="java_plain">&nbsp;schema</span>
<!--  --><br><span class="java_operator">|--------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|--------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;customer_id&nbsp;&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;orders_order&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|--------------|</span></pre>
        </div></a></div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc7-2-2-1-1" /></p>
			</div>
			<p><s:text name="p7-2-2-1-4" /></p>
			<div class="example"><a id="d5e5333"></a><a id="d5e5348"><p class="title"><strong>Example&nbsp;7.9.&nbsp;index-list element for indexed collections in xml
          mapping</strong></p><div class="example-contents">
          

          <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;list-index
        column="column_name"                               <span class="co" id="index1">(1)</span>
        base="0|1|..."/&gt;								   <span class="co" id="index2">(2)</span></pre></div>
        </div></a></div>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td7-2-2-1-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td7-2-2-1-1-2" /></td>
				</tr>
			</table>
			<p><s:text name="p7-2-2-1-5" /></p>
		</div>
		<div>
			<h4 id="c7-2-2-2"><s:text name="title7-2-2-2" /></h4>
			<p><s:text name="p7-2-2-2-1" /></p>
			<p><s:text name="p7-2-2-2-2" /></p>
			<div class="example">
				<a id="d5e5366"></a>
				<a id="d5e5374">
					<p class="title"><strong>Example&nbsp;7.10.&nbsp;Use of target entity property as map key via<code class="classname">@MapKey</code></strong>
					</p>
					<div class="example-contents">
          			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span>
<!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToMany</span><span class="java_separator">(</span><span class="java_plain">mappedBy</span><span class="java_operator">=</span><span class="java_literal">"customer"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MapKey</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"number"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Map</span><span class="java_operator">&lt;</span><span class="java_type">String</span><span class="java_separator">,</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getOrders</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setOrders</span><span class="java_separator">(</span><span class="java_type">Map</span><span class="java_operator">&lt;</span><span class="java_type">String</span><span class="java_separator">,</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;order</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">orders&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Map</span><span class="java_operator">&lt;</span><span class="java_type">String</span><span class="java_separator">,</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getNumber</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setNumber</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">number&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;getCustomer</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setCustomer</span><span class="java_separator">(</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">customer&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_operator">--</span><span class="java_plain">&nbsp;</span><span class="java_type">Table</span><span class="java_plain">&nbsp;schema</span>
<!--  --><br><span class="java_operator">|-------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|-------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;customer_id&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|-------------|</span></pre>
	        		</div>
	        	</a>
        	</div>
			<p><s:text name="p7-2-2-2-3" /></p>
			<ul>
				<li><s:text name="li7-2-2-2-1-1" /></li>
				<li><s:text name="li7-2-2-2-1-2" /></li>
				<li><s:text name="li7-2-2-2-1-3" /></li>
				<li><s:text name="li7-2-2-2-1-4" /></li>
			</ul>
			<p><s:text name="p7-2-2-2-4" /></p>
			<div class="example"><a id="d5e5374"></a><a id="d5e5401"><p class="title"><strong>Example&nbsp;7.11.&nbsp;Map key as basic type using
          <code class="classname">@MapKeyColumn</code></strong></p><div class="example-contents">
          

          <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA"><!-- <br/> --><span class="java_plain">@</span>
<!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToMany</span><span class="java_plain">&nbsp;@</span><span class="java_type">JoinTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"Cust_Order"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MapKeyColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"orders_number"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Map</span><span class="java_operator">&lt;</span><span class="java_type">String</span><span class="java_separator">,</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getOrders</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setOrders</span><span class="java_separator">(</span><span class="java_type">Map</span><span class="java_operator">&lt;</span><span class="java_type">String</span><span class="java_separator">,</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">orders&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Map</span><span class="java_operator">&lt;</span><span class="java_type">String</span><span class="java_separator">,</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getNumber</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setNumber</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">number&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;getCustomer</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setCustomer</span><span class="java_separator">(</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">customer&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;number</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_operator">--</span><span class="java_plain">&nbsp;</span><span class="java_type">Table</span><span class="java_plain">&nbsp;schema</span>
<!--  --><br><span class="java_operator">|-------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|---------------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_type">Cust_Order</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|-------------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|---------------|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;customer_id&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|----------|</span><span class="java_plain">&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;order_id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|</span><span class="java_plain">&nbsp;customer_id&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|</span><span class="java_plain">&nbsp;orders_number&nbsp;</span><span class="java_operator">|</span>
<!--  --><br><span class="java_operator">|-------------|</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">|---------------|</span></pre>
        </div></a></div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc7-2-2-2-1-1" /></p>
			</div>
			
		
			<p><s:text name="p7-2-2-2-5" /></p>
			<div class="example"><a id="d5e5401"></a><a id="d5e5416"><p class="title"><strong>Example&nbsp;7.12.&nbsp;map-key xml mapping element</strong></p><div class="example-contents">
	          <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
	       	&lt;map-key
	        column="column_name"                               <span class="co" id="mapkey1">(1)</span>
	        formula="any SQL expression"                       <span class="co" id="mapkey2">(2)</span>
	        type="type_name"                                   <span class="co" id="mapkey3">(3)</span>
	        node="@attribute-name"
	        length="N"/&gt;</pre></div>
	        </div></a></div>
	        <table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td7-2-2-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td7-2-2-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td7-2-2-2-1-3" /></td>
				</tr>
			</table>
			<div class="example"><a id="d5e5416"></a><a id="d5e5434"><p class="title"><strong>Example&nbsp;7.13.&nbsp;map-key-many-to-many</strong></p><div class="example-contents">
          

          <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;map-key-many-to-many
        column="column_name"                               <span class="co" id="indexmanytomany1">(1)</span>
        formula="any SQL expression"                       <span class="co" id="indexmanytomany2">(2)</span><span class="co" id="indexmanytomany3">(3)</span>
        class="ClassName"
/&gt;</pre></div>
        </div></a></div>
        	<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td7-2-2-2-2-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td7-2-2-2-2-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td7-2-2-2-2-3" /></td>
				</tr>
			</table>
        </div>
        <div>
        	<h3 id="c7-2-3"><s:text name="title7-2-3" /></h3>
        	<p><s:text name="p7-2-3-1" /></p>
        	<div class="example"><a id="collections-ofvalues"></a><a id="d5e5456"><p class="title"><strong>Example&nbsp;7.14.&nbsp;Collection of basic types mapped via
        <code class="classname">@ElementCollection</code></strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">[...]</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getLastname</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ElementCollection</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">CollectionTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"Nicknames"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;joinColumns</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"user_id"</span><span class="java_separator">))</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"nickname"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">String</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getNicknames</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_separator">}</span></pre>
      </div></a></div>
        	<p><s:text name="p7-2-3-2" /></p>
        	<p><s:text name="p7-2-3-3" /></p>
        	<p><s:text name="p7-2-3-4" /></p>
        	<div class="example"><a id="d5e5456"></a><a id="d5e5468"><p class="title"><strong>Example&nbsp;7.15.&nbsp;@ElementCollection for embeddable objects</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA"><!-- <br/> --><span class="java_plain">@</span>
<!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">[...]</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getLastname</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ElementCollection</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">CollectionTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"Addresses"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;joinColumns</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"user_id"</span><span class="java_separator">))</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverrides</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"street1"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fld_street"</span><span class="java_separator">))</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Address</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getAddresses</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getStreet1</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{...}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">[...]</span>
<!--  --><br><span class="java_separator">}</span></pre>
      </div></a></div>
        	<p><s:text name="p7-2-3-5" /></p>
        	<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc7-2-3-1" /></p>
			    <pre xmlns="" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span>
<!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ElementCollection</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverrides</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"key.street1"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fld_street"</span><span class="java_separator">)),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"value.stars"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fld_note"</span><span class="java_separator">))</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Map</span><span class="java_operator">&lt;</span><span class="java_type">Address</span><span class="java_separator">,</span><span class="java_type">Rating</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getFavHomes</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span></pre>
			</div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc7-2-3-2" /></p>
			</div>
			<p><s:text name="p7-2-3-6" /></p>
			<div class="example"><a id="d5e5468"></a><a id="d5e5484"><p class="title"><strong>Example&nbsp;7.16.&nbsp;&lt;element&gt; tag for collection values using mapping
        files</strong></p><div class="example-contents">
        

        <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;element
        column="column_name"                               <span class="co" id="element1b">(1)</span>
        formula="any SQL expression"                       <span class="co" id="element2b">(2)</span>
        type="typename"                                    <span class="co" id="element3b">(3)</span>
        length="L"
        precision="P"
        scale="S"
        not-null="true|false"
        unique="true|false"
        node="element-name"
/&gt;</pre></div>
      </div></a></div>
        	<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td7-2-3-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td7-2-3-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td7-2-3-1-3" /></td>
				</tr>
			</table>
        </div>
        <div>
        	<h2 id="c7-3"><s:text name="title7-3" /></h2>
        </div>
        <div>
        	<h3 id="c7-3-1"><s:text name="title7-3-1" /></h3>
        	<p><s:text name="p7-3-1-1" /></p>
        	<div class="example"><a id="collections-sorted"></a><a id="d5e5513"><p class="title"><strong>Example&nbsp;7.17.&nbsp;Sorted collection with @Sort</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">OneToMany</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">cascade</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_type">CascadeType</span><!-- <br/> --><span class="java_separator">.</span><!-- <br/> --><span class="java_plain">ALL</span><!-- <br/> --><span class="java_separator">,</span><!-- <br/> --><span class="java_plain">&nbsp;fetch</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_type">FetchType</span><!-- <br/> --><span class="java_separator">.</span><!-- <br/> --><span class="java_plain">EAGER</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"CUST_ID"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Sort</span><span class="java_separator">(</span><span class="java_plain">type&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">SortType</span><span class="java_separator">.</span><span class="java_plain">COMPARATOR</span><span class="java_separator">,</span><span class="java_plain">&nbsp;comparator&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">TicketComparator</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">SortedSet</span><span class="java_operator">&lt;</span><span class="java_type">Ticket</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getTickets</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;tickets</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
      </div></a></div>
        	<p><s:text name="p7-3-1-2" /></p>
        	<div class="example"><a id="d5e5513"></a><a id="d5e5518"><p class="title"><strong>Example&nbsp;7.18.&nbsp;Sorted collection using xml mapping</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="aliases"
            table="person_aliases" 
            sort="natural"&gt;
    &lt;key column="person"/&gt;
    &lt;element column="name" type="string"/&gt;
&lt;/set&gt;

&lt;map name="holidays" sort="my.custom.HolidayComparator"&gt;
    &lt;key column="year_id"/&gt;
    &lt;map-key column="hol_name" type="string"/&gt;
    &lt;element column="hol_date" type="date"/&gt;
&lt;/map&gt;</pre>
      </div></a></div>
        	<p><s:text name="p7-3-1-3" /></p>
        	<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc7-3-1-1" /></p>
			</div>
			<p><s:text name="p7-3-1-4" /></p>
			<div class="example"><a id="d5e5518"></a><a id="d5e5537"><p class="title"><strong>Example&nbsp;7.19.&nbsp;Sorting in database using order-by</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="aliases" table="person_aliases" order-by="lower(name) asc"&gt;
    &lt;key column="person"/&gt;
    &lt;element column="name" type="string"/&gt;
&lt;/set&gt;

&lt;map name="holidays" order-by="hol_date, hol_name"&gt;
    &lt;key column="year_id"/&gt;
    &lt;map-key column="hol_name" type="string"/&gt;
    &lt;element column="hol_date type="date"/&gt;
&lt;/map&gt;</pre>
	      </div></a></div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc7-3-1-1" /></p>
			</div>
			<p><s:text name="p7-3-1-5" /></p>
			<div class="example"><a id="d5e5537"></a><a id="d5e5546"><p class="title"><strong>Example&nbsp;7.20.&nbsp;Sorting via a query filter</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">sortedUsers = s.createFilter( group.getUsers(), "order by this.name" ).list();</pre>
      </div></a></div>
        </div>
        <div>
        	<h3 id="c7-3-2"><s:text name="title7-3-2" /></h3>
        	<p><s:text name="p7-3-2-1" /></p>
        	<dl>
        		<dt><code>one-to-many</code></dt>
        		<dd><s:text name="dd7-3-2-1-1" /></dd>
        		<dt><code>many-to-many</code></dt>
        		<dd><s:text name="dd7-3-2-1-2" /></dd>
        	</dl>
        	<p><s:text name="p7-3-2-2" /></p>
        	<div class="example"><a id="collections-bidirectional"></a><a id="d5e5564"><p class="title"><strong>Example&nbsp;7.21.&nbsp;Bidirectional one to many with many to one side as association
        owner</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Troop</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToMany</span><span class="java_separator">(</span><span class="java_plain">mappedBy</span><span class="java_operator">=</span><span class="java_literal">"troop"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Soldier</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getSoldiers</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Soldier</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"troop_fk"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Troop</span><span class="java_plain">&nbsp;getTroop</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-3" /></p>
        	<p><s:text name="p7-3-2-4" /></p>
        	<div class="example"><a id="d5e5564"></a><a id="d5e5575"><p class="title"><strong>Example&nbsp;7.22.&nbsp;Bidirectional association with one to many side as
        owner</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Troop</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToMany</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"troop_fk"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">we&nbsp;need&nbsp;to&nbsp;duplicate&nbsp;the&nbsp;physical&nbsp;information</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Soldier</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getSoldiers</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Soldier</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"troop_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;insertable</span><span class="java_operator">=</span><span class="java_literal">false</span><span class="java_separator">,</span><span class="java_plain">&nbsp;updatable</span><span class="java_operator">=</span><span class="java_literal">false</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Troop</span><span class="java_plain">&nbsp;getTroop</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span></pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-5" /></p>
        	<div class="example"><a id="d5e5575"></a><a id="d5e5580"><p class="title"><strong>Example&nbsp;7.23.&nbsp;Bidirectional one to many via Hibernate mapping files</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Parent"&gt;
    &lt;id name="id" column="parent_id"/&gt;
    ....
    &lt;set name="children" inverse="true"&gt;
        &lt;key column="parent_id"/&gt;
        &lt;one-to-many class="Child"/&gt;
    &lt;/set&gt;
&lt;/class&gt;

&lt;class name="Child"&gt;
    &lt;id name="id" column="child_id"/&gt;
    ....
    &lt;many-to-one name="parent" 
        class="Parent" 
        column="parent_id"
        not-null="true"/&gt;
&lt;/class&gt;</pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-6" /></p>
        	<p><s:text name="p7-3-2-7" /></p>
        	<div class="example"><a id="d5e5580"></a><a id="d5e5588"><p class="title"><strong>Example&nbsp;7.24.&nbsp;Many to many association via @ManyToMany</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Employer</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToMany</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;targetEntity</span><span class="java_operator">=</span><span class="java_plain">org</span><span class="java_separator">.</span><span class="java_plain">hibernate</span><span class="java_separator">.</span><span class="java_plain">test</span><span class="java_separator">.</span><span class="java_plain">metadata</span><span class="java_separator">.</span><span class="java_plain">manytomany</span><span class="java_separator">.</span><span class="java_type">Employee</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cascade</span><span class="java_operator">=</span><span class="java_separator">{</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">PERSIST</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">MERGE</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinTable</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"EMPLOYER_EMPLOYEE"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;joinColumns</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"EMPER_ID"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inverseJoinColumns</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"EMPEE_ID"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Collection</span><span class="java_plain">&nbsp;getEmployees</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;employees</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Employee</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToMany</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">PERSIST</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">MERGE</span><span class="java_separator">},</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mappedBy&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"employees"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;targetEntity&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">Employer</span><span class="java_separator">.</span><span class="java_keyword">class</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Collection</span><span class="java_plain">&nbsp;getEmployers</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;employers</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-8" /></p>
        	<p><s:text name="p7-3-2-9" /></p>
        	<div class="example"><a id="d5e5588"></a><a id="d5e5601"><p class="title"><strong>Example&nbsp;7.25.&nbsp;Default values for <code class="classname">@ManyToMany</code>
        (uni-directional)</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Store</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToMany</span><span class="java_separator">(</span><span class="java_plain">cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">PERSIST</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">City</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getImplantedIn</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">City</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">no&nbsp;bidirectional&nbsp;relationship</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-10" /></p>
        	<p><s:text name="p7-3-2-11" /></p>
        	<div class="example"><a id="d5e5601"></a><a id="d5e5615"><p class="title"><strong>Example&nbsp;7.26.&nbsp;Default values for <code class="classname">@ManyToMany</code>
        (bi-directional)</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Store</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToMany</span><span class="java_separator">(</span><span class="java_plain">cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">PERSIST</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">MERGE</span><span class="java_separator">})</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Customer</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getCustomers</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToMany</span><span class="java_separator">(</span><span class="java_plain">mappedBy</span><span class="java_operator">=</span><span class="java_literal">"customers"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Store</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getStores</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-12" /></p>
        	<p><s:text name="p7-3-2-13" /></p>
        	<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc7-3-2-1" /></p>
			</div>
			<p><s:text name="p7-3-2-14" /></p>
			<div class="example"><a id="example-many-to-many-mapping-file"><p class="title"><strong>Example&nbsp;7.27.&nbsp;Many to many association using Hibernate mapping files</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Category"&gt;
    &lt;id name="id" column="CATEGORY_ID"/&gt;
    ...
    &lt;bag name="items" table="CATEGORY_ITEM"&gt;
        &lt;key column="CATEGORY_ID"/&gt;
        &lt;many-to-many class="Item" column="ITEM_ID"/&gt;
    &lt;/bag&gt;
&lt;/class&gt;

&lt;class name="Item"&gt;
    &lt;id name="id" column="ITEM_ID"/&gt;
    ...

    &lt;!-- inverse end --&gt;
    &lt;bag name="categories" table="CATEGORY_ITEM" inverse="true"&gt;
        &lt;key column="ITEM_ID"/&gt;
        &lt;many-to-many class="Category" column="CATEGORY_ID"/&gt;
    &lt;/bag&gt;
&lt;/class&gt;</pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-15" /></p>
        	<div class="example"><a id="example-many-to-many-mapping-file"></a><a id="d5e5636"><p class="title"><strong>Example&nbsp;7.28.&nbsp;Effect of inverse vs. non-inverse side of many to many
        associations</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
category.getItems().add(item);           // The category now "knows" about the relationship
item.getCategories().add(category);      // The item now "knows" about the relationship

session.persist(item);                   // The relationship won't be saved!
session.persist(category);               // The relationship will be saved</pre>
      </div></a></div>
        	<p><s:text name="p7-3-2-16" /></p>
        </div>
        <div>
        	<h3 id="c7-3-3"><s:text name="title7-3-3" /></h3>
        	<p><s:text name="p7-3-3-1" /></p>
        	<div class="example"><a id="collections-indexedbidirectional"></a><a id="d5e5646"><p class="title"><strong>Example&nbsp;7.29.&nbsp;Bidirectional association with indexed collection</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Parent"&gt;
    &lt;id name="id" column="parent_id"/&gt;
    ....
    &lt;map name="children" inverse="true"&gt;
        &lt;key column="parent_id"/&gt;
        &lt;map-key column="name" 
            type="string"/&gt;
        &lt;one-to-many class="Child"/&gt;
    &lt;/map&gt;
&lt;/class&gt;

&lt;class name="Child"&gt;
    &lt;id name="id" column="child_id"/&gt;
    ....
    &lt;property name="name" 
        not-null="true"/&gt;
    &lt;many-to-one name="parent" 
        class="Parent" 
        column="parent_id"
        not-null="true"/&gt;
&lt;/class&gt;</pre>
      </div></a></div>
        	<p><s:text name="p7-3-3-2" /></p>
        	<div class="example"><a id="d5e5646"></a><a id="d5e5651"><p class="title"><strong>Example&nbsp;7.30.&nbsp;Bidirectional association with indexed collection, but no index
        column</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Parent"&gt;
    &lt;id name="id" column="parent_id"/&gt;
    ....
    &lt;map name="children"&gt;
        &lt;key column="parent_id"
            not-null="true"/&gt;
        &lt;map-key column="name" 
            type="string"/&gt;
        &lt;one-to-many class="Child"/&gt;
    &lt;/map&gt;
&lt;/class&gt;

&lt;class name="Child"&gt;
    &lt;id name="id" column="child_id"/&gt;
    ....
    &lt;many-to-one name="parent" 
        class="Parent" 
        column="parent_id"
        insert="false"
        update="false"
        not-null="true"/&gt;
&lt;/class&gt;</pre>
      </div></a></div>
        	<p><s:text name="p7-3-3-3" /></p>
        </div>
        <div>
        	<h3 id="c7-3-4"><s:text name="title7-3-4" /></h3>
        	<p><s:text name="p7-3-4-1" /></p>
        	<div class="example"><a id="collections-ternary"></a><a id="d5e5659"><p class="title"><strong>Example&nbsp;7.31.&nbsp;Ternary association mapping</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
public class Company {
   @Id 
   int id;
   ...
   @OneToMany // unidirectional
   @MapKeyJoinColumn(name="employee_id")
   Map&lt;Employee, Contract&gt; contracts;
}

// or

&lt;map name="contracts"&gt;
    &lt;key column="employer_id" not-null="true"/&gt;
    &lt;map-key-many-to-many column="employee_id" class="Employee"/&gt;
    &lt;one-to-many class="Contract"/&gt;
&lt;/map&gt;</pre>
      </div></a></div>
        	<p><s:text name="p7-3-4-2" /></p>
        </div>
        <div>
        	<h3 id="c7-3-5"><s:text name="title7-3-5" /></h3>
        	<p><s:text name="p7-3-5-1" /></p>
        	<p><s:text name="p7-3-5-2" /></p>
        	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;idbag name="lovers" table="LOVERS"&gt;
    &lt;collection-id column="ID" type="long"&gt;
        &lt;generator class="sequence"/&gt;
    &lt;/collection-id&gt;
    &lt;key column="PERSON1"/&gt;
    &lt;many-to-many column="PERSON2" class="Person" fetch="join"/&gt;
&lt;/idbag&gt;</pre>
        	<p><s:text name="p7-3-5-3" /></p>
        	<p><s:text name="p7-3-5-4" /></p>
        	<p><s:text name="p7-3-5-5" /></p>
        </div>
        <div>
        	<h2 id="c7-4"><s:text name="title7-4" /></h2>
        	<p><s:text name="p7-4-1" /></p>
        	<p><s:text name="p7-4-2" /></p>
        	<div class="example"><a id="collections-example"></a><a id="d5e5686"><p class="title"><strong>Example&nbsp;7.32.&nbsp;Example classes <code class="classname">Parent</code> and
      <code class="classname">Child</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Parent {
    private long id;
    private Set&lt;Child&gt; children;

    // getter/setter
    ...
}


public class Child {
   private long id;
   private String name

   
   // getter/setter
   ...
}</pre>
    </div></a></div>
        	<p><s:text name="p7-4-3" /></p>
        	<div class="example"><a id="d5e5686"></a><a id="d5e5692"><p class="title"><strong>Example&nbsp;7.33.&nbsp;One to many unidirectional <code class="classname">Parent-Child</code>
      relationship using annotations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Parent {
    @Id
    @GeneratedValue
    private long id;

    @OneToMany
    private Set&lt;Child&gt; children;

    // getter/setter
    ...
}


public class Child {
   @Id
   @GeneratedValue
   private long id;
   private String name;

   
   // getter/setter
   ...
}</pre>
    </div></a></div>
        	<div class="example"><a id="d5e5692"></a><a id="d5e5696"><p class="title"><strong>Example&nbsp;7.34.&nbsp;One to many unidirectional <code class="classname">Parent-Child</code>
      relationship using mapping files</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;

    &lt;class name="Parent"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;set name="children"&gt;
            &lt;key column="parent_id"/&gt;
            &lt;one-to-many class="Child"/&gt;
        &lt;/set&gt;
    &lt;/class&gt;

    &lt;class name="Child"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;property name="name"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
    </div></a></div>
        	<p><s:text name="p7-4-4" /></p>
        	<div class="example"><a id="d5e5696"></a><a id="d5e5701"><p class="title"><strong>Example&nbsp;7.35.&nbsp;Table definitions for unidirectional
      <code class="classname">Parent</code>-<code class="classname">Child</code>
      relationship</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table parent ( id bigint not null primary key )
create table child ( id bigint not null primary key, name varchar(255), parent_id bigint )
alter table child add constraint childfk0 (parent_id) references parent</pre>
    </div></a></div>
    		<p><s:text name="p7-4-5" /></p>
    		<div class="example"><a id="d5e5701"></a><a id="d5e5708"><p class="title"><strong>Example&nbsp;7.36.&nbsp;One to many bidirectional <code class="classname">Parent-Child</code>
      relationship using annotations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Parent {
    @Id
    @GeneratedValue
    private long id;

    @OneToMany(mappedBy="parent")
    private Set&lt;Child&gt; children;

    // getter/setter
    ...
}


public class Child {
   @Id
   @GeneratedValue
   private long id;

   private String name;
 
   @ManyToOne
   private Parent parent;

   
   // getter/setter
   ...
}</pre>
    </div></a></div>
        	<div class="example"><a id="d5e5708"></a><a id="d5e5712"><p class="title"><strong>Example&nbsp;7.37.&nbsp;One to many bidirectional <code class="classname">Parent-Child</code>
      relationship using mapping files</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;

    &lt;class name="Parent"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;set name="children" inverse="true"&gt;
            &lt;key column="parent_id"/&gt;
            &lt;one-to-many class="Child"/&gt;
        &lt;/set&gt;
    &lt;/class&gt;

    &lt;class name="Child"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;property name="name"/&gt;
        &lt;many-to-one name="parent" class="Parent" column="parent_id" not-null="true"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
    </div></a></div>
        	<p><s:text name="p7-4-6" /></p>
        	<div class="example"><a id="d5e5712"></a><a id="d5e5718"><p class="title"><strong>Example&nbsp;7.38.&nbsp;Table definitions for bidirectional
      <code class="classname">Parent</code>-<code class="classname">Child</code>
      relationship</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table parent ( id bigint not null primary key )
create table child ( id bigint not null
                     primary key,
                     name varchar(255),
                     parent_id bigint not null )
alter table child add constraint childfk0 (parent_id) references parent</pre>
    </div></a></div>
        	<p><s:text name="p7-4-7" /></p>
        	<div class="example"><a id="d5e5718"></a><a id="d5e5725"><p class="title"><strong>Example&nbsp;7.39.&nbsp;Enforcing NOT NULL constraint in unidirectional relation using
      annotations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Parent {
    @Id
    @GeneratedValue
    private long id;

    @OneToMany(optional=false)
    private Set&lt;Child&gt; children;

    // getter/setter
    ...
}


public class Child {
   @Id
   @GeneratedValue
   private long id;
   private String name;

   
   // getter/setter
   ...
}</pre>
    </div></a></div>
        	<div class="example"><a id="d5e5725"></a><a id="d5e5728"><p class="title"><strong>Example&nbsp;7.40.&nbsp;Enforcing NOT NULL constraint in unidirectional relation using
      mapping files</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;

    &lt;class name="Parent"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;set name="children"&gt;
            &lt;key column="parent_id" not-null="true"/&gt;
            &lt;one-to-many class="Child"/&gt;
        &lt;/set&gt;
    &lt;/class&gt;

    &lt;class name="Child"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;property name="name"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
    </div></a></div>
        	<p><s:text name="p7-4-8" /></p>
        	<div class="example"><a id="d5e5728"></a><a id="d5e5732"><p class="title"><strong>Example&nbsp;7.41.&nbsp;Many to many <code class="classname">Parent-Child</code> relationship
      using annotations</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Parent {
    @Id
    @GeneratedValue
    private long id;

    @ManyToMany
    private Set&lt;Child&gt; children;

    // getter/setter
    ...
}


public class Child {
   @Id
   @GeneratedValue
   private long id;

   private String name;

   
   // getter/setter
   ...
}</pre>
    </div></a></div>
        	<div class="example"><a id="d5e5732"></a><a id="d5e5736"><p class="title"><strong>Example&nbsp;7.42.&nbsp;Many to many <code class="classname">Parent-Child</code> relationship
      using mapping files</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;

    &lt;class name="Parent"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;set name="children" table="childset"&gt;
            &lt;key column="parent_id"/&gt;
            &lt;many-to-many class="Child" column="child_id"/&gt;
        &lt;/set&gt;
    &lt;/class&gt;

    &lt;class name="Child"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;
        &lt;property name="name"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
    </div></a></div>
        	<p><s:text name="p7-4-9" /></p>
        	<div class="example"><a id="d5e5736"></a><a id="d5e5741"><p class="title"><strong>Example&nbsp;7.43.&nbsp;Table definitions for many to many releationship</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table parent ( id bigint not null primary key )
create table child ( id bigint not null primary key, name varchar(255) )
create table childset ( parent_id bigint not null,
                        child_id bigint not null,
                        primary key ( parent_id, child_id ) )
alter table childset add constraint childsetfk0 (parent_id) references parent
alter table childset add constraint childsetfk1 (child_id) references child</pre>
    </div></a></div>
        	<p><s:text name="p7-4-10" /></p>
        </div>
	</s:i18n>
</div>