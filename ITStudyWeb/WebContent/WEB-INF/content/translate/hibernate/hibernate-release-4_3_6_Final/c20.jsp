<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c20">
		<div>
			<h1 id="c20"><s:text name="title20" /></h1>
		</div>
		<div>
			<h2 id="c20-1"><s:text name="title20-1" /></h2>
			<p><s:text name="p20-1-1" /></p>
			<p><s:text name="p20-1-2" /></p>
			<ul>
				<li><s:text name="li20-1-1-1" /></li>
				<li><s:text name="li20-1-1-2" /></li>
				<li><s:text name="li20-1-1-3" /></li>
				<li><s:text name="li20-1-1-4" /></li>
			</ul>
			<p><s:text name="p20-1-3" /></p>
			<ul>
				<li><s:text name="li20-1-2-1" /></li>
				<li><s:text name="li20-1-2-2" /></li>
				<li><s:text name="li20-1-2-3" /></li>
				<li><s:text name="li20-1-2-4" /></li>
				<li><s:text name="li20-1-2-5" /></li>
				<li><s:text name="li20-1-2-6" /></li>
			</ul>
			<p><s:text name="p20-1-4" /></p>
		</div>
		<div>
			<h3 id="c20-1-1"><s:text name="title20-1-1" /></h3>
			<p><s:text name="p20-1-1-1" /></p>
			<p><s:text name="p20-1-1-2" /></p>
			<p><s:text name="p20-1-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
s = sessions.openSession();
Transaction tx = s.beginTransaction();
            
User u = (User) s.createQuery("from User u where u.name=:userName")
    .setString("userName", userName).uniqueResult();
Map permissions = u.getPermissions();

tx.commit();
s.close();

Integer accessLevel = (Integer) permissions.get("accounts");  // Error!</pre>
			<p><s:text name="p20-1-1-4" /></p>
			<p><s:text name="p20-1-1-5" /></p>
			<p><s:text name="p20-1-1-6" /></p>
		</div>
		<div>
			<h3 id="c20-1-2"><s:text name="title20-1-2" /></h3>
			<p><s:text name="p20-1-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="permissions"
            fetch="join"&gt;
    &lt;key column="userId"/&gt;
    &lt;one-to-many class="Permission"/&gt;
&lt;/set</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="mother" class="Cat" fetch="join"/&gt;</pre>
			<p><s:text name="p20-1-2-2" /></p>
			<ul>
				<li><s:text name="li20-1-2-1-1" /></li>
				<li><s:text name="li20-1-2-1-2" /></li>
				<li><s:text name="li20-1-2-1-3" /></li>
				<li><s:text name="li20-1-2-1-4" /></li>
			</ul>
			<p><s:text name="p20-1-2-3" /></p>
			<p><s:text name="p20-1-2-4" /></p>
			<p><s:text name="p20-1-2-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
User user = (User) session.createCriteria(User.class)
                .setFetchMode("permissions", FetchMode.JOIN)
                .add( Restrictions.idEq(userId) )
                .uniqueResult();</pre>
			<p><s:text name="p20-1-2-6" /></p>
			<p><s:text name="p20-1-2-7" /></p>
		</div>
		<div>
			<h3 id="c20-1-3"><s:text name="title20-1-3" /></h3>
			<p><s:text name="p20-1-3-1" /></p>
			<p><s:text name="p20-1-3-2" /></p>
			<p><s:text name="p20-1-3-3" /></p>
			<p><s:text name="p20-1-3-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Cat" proxy="Cat"&gt;
    ......
    &lt;subclass name="DomesticCat"&gt;
        .....
    &lt;/subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p20-1-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat cat = (Cat) session.load(Cat.class, id);  // instantiate a proxy (does not hit the db)
if ( cat.isDomesticCat() ) {                  // hit the db to initialize the proxy
    DomesticCat dc = (DomesticCat) cat;       // Error!
    ....
}</pre>
			<p><s:text name="p20-1-3-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat cat = (Cat) session.load(Cat.class, id);            // instantiate a Cat proxy
DomesticCat dc = 
        (DomesticCat) session.load(DomesticCat.class, id);  // acquire new DomesticCat proxy!
System.out.println(cat==dc);                            // false</pre>
			<p><s:text name="p20-1-3-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
cat.setWeight(11.0);  // hit the db to initialize the proxy
System.out.println( dc.getWeight() );  // 11.0</pre>
			<p><s:text name="p20-1-3-8" /></p>
			<p><s:text name="p20-1-3-9" /></p>
			<p><s:text name="p20-1-3-10" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="CatImpl" proxy="Cat"&gt;
    ......
    &lt;subclass name="DomesticCatImpl" proxy="DomesticCat"&gt;
        .....
    &lt;/subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p20-1-3-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat cat = (Cat) session.load(CatImpl.class, catid);
Iterator iter = session.createQuery("from CatImpl as cat where cat.name='fritz'").iterate();
Cat fritz = (Cat) iter.next();</pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc20-1-3-1" /></p>
			</div>
			<p><s:text name="p20-1-3-12" /></p>
			<p><s:text name="p20-1-3-13" /></p>
			<ul>
				<li><s:text name="li20-1-3-1-1" /></li>
				<li><s:text name="li20-1-3-1-2" /></li>
				<li><s:text name="li20-1-3-1-3" /></li>
			</ul>
			<p><s:text name="p20-1-3-14" /></p>
			<p><s:text name="p20-1-3-15" /></p>
		</div>
		<div>
			<h3 id="c20-1-4"><s:text name="title20-1-4" /></h3>
			<p><s:text name="p20-1-4-1" /></p>
			<p><s:text name="p20-1-4-2" /></p>
			<p><s:text name="p20-1-4-3" /></p>
			<p><s:text name="p20-1-4-4" /></p>
			<ul>
				<li><s:text name="li20-1-4-1-1" /></li>
				<li><s:text name="li20-1-4-1-2" /></li>
				<li><s:text name="li20-1-4-1-3" /></li>
			</ul>
			<p><s:text name="p20-1-4-5" /></p>
			<p><s:text name="p20-1-4-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
( (Integer) s.createFilter( collection, "select count(*)" ).list().get(0) ).intValue()</pre>
			<p><s:text name="p20-1-4-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
s.createFilter( lazyCollection, "").setFirstResult(0).setMaxResults(10).list();</pre>
		</div>
		<div>
			<h3 id="c20-1-5"><s:text name="title20-1-5" /></h3>
			<p><s:text name="p20-1-5-1" /></p>
			<p><s:text name="p20-1-5-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person" batch-size="10"&gt;...&lt;/class&gt;</pre>
			<p><s:text name="p20-1-5-3" /></p>
			<p><s:text name="p20-1-5-4" /></p>
			<ul>
				<li>
					<p><s:text name="lip20-1-5-1-1-1" /></p>
					<p><s:text name="lip20-1-5-1-1-2" /></p>
					<p><s:text name="lip20-1-5-1-1-3" /></p>
					<p><s:text name="lip20-1-5-1-1-4" /></p>
					<p><s:text name="lip20-1-5-1-1-5" /></p>
					<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select * from owner where id in (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      select * from owner where id in (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      select * from owner where id in (?, ?)
                </pre>
				</li>
				<li>
					<p><s:text name="lip20-1-5-1-2-1" /></p>
					<p><s:text name="lip20-1-5-1-2-2" /></p>
					<p><s:text name="lip20-1-5-1-2-3" /></p>
					<p><s:text name="lip20-1-5-1-2-4" /></p>
				</li>
				<li>
					<p><s:text name="lip20-1-5-1-3-1" /></p>
					<p><s:text name="lip20-1-5-1-3-2" /></p>
				</li>
			</ul>
			<p><s:text name="p20-1-5-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;set name="cats" batch-size="3"&gt;
        ...
    &lt;/set&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p20-1-5-6" /></p>
			<p><s:text name="p20-1-5-7" /></p>
		</div>
		<div>
			<h3 id="c20-1-6"><s:text name="title20-1-6" /></h3>
			<p><s:text name="p20-1-6-1" /></p>
		</div>
		<div>
			<h3 id="c20-1-7"><s:text name="title20-1-7" /></h3>
			<p><s:text name="p20-1-7-1" /></p>
			<p><s:text name="p20-1-7-2" /></p>
			<div class="example"><a id="performance-fetching-profiles"></a><a id="d5e9018"><p class="title"><strong>Example&nbsp;20.1.&nbsp;Specifying a fetch profile using
        <code class="classname">@FetchProfile</code></strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
@FetchProfile(name = "customer-with-orders", fetchOverrides = {
   @FetchProfile.FetchOverride(entity = Customer.class, association = "orders", mode = FetchMode.JOIN)
})
public class Customer {
   @Id
   @GeneratedValue
   private long id;
   private String name;
   private long customerNumber;

   @OneToMany
   private Set&lt;Order&gt; orders;
   // standard getter/setter
   ...
}</pre>
      </div></a></div>
			<div class="example"><a id="d5e9018"></a><a id="d5e9022"><p class="title"><strong>Example&nbsp;20.2.&nbsp;Specifying a fetch profile using
        <code class="literal">&lt;fetch-profile&gt;</code> outside
        <code class="literal">&lt;class&gt;</code> node</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;
    &lt;class name="Customer"&gt;
        ...
        &lt;set name="orders" inverse="true"&gt;
            &lt;key column="cust_id"/&gt;
            &lt;one-to-many class="Order"/&gt;
        &lt;/set&gt;
    &lt;/class&gt;
    &lt;class name="Order"&gt;
        ...
    &lt;/class&gt;
    &lt;fetch-profile name="customer-with-orders"&gt;
        &lt;fetch entity="Customer" association="orders" style="join"/&gt;
    &lt;/fetch-profile&gt;
&lt;/hibernate-mapping&gt;
</pre>
      </div></a></div>
			<div class="example"><a id="d5e9022"></a><a id="d5e9027"><p class="title"><strong>Example&nbsp;20.3.&nbsp;Specifying a fetch profile using
        <code class="literal">&lt;fetch-profile&gt;</code> inside
        <code class="literal">&lt;class&gt;</code> node</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;
    &lt;class name="Customer"&gt;
        ...
        &lt;set name="orders" inverse="true"&gt;
            &lt;key column="cust_id"/&gt;
            &lt;one-to-many class="Order"/&gt;
        &lt;/set&gt;
        &lt;fetch-profile name="customer-with-orders"&gt;
            &lt;fetch association="orders" style="join"/&gt;
        &lt;/fetch-profile&gt;
    &lt;/class&gt;
    &lt;class name="Order"&gt;
        ...
    &lt;/class&gt;
&lt;/hibernate-mapping&gt;
</pre>
      </div></a></div>
			<p><s:text name="p20-1-7-3" /></p>
			<div class="example"><a id="d5e9027"></a><a id="d5e9034"><p class="title"><strong>Example&nbsp;20.4.&nbsp;Activating a fetch profile for a given
        <code class="classname">Session</code></strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = ...;
session.enableFetchProfile( "customer-with-orders" );  // name matches from mapping
Customer customer = (Customer) session.get( Customer.class, customerId );
</pre>
      </div></a></div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc20-1-7-1" /></p>
			</div>
			<p><s:text name="p20-1-7-4" /></p>
		</div>
		<div>
			<h3 id="c20-1-8"><s:text name="title20-1-8" /></h3>
			<p><s:text name="p20-1-8-1" /></p>
			<p><s:text name="p20-1-8-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Document"&gt;
       &lt;id name="id"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;property name="name" not-null="true" length="50"/&gt;
    &lt;property name="summary" not-null="true" length="200" lazy="true"/&gt;
    &lt;property name="text" not-null="true" length="2000" lazy="true"/&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p20-1-8-3" /></p>
			<p><s:text name="p20-1-8-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;target name="instrument" depends="compile"&gt;
    &lt;taskdef name="instrument" classname="org.hibernate.tool.instrument.InstrumentTask"&gt;
        &lt;classpath path="${jar.path}"/&gt;
        &lt;classpath path="${classes.dir}"/&gt;
        &lt;classpath refxml:id="lib.class.path"/&gt;
    &lt;/taskdef&gt;

    &lt;instrument verbose="true"&gt;
        &lt;fileset dir="${testclasses.dir}/org/hibernate/auction/model"&gt;
            &lt;include name="*.class"/&gt;
        &lt;/fileset&gt;
    &lt;/instrument&gt;
&lt;/target&gt;</pre>
			<p><s:text name="p20-1-8-5" /></p>
			<p><s:text name="p20-1-8-6" /></p>
		</div>
		<div>
			<h2 id="c20-2"><s:text name="title20-2" /></h2>
			<p><s:text name="p20-2-1" /></p>
			<p id="cacheproviders"><s:text name="p20-2-2" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th20-2-1-1" /></th>
						<th><s:text name="th20-2-1-2" /></th>
						<th><s:text name="th20-2-1-3" /></th>
						<th><s:text name="th20-2-1-4" /></th>
						<th><s:text name="th20-2-1-5" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td20-2-1-1" /></td>
						<td><s:text name="td20-2-1-2" /></td>
						<td><s:text name="td20-2-1-3" /></td>
						<td><s:text name="td20-2-1-4" /></td>
						<td><s:text name="td20-2-1-5" /></td>
					</tr>
					<tr>
						<td><s:text name="td20-2-1-6" /></td>
						<td><s:text name="td20-2-1-7" /></td>
						<td><s:text name="td20-2-1-8" /></td>
						<td><s:text name="td20-2-1-9" /></td>
						<td><s:text name="td20-2-1-10" /></td>
					</tr>
					<tr>
						<td><s:text name="td20-2-1-11" /></td>
						<td><s:text name="td20-2-1-12" /></td>
						<td><s:text name="td20-2-1-13" /></td>
						<td><s:text name="td20-2-1-14" /></td>
						<td><s:text name="td20-2-1-15" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<h3 id="c20-2-1"><s:text name="title20-2-1" /></h3>
			<p><s:text name="p20-2-1-1" /></p>
			<p><s:text name="p20-2-1-2" /></p>
			<ul>
				<li><s:text name="li20-2-1-1-1" /></li>
				<li><s:text name="li20-2-1-1-2" /></li>
				<li><s:text name="li20-2-1-1-3" /></li>
				<li><s:text name="li20-2-1-1-4" /></li>
			</ul>
			<p><s:text name="p20-2-1-3" /></p>
			<ul>
				<li><s:text name="li20-2-1-2-1" /></li>
				<li><s:text name="li20-2-1-2-2" /></li>
				<li><s:text name="li20-2-1-2-3" /></li>
				<li><s:text name="li20-2-1-2-4" /></li>
			</ul>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc20-2-1-1" /></p>
			</div>
			<div class="example"><a id="performance-cache-mapping"></a><a id="example-cache-concurrency-with-cache-annotation"><p class="title"><strong>Example&nbsp;20.5.&nbsp;Definition of cache concurrency strategy via
        <code class="classname">@Cache</code></strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span><!-- <br/> --><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Cacheable</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Cache</span><span class="java_separator">(</span><span class="java_plain">usage&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">CacheConcurrencyStrategy</span><span class="java_separator">.</span><span class="java_plain">NONSTRICT_READ_WRITE</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Forest</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span></pre>
      </div></a></div>
			<p><s:text name="p20-2-1-4" /></p>
			<div class="example"><a id="example-cache-concurrency-with-cache-annotation"></a><a id="d5e9148"><p class="title"><strong>Example&nbsp;20.6.&nbsp;Caching collections using annotations</strong></p><div class="example-contents">
        

        <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">OneToMany</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">cascade</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_type">CascadeType</span><!-- <br/> --><span class="java_separator">.</span><!-- <br/> --><span class="java_plain">ALL</span><!-- <br/> --><span class="java_separator">,</span><!-- <br/> --><span class="java_plain">&nbsp;fetch</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_type">FetchType</span><!-- <br/> --><span class="java_separator">.</span><!-- <br/> --><span class="java_plain">EAGER</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"CUST_ID"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Cache</span><span class="java_separator">(</span><span class="java_plain">usage&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">CacheConcurrencyStrategy</span><span class="java_separator">.</span><span class="java_plain">NONSTRICT_READ_WRITE</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">SortedSet</span><span class="java_operator">&lt;</span><span class="java_type">Ticket</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getTickets</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;tickets</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
      </div></a></div>
			<p><s:text name="p20-2-1-5" /></p>
			<div class="example"><a id="example-cache-annotation-with-attributes"><p class="title"><strong>Example&nbsp;20.7.&nbsp;<code class="classname">@Cache</code> annotation with
        attributes</strong></p><div class="example-contents">
        

        <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Cache(
    CacheConcurrencyStrategy usage();                      <span class="co" id="cache-hm1">(1)</span>
    String region() default "";                            <span class="co" id="cache-hm2">(2)</span>
    String include() default "all";                        <span class="co" id="cache-hm3">(3)</span>
)</pre></div>
      </div></a></div>
			<table class="table table-striped">
				<tr>
					<td>(1)</td>
					<td><s:text name="td20-2-1-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td20-2-1-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td20-2-1-1-3" /></td>
				</tr>
			</table>
			<p><s:text name="p20-2-1-6" /></p>
			<div class="example"><a id="example-hibernate-cache-mapping-element"><p class="title"><strong>Example&nbsp;20.8.&nbsp;The Hibernate <code class="literal">&lt;cache&gt;</code> mapping
        element</strong></p><div class="example-contents">
        

        <div class="programlistingco"><pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;cache
    usage="transactional|read-write|nonstrict-read-write|re<span class="co" id="cache1">(1)</span>ad-only"
    region="RegionName"                                    <span class="co" id="cache2">(2)</span>
    include="all|non-lazy"                                 <span class="co" id="cache3">(3)</span>
/&gt;</pre></div>
      </div></a></div>
			<table class="table table-striped">
				<tr>
					<td>(1)</td>
					<td><s:text name="td20-2-1-2-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td20-2-1-2-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td20-2-1-2-3" /></td>
				</tr>
			</table>
			<p><s:text name="p20-2-1-7" /></p>
			<p><s:text name="p20-2-1-8" /></p>
		</div>
		<div>
			<h3 id="c20-2-2"><s:text name="title20-2-2" /></h3>
			<p><s:text name="p20-2-2-1" /></p>
		</div>
		<div>
			<h3 id="c20-2-3"><s:text name="title20-2-3" /></h3>
			<p><s:text name="p20-2-3-1" /></p>
		</div>
		<div>
			<h3 id="c20-2-4"><s:text name="title20-2-4" /></h3>
			<p><s:text name="p20-2-4-1" /></p>
		</div>
		<div>
			<h3 id="c20-2-5"><s:text name="title20-2-5" /></h3>
			<p><s:text name="p20-2-5-1" /></p>
		</div>
		<div>
			<h3 id="c20-2-6"><s:text name="title20-2-6" /></h3>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic20-2-6-1" /></p>
			</div>
			<p><s:text name="p20-2-6-1" /></p>
			<p><s:text name="p20-2-6-2" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th20-2-6-1-1" /></th>
						<th><s:text name="th20-2-6-1-2" /></th>
						<th><s:text name="th20-2-6-1-3" /></th>
						<th><s:text name="th20-2-6-1-4" /></th>
						<th><s:text name="th20-2-6-1-5" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td20-2-6-1-1" /></td>
						<td><s:text name="td20-2-6-1-2" /></td>
						<td><s:text name="td20-2-6-1-3" /></td>
						<td><s:text name="td20-2-6-1-4" /></td>
						<td><s:text name="td20-2-6-1-5" /></td>
					</tr>
					<tr>
						<td><s:text name="td20-2-6-1-6" /></td>
						<td><s:text name="td20-2-6-1-7" /></td>
						<td><s:text name="td20-2-6-1-8" /></td>
						<td><s:text name="td20-2-6-1-9" /></td>
						<td><s:text name="td20-2-6-1-10" /></td>
					</tr>
					<tr>
						<td><s:text name="td20-2-6-1-11" /></td>
						<td><s:text name="td20-2-6-1-12" /></td>
						<td><s:text name="td20-2-6-1-13" /></td>
						<td><s:text name="td20-2-6-1-14" /></td>
						<td><s:text name="td20-2-6-1-15" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<h2 id="c20-3"><s:text name="title20-3" /></h2>
			<p><s:text name="p20-3-1" /></p>
			<p><s:text name="p20-3-2" /></p>
			<div class="example"><a id="performance-sessioncache"></a><a id="d5e9285"><p class="title"><strong>Example&nbsp;20.9.&nbsp;Explcitly evicting a cached instance from the first level cache
      using <code class="methodname">Session.evict()</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
ScrollableResult cats = sess.createQuery("from Cat as cat").scroll(); //a huge result set
while ( cats.next() ) {
    Cat cat = (Cat) cats.get(0);
    doSomethingWithACat(cat);
    sess.evict(cat);
}</pre>
    </div></a></div>
			<p><s:text name="p20-3-3" /></p>
			<p><s:text name="p20-3-4" /></p>
			<p><s:text name="p20-3-5" /></p>
			<div class="example"><a id="d5e9285"></a><a id="d5e9296"><p class="title"><strong>Example&nbsp;20.10.&nbsp;Second-level cache eviction via
      <code class="methodname">SessionFactoty.evict() </code>and
      <code class="methodname">SessionFacyory.evictCollection()</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sessionFactory.evict(Cat.class, catId); //evict a particular Cat
sessionFactory.evict(Cat.class);  //evict all Cats
sessionFactory.evictCollection("Cat.kittens", catId); //evict a particular collection of kittens
sessionFactory.evictCollection("Cat.kittens"); //evict all kitten collections</pre>
    </div></a></div>
			<p><s:text name="p20-3-6" /></p>
			<ul>
				<li><s:text name="li20-3-1-1" /></li>
				<li><s:text name="li20-3-1-2" /></li>
				<li><s:text name="li20-3-1-3" /></li>
				<li><s:text name="li20-3-1-4" /></li>
			</ul>
			<p><s:text name="p20-3-7" /></p>
			<div class="example"><a id="d5e9296"></a><a id="d5e9319"><p class="title"><strong>Example&nbsp;20.11.&nbsp;Browsing the second-level cache entries via the
      <code class="classname">Statistics</code> API</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Map cacheEntries = sessionFactory.getStatistics()
        .getSecondLevelCacheStatistics(regionName)
        .getEntries();</pre>
    </div></a></div>
			<p><s:text name="p20-3-8" /></p>
			<div class="example"><a id="d5e9319"></a><a id="d5e9324"><p class="title"><strong>Example&nbsp;20.12.&nbsp;Enabling Hibernate statistics</strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.generate_statistics true
hibernate.cache.use_structured_entries true</pre>
    </div></a></div>
		</div>
		<div>
			<h2 id="c20-4"><s:text name="title20-4" /></h2>
			<p><s:text name="p20-4-1" /></p>
		</div>
		<div>
			<h3 id="c20-4-1"><s:text name="title20-4-1" /></h3>
			<p><s:text name="p20-4-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.cache.use_query_cache true</pre>
			<p><s:text name="p20-4-1-2" /></p>
			<ul>
				<li><s:text name="li20-4-1-1-1" /></li>
				<li><s:text name="li20-4-1-1-2" /></li>
			</ul>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic20-4-1-1" /></p>
			</div>
			<p><s:text name="p20-4-1-3" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc20-4-1-1" /></p>
			</div>
		</div>
		<div>
			<h3 id="c20-4-2"><s:text name="title20-4-2" /></h3>
			<p><s:text name="p20-4-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
List blogs = sess.createQuery("from Blog blog where blog.blogger = :blogger")
        .setEntity("blogger", blogger)
        .setMaxResults(15)
        .setCacheable(true)
        .setCacheRegion("frontpages")
        .list();</pre>
			<p><s:text name="p20-4-2-2" /></p>
		</div>
		<div>
			<h2 id="c20-5"><s:text name="title20-5" /></h2>
			<p><s:text name="p20-5-1" /></p>
			<p><s:text name="p20-5-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
EntityEntry entry = (ManagedEntity)entity.$$_hibernate_getEntityEntry();
</pre>
			<p><s:text name="p20-5-3" /></p>
		</div>
		<div>
			<h3 id="c20-5-1"><s:text name="title20-5-1" /></h3>
			<p><s:text name="p20-5-1-1" /></p>
		</div>
		<div>
			<h3 id="c20-5-2"><s:text name="title20-5-2" /></h3>
			<p><s:text name="p20-5-2-1" /></p>
			<p><s:text name="p20-5-2-2" /></p>
		</div>
		<div>
			<h3 id="c20-5-3"><s:text name="title20-5-3" /></h3>
			<p><s:text name="p20-5-3-1" /></p>
			<h4><s:text name="p20-5-3-2" /></h4>
			<p><s:text name="p20-5-3-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;taskdef name="enhance" classname="org.hibernate.tool.enhance.EnhancementTask" classpathref="enhancement.classpath" /&gt;
&lt;enhance&gt;
    &lt;fileset dir="${ejb-classes}/org/hibernate/auction/model" includes="**/*.class"/&gt;
&lt;/enhance&gt;</pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc20-5-3-1" /></p>
			</div>
			<h4><s:text name="p20-5-3-4" /></h4>
			<p><s:text name="p20-5-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;dependencies&gt;
   &lt;dependency&gt;
      &lt;groupId&gt;org.hibernate.javax.persistence&lt;/groupId&gt;
      &lt;artifactId&gt;hibernate-jpa-[SPEC-VERSION]-api&lt;/artifactId&gt;
      &lt;version&gt;[IMPL-VERSION]&lt;/version&gt;
      &lt;scope&gt;compile&lt;/scope&gt;
   &lt;/dependency&gt;
&lt;/dependencies&gt;
&lt;plugins&gt;
&lt;plugin&gt;
  &lt;groupId&gt;org.hibernate.orm.tooling&lt;/groupId&gt;
  &lt;artifactId&gt;hibernate-enhance-maven-plugin&lt;/artifactId&gt;
  &lt;version&gt;VERSION&lt;/version&gt;
  &lt;executions&gt;
    &lt;execution&gt;
      &lt;goals&gt;
        &lt;goal&gt;enhance&lt;/goal&gt;
      &lt;/goals&gt;
    &lt;/execution&gt;
  &lt;/executions&gt;
&lt;/plugin&gt;</pre>
			<h4><s:text name="p20-5-3-6" /></h4>
			<p><s:text name="p20-5-3-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
apply plugin: 'java'
apply plugin: 'maven'
apply plugin: 'enhance'
buildscript {
    repositories {
        mavenCentral()
    }
    dependencies {
        classpath 'org.hibernate:hibernate-gradle-plugin:VERSION'
    }
}
dependencies {
   compile group: 'org.hibernate.javax.persistence', name: 'hibernate-jpa-[SPEC-VERSION]-api', version: '[IMPL-VERSION]'
   compile group: 'org.hibernate', name: 'hibernate-gradle-plugin', version: 'VERSION'
}
          </pre>
		</div>
		<div>
			<h2 id="c20-6"><s:text name="title20-6" /></h2>
			<p><s:text name="p20-6-1" /></p>
		</div>
		<div>
			<h3 id="c20-6-1"><s:text name="title20-6-1" /></h3>
			<p><s:text name="p20-6-1-1" /></p>
			<ul>
				<li><s:text name="li20-6-1-1-1" /></li>
				<li><s:text name="li20-6-1-1-2" /></li>
				<li><s:text name="li20-6-1-1-3" /></li>
			</ul>
			<p><s:text name="p20-6-1-2" /></p>
			<ul>
				<li><s:text name="li20-6-1-2-1" /></li>
				<li><s:text name="li20-6-1-2-2" /></li>
				<li><s:text name="li20-6-1-2-3" /></li>
			</ul>
			<p><s:text name="p20-6-1-3" /></p>
			<p><s:text name="p20-6-1-4" /></p>
			<p><s:text name="p20-6-1-5" /></p>
			<p><s:text name="p20-6-1-6" /></p>
			<p><s:text name="p20-6-1-7" /></p>
		</div>
		<div>
			<h3 id="c20-6-2"><s:text name="title20-6-2" /></h3>
			<p><s:text name="p20-6-2-1" /></p>
			<p><s:text name="p20-6-2-2" /></p>
			<p><s:text name="p20-6-2-3" /></p>
			<p><s:text name="p20-6-2-4" /></p>
		</div>
		<div>
			<h3 id="c20-6-3"><s:text name="title20-6-3" /></h3>
			<p><s:text name="p20-6-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Parent p = (Parent) sess.load(Parent.class, id);
Child c = new Child();
c.setParent(p);
p.getChildren().add(c);  //no need to fetch the collection!
sess.flush();</pre>
		</div>
		<div>
			<h3 id="c20-6-4"><s:text name="title20-6-4" /></h3>
			<p><s:text name="p20-6-4-1" /></p>
			<p><s:text name="p20-6-4-2" /></p>
			<p><s:text name="p20-6-4-3" /></p>
			<ul>
				<li><s:text name="li20-6-4-1-1" /></li>
				<li><s:text name="li20-6-4-1-2" /></li>
			</ul>
			<p><s:text name="p20-6-4-4" /></p>
			<p><s:text name="p20-6-4-5" /></p>
			<p><s:text name="p20-6-4-6" /></p>
		</div>
		<div>
			<h2 id="c20-7"><s:text name="title20-7" /></h2>
			<p><s:text name="p20-7-1" /></p>
		</div>
		<div>
			<h3 id="c20-7-1"><s:text name="title20-7-1" /></h3>
			<p><s:text name="p20-7-1-1" /></p>
			<p><s:text name="p20-7-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// MBean service registration for a specific SessionFactory
Hashtable tb = new Hashtable();
tb.put("type", "statistics");
tb.put("sessionFactory", "myFinancialApp");
ObjectName on = new ObjectName("hibernate", tb); // MBean object name

StatisticsService stats = new StatisticsService(); // MBean implementation
stats.setSessionFactory(sessionFactory); // Bind the stats to a SessionFactory
server.registerMBean(stats, on); // Register the Mbean on the server</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// MBean service registration for all SessionFactory's
Hashtable tb = new Hashtable();
tb.put("type", "statistics");
tb.put("sessionFactory", "all");
ObjectName on = new ObjectName("hibernate", tb); // MBean object name

StatisticsService stats = new StatisticsService(); // MBean implementation
server.registerMBean(stats, on); // Register the MBean on the server</pre>
			<p><s:text name="p20-7-1-3" /></p>
			<ul>
				<li><s:text name="li20-7-1-1-1" /></li>
				<li><s:text name="li20-7-1-1-2" /></li>
			</ul>
			<p><s:text name="p20-7-1-4" /></p>
		</div>
		<div>
			<h3 id="c20-7-2"><s:text name="title20-7-2" /></h3>
			<p><s:text name="p20-7-2-1" /></p>
			<ul>
				<li><s:text name="li20-7-2-1-1" /></li>
				<li><s:text name="li20-7-2-1-2" /></li>
				<li><s:text name="li20-7-2-1-3" /></li>
			</ul>
			<p><s:text name="p20-7-2-2" /></p>
			<p><s:text name="p20-7-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Statistics stats = HibernateUtil.sessionFactory.getStatistics();

double queryCacheHitCount  = stats.getQueryCacheHitCount();
double queryCacheMissCount = stats.getQueryCacheMissCount();
double queryCacheHitRatio =
  queryCacheHitCount / (queryCacheHitCount + queryCacheMissCount);

log.info("Query Hit ratio:" + queryCacheHitRatio);

EntityStatistics entityStats =
  stats.getEntityStatistics( Cat.class.getName() );
long changes =
        entityStats.getInsertCount()
        + entityStats.getUpdateCount()
        + entityStats.getDeleteCount();
log.info(Cat.class.getName() + " changed " + changes + "times"  );</pre>
			<p><s:text name="p20-7-2-4" /></p>
		</div>
	</s:i18n>
</div>