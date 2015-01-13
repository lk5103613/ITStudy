<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c5">
		<div>
			<h1 id="c5"><s:text name="title5" /></h1>
		</div>
		<div>
			<h2 id="c5-1"><s:text name="title5-1" /></h2>
			<p><s:text name="p5-1-1" /></p>
			<ul>
				<li><s:text name="li5-1-1" /></li>
				<li><s:text name="li5-1-2" /></li>
				<li><s:text name="li5-1-3" /></li>
			</ul>
			<p><s:text name="p5-1-2" /></p>
			<p><s:text name="p5-1-3" /></p>
			<p><s:text name="p5-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package eg;

@Entity 
@Table(name="cats") @Inheritance(strategy=SINGLE_TABLE)
@DiscriminatorValue("C") @DiscriminatorColumn(name="subclass", discriminatorType=CHAR)
public class Cat {
   
   @Id @GeneratedValue
   public Integer getId() { return id; }
   public void setId(Integer id) { this.id = id; }
   private Integer id;

   public BigDecimal getWeight() { return weight; }
   public void setWeight(BigDecimal weight) { this.weight = weight; }
   private BigDecimal weight;

   @Temporal(DATE) @NotNull @Column(updatable=false)
   public Date getBirthdate() { return birthdate; }
   public void setBirthdate(Date birthdate) { this.birthdate = birthdate; }
   private Date birthdate;

   @org.hibernate.annotations.Type(type="eg.types.ColorUserType")
   @NotNull @Column(updatable=false)
   public ColorType getColor() { return color; }
   public void setColor(ColorType color) { this.color = color; }
   private ColorType color;

   @NotNull @Column(updatable=false)
   public String getSex() { return sex; }
   public void setSex(String sex) { this.sex = sex; }
   private String sex;

   @NotNull @Column(updatable=false)
   public Integer getLitterId() { return litterId; }
   public void setLitterId(Integer litterId) { this.litterId = litterId; }
   private Integer litterId;

   @ManyToOne @JoinColumn(name="mother_id", updatable=false)
   public Cat getMother() { return mother; }
   public void setMother(Cat mother) { this.mother = mother; }
   private Cat mother;

   @OneToMany(mappedBy="mother") @OrderBy("litterId")
   public Set&lt;Cat&gt; getKittens() { return kittens; }
   public void setKittens(Set&lt;Cat&gt; kittens) { this.kittens = kittens; }
   private Set&lt;Cat&gt; kittens = new HashSet&lt;Cat&gt;();
}

@Entity @DiscriminatorValue("D")
public class DomesticCat extends Cat {

   public String getName() { return name; }
   public void setName(String name) { this.name = name }
   private String name;
}

@Entity
public class Dog { ... }</pre>
			<p><s:text name="p5-1-5" /></p>
			<p><s:text name="p5-1-6" /></p>
			<p><s:text name="p5-1-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;?xml version="1.0"?&gt;
&lt;!DOCTYPE hibernate-mapping PUBLIC
      "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
          "http://www.hibernate.org/dtd/hibernate-mapping-3.0.dtd"&gt;

&lt;hibernate-mapping package="eg"&gt;

        &lt;class name="Cat"
            table="cats"
            discriminator-value="C"&gt;

                &lt;id name="id"&gt;
                        &lt;generator class="native"/&gt;
                &lt;/id&gt;

                &lt;discriminator column="subclass"
                     type="character"/&gt;

                &lt;property name="weight"/&gt;

                &lt;property name="birthdate"
                    type="date"
                    not-null="true"
                    update="false"/&gt;

                &lt;property name="color"
                    type="eg.types.ColorUserType"
                    not-null="true"
                    update="false"/&gt;

                &lt;property name="sex"
                    not-null="true"
                    update="false"/&gt;

                &lt;property name="litterId"
                    column="litterId"
                    update="false"/&gt;

                &lt;many-to-one name="mother"
                    column="mother_id"
                    update="false"/&gt;

                &lt;set name="kittens"
                    inverse="true"
                    order-by="litter_id"&gt;
                        &lt;key column="mother_id"/&gt;
                        &lt;one-to-many class="Cat"/&gt;
                &lt;/set&gt;

                &lt;subclass name="DomesticCat"
                    discriminator-value="D"&gt;

                        &lt;property name="name"
                            type="string"/&gt;

                &lt;/subclass&gt;

        &lt;/class&gt;

        &lt;class name="Dog"&gt;
                &lt;!-- mapping for Dog could go here --&gt;
        &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p5-1-8" /></p>
		</div>
		<div>
			<h3 id="c5-1-1"><s:text name="title5-1-1" /></h3>
			<p><s:text name="p5-1-1-1" /></p>
			<p><s:text name="p5-1-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-1-3" /></p>
			<p><s:text name="p5-1-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
@Table(name="TBL_FLIGHT", 
       schema="AIR_COMMAND", 
       uniqueConstraints=
           @UniqueConstraint(
               name="flight_number", 
               columnNames={"comp_prefix", "flight_number"} ) )
public class Flight implements Serializable {
    @Column(name="comp_prefix")
    public String getCompagnyPrefix() { return companyPrefix; }

    @Column(name="flight_number")
    public String getNumber() { return number; }
}</pre>
			<p><s:text name="p5-1-1-5" /></p>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc5-1-1-1" /></p>
			</div>
			<p><s:text name="p5-1-1-6" /></p>
			<p><s:text name="p5-1-1-7" /></p>
			<ul>
				<li><s:text name="li5-1-1-1" /></li>
				<li><s:text name="li5-1-1-2" /></li>
				<li><s:text name="li5-1-1-3" /></li>
				<li><s:text name="li5-1-1-4" /></li>
				<li>
					<p><s:text name="li5-1-1-51" /></p>
					<ul>
						<li><s:text name="li5-1-1-5-1" /></li>
						<li><s:text name="li5-1-1-5-2" /></li>
						<li><s:text name="li5-1-1-5-3" /></li>
						<li><s:text name="li5-1-1-5-4" /></li>
					</ul>
					<p><s:text name="li5-1-1-52" /></p>
				</li>
			</ul>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc5-1-1-2" /></p>
			</div>
			<p><s:text name="p5-1-1-8" /></p>
			<p><s:text name="p5-1-1-9" /></p>
			<p><s:text name="p5-1-1-10" /></p>
			<p><s:text name="p5-1-1-11" /></p>
			<p><s:text name="p5-1-1-12" /></p>
			<p><s:text name="p5-1-1-13" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
@Subselect("select item.name, max(bid.amount), count(*) "
        + "from item "
        + "join bid on bid.item_id = item.id "
        + "group by item.name")
@Synchronize( {"item", "bid"} ) //tables impacted
public class Summary {
    @Id
    public String getId() { return id; }
    ...
}</pre>
			<p><s:text name="p5-1-1-14" /></p>
			<p><s:text name="p5-1-1-15" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class
        name="ClassName"                                   <span class="co" id="class3">(1)</span>
        table="tableName"                                  <span class="co" id="class3">(2)</span>
        discriminator-value="discriminator_value"          <span class="co" id="class3">(3)</span>
        mutable="true|false"                               <span class="co" id="class4">(4)</span>
        schema="owner"                                     <span class="co" id="class5">(5)</span>
        catalog="catalog"                                  <span class="co" id="class6">(6)</span>
        proxy="ProxyInterface"                             <span class="co" id="class7">(7)</span>
        dynamic-update="true|false"                        <span class="co" id="class8">(8)</span>
        dynamic-insert="true|false"                        <span class="co" id="class9">(9)</span>
        select-before-update="true|false"                  <span class="co" id="class10">(10)</span>
        polymorphism="implicit|explicit"                   <span class="co" id="class11">(11)</span>
        where="arbitrary sql where condition"              <span class="co" id="class12">(12)</span>
        persister="PersisterClass"                         <span class="co" id="class13">(13)</span>
        batch-size="N"                                     <span class="co" id="class14">(14)</span>
        optimistic-lock="none|version|dirty|all"           <span class="co" id="class15">(15)</span>
        lazy="true|false"                                  <span class="co" id="class16">(16)</span>
        entity-name="EntityName"                           <span class="co" id="class17">(17)</span>
        check="arbitrary sql check condition"              <span class="co" id="class18">(18)</span>
        rowxml:id="rowid"                                  <span class="co" id="class19">(19)</span>
        subselect="SQL expression"                         <span class="co" id="class20">(20)</span>
        abstract="true|false"                              <span class="co" id="class21">(21)</span>
        node="element-name"
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-1-7" /></td>
				</tr>
				<tr>
					<td>(8)</td>
					<td><s:text name="td5-1-1-8" /></td>
				</tr>
				<tr>
					<td>(9)</td>
					<td><s:text name="td5-1-1-9" /></td>
				</tr>
				<tr>
					<td>(10)</td>
					<td><s:text name="td5-1-1-10" /></td>
				</tr>
				<tr>
					<td>(11)</td>
					<td><s:text name="td5-1-1-11" /></td>
				</tr>
				<tr>
					<td>(12)</td>
					<td><s:text name="td5-1-1-12" /></td>
				</tr>
				<tr>
					<td>(13)</td>
					<td><s:text name="td5-1-1-13" /></td>
				</tr>
				<tr>
					<td>(14)</td>
					<td><s:text name="td5-1-1-14" /></td>
				</tr>
				<tr>
					<td>(15)</td>
					<td><s:text name="td5-1-1-15" /></td>
				</tr>
				<tr>
					<td>(16)</td>
					<td><s:text name="td5-1-1-16" /></td>
				</tr>
				<tr>
					<td>(17)</td>
					<td><s:text name="td5-1-1-17" /></td>
				</tr>
				<tr>
					<td>(18)</td>
					<td><s:text name="td5-1-1-18" /></td>
				</tr>
				<tr>
					<td>(19)</td>
					<td><s:text name="td5-1-1-19" /></td>
				</tr>
				<tr>
					<td>(20)</td>
					<td><s:text name="td5-1-1-20" /></td>
				</tr>
				<tr>
					<td>(21)</td>
					<td><s:text name="td5-1-1-21" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-1-16" /></p>
			<p><s:text name="p5-1-1-17" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Summary"&gt;
    &lt;subselect&gt;
        select item.name, max(bid.amount), count(*)
        from item
        join bid on bid.item_id = item.id
        group by item.name
    &lt;/subselect&gt;
    &lt;synchronize table="item"/&gt;
    &lt;synchronize table="bid"/&gt;
    &lt;id name="name"/&gt;
    ...
&lt;/class&gt;</pre>
			<p><s:text name="p5-1-1-18" /></p>
		</div>
		<div>
			<h3 id="c5-1-2"><s:text name="title5-1-2" /></h3>
			<p><s:text name="p5-1-2-1" /></p>
			<p><s:text name="p5-1-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
public class Person {
   @Id Integer getId() { ... }
   ...
}</pre>
			<p><s:text name="p5-1-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;id
	name="propertyName"                                <span class="co" id="id1">(1)</span>
	type="typename"                                    <span class="co" id="id2">(2)</span>
	column="column_name"                               <span class="co" id="id3">(3)</span>
	unsaved-value="null|any|none|undefined|id_value"   <span class="co" id="id4">(4)</span>
	access="field|property|ClassName"&gt;                 <span class="co" id="id5">(5)</span>
	node="element-name|@attribute-name|element/@attribute|."

&lt;generator class="generatorClass"/&gt;
&lt;/id&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-2-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-2-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-2-1-5" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-2-4" /></p>
			<p><s:text name="p5-1-2-5" /></p>
			<p><s:text name="p5-1-2-6" /></p>
		</div>
		<div>
			<h4 id="c5-1-2-1"></h4>
			<p><s:text name="p5-1-2-1-1" /></p>
			<ul>
				<li><s:text name="li5-1-2-1-1" /></li>
				<li><s:text name="li5-1-2-1-2" /></li>
				<li><s:text name="li5-1-2-1-3" /></li>
			</ul>
			<p><s:text name="p5-1-2-1-2" /></p>
			<p><s:text name="p5-1-2-1-3" /></p>
		</div>
		<div>
			<h4 id="c5-1-2-1-1"></h4>
			<p><s:text name="p5-1-2-1-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"firstName"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column</span><span class="java_operator">=</span><span class="java_plain">@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fld_firstname"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;age</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-1-1-2" /></p>
			<p><s:text name="p5-1-2-1-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span><span class="java_plain">&nbsp;</span><span class="java_type">CustomerId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">boolean</span><span class="java_plain">&nbsp;preferredCustomer</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MapsId</span><span class="java_separator">(</span><span class="java_literal">"userId"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumns</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userfirstname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"firstName"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userlastname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"lastName"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToOne</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;user</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">CustomerId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;userId</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;customerNumber</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;age</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastName</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-1-1-4" /></p>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc5-1-2-1-1-1" /></p>
			</div>
			<p><s:text name="p5-1-2-1-1-5" /></p>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="warning" /></h5>
				<p><s:text name="wc5-1-2-1-1-1" /></p>
			</div>
			<p><s:text name="p5-1-2-1-1-6"></s:text></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span><span class="java_plain">&nbsp;</span><span class="java_type">CustomerId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">boolean</span><span class="java_plain">&nbsp;preferredCustomer</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">CustomerId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumns</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userfirstname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"firstName"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userlastname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"lastName"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;user</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;customerNumber</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;age</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastName</span><span class="java_separator">;</span>


<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-1-1-7"></s:text></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;composite-id
        name="propertyName"
        class="ClassName"
        mapped="true|false"
        access="field|property|ClassName"
        node="element-name|."&gt;

        &lt;key-property name="propertyName" type="typename" column="column_name"/&gt;
        &lt;key-many-to-one name="propertyName" class="ClassName" column="column_name"/&gt;
        ......
&lt;/composite-id&gt;</pre>
			<p><s:text name="p5-1-2-1-1-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="User"&gt;
   &lt;composite-id name="id" class="UserId"&gt;
      &lt;key-property name="firstName" column="fld_firstname"/&gt;
      &lt;key-property name="lastName"/&gt;
   &lt;/composite-id&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p5-1-2-1-1-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Customer"&gt;
   &lt;composite-id name="id" class="CustomerId"&gt;
      &lt;key-property name="firstName" column="userfirstname_fk"/&gt;
      &lt;key-property name="lastName" column="userfirstname_fk"/&gt;
      &lt;key-property name="customerNumber"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="preferredCustomer"/&gt;

   &lt;many-to-one name="user"&gt;
      &lt;column name="userfirstname_fk" updatable="false" insertable="false"/&gt;
      &lt;column name="userlastname_fk" updatable="false" insertable="false"/&gt;
   &lt;/many-to-one&gt;
&lt;/class&gt;

&lt;class name="User"&gt;
   &lt;composite-id name="id" class="UserId"&gt;
      &lt;key-property name="firstName"/&gt;
      &lt;key-property name="lastName"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="age"/&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p5-1-2-1-1-10" /></p>
			<ul>
				<li><s:text name="li5-1-2-1-1-1-1" /></li>
				<li><s:text name="li5-1-2-1-1-1-2" /></li>
				<li><s:text name="li5-1-2-1-1-1-3" /></li>
			</ul>
			<p><s:text name="p5-1-2-1-1-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Customer"&gt;
   &lt;composite-id name="id" class="CustomerId"&gt;
      &lt;key-many-to-one name="user"&gt;
         &lt;column name="userfirstname_fk"/&gt;
         &lt;column name="userlastname_fk"/&gt;
      &lt;/key-many-to-one&gt;
      &lt;key-property name="customerNumber"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="preferredCustomer"/&gt;
&lt;/class&gt;

&lt;class name="User"&gt;
   &lt;composite-id name="id" class="UserId"&gt;
      &lt;key-property name="firstName"/&gt;
      &lt;key-property name="lastName"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="age"/&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p5-1-2-1-1-12" /></p>
		</div>
		<div>
			<h4 id="c5-1-2-1-2"><s:text name="title5-1-2-1-2" /></h4>
			<p><s:text name="p5-1-2-1-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">OneToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumns</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userfirstname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"firstName"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userlastname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"lastName"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;user</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;customerNumber</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">boolean</span><span class="java_plain">&nbsp;preferredCustomer</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;age</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastName</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-1-2-2" /></p>
			<p><s:text name="p5-1-2-1-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Customer"&gt;
   &lt;composite-id&gt;
      &lt;key-many-to-one name="user"&gt;
         &lt;column name="userfirstname_fk"/&gt;
         &lt;column name="userlastname_fk"/&gt;
      &lt;/key-many-to-one&gt;
      &lt;key-property name="customerNumber"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="preferredCustomer"/&gt;
&lt;/class&gt;

&lt;class name="User"&gt;
   &lt;composite-id name="id" class="UserId"&gt;
      &lt;key-property name="firstName"/&gt;
      &lt;key-property name="lastName"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="age"/&gt;
&lt;/class&gt;</pre>
		</div>
		<div>
			<h4 id="c5-1-2-1-3"><s:text name="title5-1-2-1-3" /></h4>
			<p><s:text name="p5-1-2-1-3-1" /></p>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="wc5-1-2-1-3-1" /></p>
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">IdClass</span><span class="java_separator">(</span><span class="java_type">CustomerId</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">OneToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumns</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userfirstname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"firstName"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userlastname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"lastName"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;user</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;customerNumber</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">boolean</span><span class="java_plain">&nbsp;preferredCustomer</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">CustomerId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;user</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;customerNumber</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;age</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastName</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-1-3-2" /></p>
			<p><s:text name="p5-1-2-1-3-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">IdClass</span><span class="java_separator">(</span><span class="java_type">CustomerId</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">OneToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumns</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userfirstname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"firstName"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"userlastname_fk"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"lastName"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">})</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;user</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;customerNumber</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">boolean</span><span class="java_plain">&nbsp;preferredCustomer</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">CustomerId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToOne</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;user</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;customerNumber</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">EmbeddedId</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;age</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;equals&nbsp;and&nbsp;hashCode</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">UserId</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastName</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-1-3-4" /></p>
			<p><s:text name="p5-1-2-1-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Customer"&gt;
   &lt;composite-id class="CustomerId" mapped="true"&gt;
      &lt;key-many-to-one name="user"&gt;
         &lt;column name="userfirstname_fk"/&gt;
         &lt;column name="userlastname_fk"/&gt;
      &lt;/key-many-to-one&gt;
      &lt;key-property name="customerNumber"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="preferredCustomer"/&gt;
&lt;/class&gt;

&lt;class name="User"&gt;
   &lt;composite-id name="id" class="UserId"&gt;
      &lt;key-property name="firstName"/&gt;
      &lt;key-property name="lastName"/&gt;
   &lt;/composite-id&gt;

   &lt;property name="age"/&gt;
&lt;/class&gt;</pre>
		</div>
		<div>
			<h4 id="c5-1-2-2"><s:text name="title5-1-2-2" /></h4>
			<p><s:text name="p5-1-2-2-1" /></p>
			<p><s:text name="p5-1-2-2-2" /></p>
			<ul>
				<li><s:text name="li5-1-2-2-1-1" /></li>
				<li><s:text name="li5-1-2-2-1-2" /></li>
				<li><s:text name="li5-1-2-2-1-3" /></li>
				<li><s:text name="li5-1-2-2-1-4" /></li>
			</ul>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic5-1-2-2-1" /></p>
			</div>
			<p><s:text name="p5-1-2-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
public class Customer {
   @Id @GeneratedValue
   Integer getId() { ... };
}

@Entity 
public class Invoice {
   @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
   Integer getId() { ... };
}</pre>
			<p><s:text name="p5-1-2-2-4" /></p>
			<ul>
				<li><s:text name="li5-1-2-2-2-1" /></li>
				<li><s:text name="li5-1-2-2-2-2" /></li>
				<li><s:text name="li5-1-2-2-2-3" /></li>
				<li><s:text name="li5-1-2-2-2-4" /></li>
				<li><s:text name="li5-1-2-2-2-5" /></li>
			</ul>
			<p><s:text name="p5-1-2-2-5" /></p>
			<ul>
				<li><s:text name="li5-1-2-2-3-1" /></li>
				<li><s:text name="li5-1-2-2-3-2" /></li>
				<li><s:text name="li5-1-2-2-3-3" /></li>
				<li><s:text name="li5-1-2-2-3-4" /></li>
			</ul>
			<p><s:text name="p5-1-2-2-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Id</span><!-- <br/> --><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">GeneratedValue</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;strategy</span><span class="java_operator">=</span><span class="java_type">GenerationType</span><span class="java_separator">.</span><span class="java_plain">SEQUENCE</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;generator</span><span class="java_operator">=</span><span class="java_literal">"SEQ_GEN"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@javax</span><span class="java_separator">.</span><span class="java_plain">persistence</span><span class="java_separator">.</span><span class="java_type">SequenceGenerator</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"SEQ_GEN"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;sequenceName</span><span class="java_operator">=</span><span class="java_literal">"my_sequence"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;allocationSize</span><span class="java_operator">=</span><span class="java_literal">20</span>
<!--  --><br><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-2-2-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_operator">&lt;</span><!-- <br/> --><span class="java_plain">table</span><!-- <br/> --><span class="java_operator">-</span><!-- <br/> --><span class="java_plain">generator&nbsp;name</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"EMP_GEN"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;table</span><span class="java_operator">=</span><span class="java_literal">"GENERATOR_TABLE"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pk</span><span class="java_operator">-</span><span class="java_plain">column</span><span class="java_operator">-</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"key"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;value</span><span class="java_operator">-</span><span class="java_plain">column</span><span class="java_operator">-</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"hi"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pk</span><span class="java_operator">-</span><span class="java_plain">column</span><span class="java_operator">-</span><span class="java_plain">value</span><span class="java_operator">=</span><span class="java_literal">"EMP"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;allocation</span><span class="java_operator">-</span><span class="java_plain">size</span><span class="java_operator">=</span><span class="java_literal">"20"</span><span class="java_operator">/&gt;</span>

<!--  --><br><span class="java_operator">//</span><span class="java_plain">and&nbsp;the&nbsp;annotation&nbsp;equivalent</span>

<!--  --><br><span class="java_plain">@javax</span><span class="java_separator">.</span><span class="java_plain">persistence</span><span class="java_separator">.</span><span class="java_type">TableGenerator</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"EMP_GEN"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;table</span><span class="java_operator">=</span><span class="java_literal">"GENERATOR_TABLE"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;pkColumnName&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"key"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;valueColumnName&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"hi"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;pkColumnValue</span><span class="java_operator">=</span><span class="java_literal">"EMP"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;allocationSize</span><span class="java_operator">=</span><span class="java_literal">20</span>
<!--  --><br><span class="java_separator">)</span>

<!--  --><br><span class="java_operator">&lt;</span><span class="java_plain">sequence</span><span class="java_operator">-</span><span class="java_plain">generator&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"SEQ_GEN"</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;sequence</span><span class="java_operator">-</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"my_sequence"</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;allocation</span><span class="java_operator">-</span><span class="java_plain">size</span><span class="java_operator">=</span><span class="java_literal">"20"</span><span class="java_operator">/&gt;</span>

<!--  --><br><span class="java_operator">//</span><span class="java_plain">and&nbsp;the&nbsp;annotation&nbsp;equivalent</span>

<!--  --><br><span class="java_plain">@javax</span><span class="java_separator">.</span><span class="java_plain">persistence</span><span class="java_separator">.</span><span class="java_type">SequenceGenerator</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"SEQ_GEN"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;sequenceName</span><span class="java_operator">=</span><span class="java_literal">"my_sequence"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;allocationSize</span><span class="java_operator">=</span><span class="java_literal">20</span>
<!--  --><br><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-2-2-8" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-2-2-1" /></p>
			</div>
			<p><s:text name="p5-1-2-2-9" /></p>
			<p><s:text name="p5-1-2-2-10" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Id</span><!-- <br/> --><span class="java_plain">&nbsp;@</span><!-- <br/> --><span class="java_type">GeneratedValue</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">generator</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"system-uuid"</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">GenericGenerator</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"system-uuid"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;strategy&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"uuid"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_separator">(</span><span class="java_plain">generator</span><span class="java_operator">=</span><span class="java_literal">"trigger-generated"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">GenericGenerator</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"trigger-generated"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;strategy&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"select"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;parameters&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Parameter</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"key"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;value&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"socialSecurityNumber"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span></pre>
			<p><s:text name="p5-1-2-2-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;id name="id" type="long" column="cat_id"&gt;
        &lt;generator class="org.hibernate.id.TableHiLoGenerator"&gt;
                &lt;param name="table"&gt;uid_table&lt;/param&gt;
                &lt;param name="column"&gt;next_hi_value_column&lt;/param&gt;
        &lt;/generator&gt;
&lt;/id&gt;</pre>
		</div>
		<div>
			<h4 id="c5-1-2-2-1"><s:text name="title5-1-2-2-1" /></h4>
			<p><s:text name="p5-1-2-2-1-1" /></p>
			<dl>
				<dt><code>increment</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-1" /></dd>
				<dt><code>identity</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-2" /></dd>
				<dt><code>sequence</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-3" /></dd>
				<dt><code>hilo</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-4" /></dd>
				<dt><code>seqhilo</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-5" /></dd>
				<dt><code>uuid</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-6" /></dd>
				<dt><code>uuid2</code></dt>
				<dd>
					<s:text name="dd5-1-2-2-1-1-7" />
					<dl>
						<dt><code>uuid_gen_strategy_class</code></dt>
						<dd><s:text name="dd5-1-2-2-1-1-7-1" /></dd>
						<dt><code>uuid_gen_strategy</code></dt>
						<dd><s:text name="dd5-1-2-2-1-1-7-2" /></dd>
					</dl>
					<p><s:text name="p5-1-2-2-1-2" /></p>
					<ul>
						<li><s:text name="li5-1-2-2-1-1-1" /></li>
						<li><s:text name="li5-1-2-2-1-1-2" /></li>
					</ul>
				</dd>
				<dt><code>guid</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-8" /></dd>
				<dt><code>native</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-9" /></dd>
				<dt><code>assigned</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-10" /></dd>
				<dt><code>select</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-11" /></dd>
				<dt><code>foreign</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-12" /></dd>
				<dt><code>sequence-identity</code></dt>
				<dd><s:text name="dd5-1-2-2-1-1-13" /></dd>
			</dl>
		</div>
		<div>
			<h4 id="c5-1-2-2-2"><s:text name="title5-1-2-2-2" /></h4>
			<p><s:text name="p5-1-2-2-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;id name="id" type="long" column="cat_id"&gt;
        &lt;generator class="hilo"&gt;
                &lt;param name="table"&gt;hi_value&lt;/param&gt;
                &lt;param name="column"&gt;next_value&lt;/param&gt;
                &lt;param name="max_lo"&gt;100&lt;/param&gt;
        &lt;/generator&gt;
&lt;/id&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;id name="id" type="long" column="cat_id"&gt;
        &lt;generator class="seqhilo"&gt;
                &lt;param name="sequence"&gt;hi_value&lt;/param&gt;
                &lt;param name="max_lo"&gt;100&lt;/param&gt;
        &lt;/generator&gt;
&lt;/id&gt;</pre>
			<p><s:text name="p5-1-2-2-2-2" /></p>
		</div>
		<div>
			<h4><s:text name="title5-1-2-2-3" /></h4>
			<p><s:text name="p5-1-2-2-3-1" /></p>
		</div>
		<div>
			<h4 id="c5-1-2-2-4"><s:text name="title5-1-2-2-4" /></h4>
			<p><s:text name="p5-1-2-2-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;id name="id" type="long" column="person_id"&gt;
        &lt;generator class="sequence"&gt;
                &lt;param name="sequence"&gt;person_id_sequence&lt;/param&gt;
        &lt;/generator&gt;
&lt;/id&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;id name="id" type="long" column="person_id" unsaved-value="0"&gt;
        &lt;generator class="identity"/&gt;
&lt;/id&gt;</pre>
			<p><s:text name="p5-1-2-2-4-2" /></p>
		</div>
		<div>
			<h4 id="c5-1-2-2-5"><s:text name="title5-1-2-2-5" /></h4>
			<p><s:text name="p5-1-2-2-5-1" /></p>
			<p><s:text name="p5-1-2-2-5-2" /></p>
		</div>
		<div>
			<h4 id="c5-1-2-2-6"><s:text name="title5-1-2-2-6" /></h4>
			<p><s:text name="p5-1-2-2-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;id name="id" type="long" column="person_id"&gt;
        &lt;generator class="select"&gt;
                &lt;param name="key"&gt;socialSecurityNumber&lt;/param&gt;
        &lt;/generator&gt;
&lt;/id&gt;</pre>
			<p><s:text name="p5-1-2-2-6-2" /></p>
		</div>
		<div>
			<h4 id="c5-1-2-2-7"><s:text name="title5-1-2-2-7" /></h4>
			<p><s:text name="p5-1-2-2-7-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">MedicalHistory</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">OneToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"person_id"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span><span class="java_type">Person</span><span class="java_plain">&nbsp;patient</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Person</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-2-7-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">MedicalHistory</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">MapsId</span><span class="java_plain">&nbsp;@</span><span class="java_type">OneToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"patient_id"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span><span class="java_type">Person</span><span class="java_plain">&nbsp;patient</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Person</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-2-7-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="MedicalHistory"&gt;
   &lt;id name="id"&gt;
      &lt;generator class="foreign"&gt;
         &lt;param name="property"&gt;patient&lt;/param&gt;
      &lt;/generator&gt;
   &lt;/id&gt;
   &lt;one-to-one name="patient" class="Person" constrained="true"/&gt;
&lt;/class&gt;</pre>
		</div>
		<div>
			<h4 id="c5-1-2-3"><s:text name="title5-1-2-3" /></h4>
			<p><s:text name="p5-1-2-3-1" /></p>
			<p><s:text name="p5-1-2-3-2" /></p>
			<ul>
				<li><s:text name="li5-1-2-3-1-1" /></li>
				<li><s:text name="li5-1-2-3-1-2" /></li>
				<li><s:text name="li5-1-2-3-1-3" /></li>
				<li><s:text name="li5-1-2-3-1-4" /></li>
				<li><s:text name="li5-1-2-3-1-5" /></li>
				<li><s:text name="li5-1-2-3-1-6" /></li>
				<li><s:text name="li5-1-2-3-1-7" /></li>
				<li><s:text name="li5-1-2-3-1-8" /></li>
			</ul>
			<p><s:text name="p5-1-2-3-3" /></p>
			<ul>
				<li><s:text name="li5-1-2-3-2-1" /></li>
				<li><s:text name="li5-1-2-3-2-2" /></li>
				<li><s:text name="li5-1-2-3-2-3" /></li>
				<li><s:text name="li5-1-2-3-2-4" /></li>
				<li><s:text name="li5-1-2-3-2-5" /></li>
				<li><s:text name="li5-1-2-3-2-6" /></li>
				<li><s:text name="li5-1-2-3-2-7" /></li>
				<li><s:text name="li5-1-2-3-2-8" /></li>
			</ul>
		</div>
		<div>
			<h4><s:text name="title5-1-2-3-1" /></h4>
			<p><s:text name="p5-1-2-3-1-1" /></p>
			<ul>
				<li>li5-1-2-3-1-1-1</li>
				<li>li5-1-2-3-1-1-2</li>
				<li>li5-1-2-3-1-1-3</li>
			</ul>
		</div>
		<div>
			<h4><s:text name="title5-1-2-4" /></h4>
			<p><s:text name="p5-1-2-4-1" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="warning" /></h5>
			    <p><s:text name="wc5-1-2-4-1" /></p>
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">CustomerInventory</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">TableGenerator</span><span class="java_separator">(</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"inventory"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;table&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"U_SEQUENCES"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;pkColumnName&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"S_ID"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;valueColumnName&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"S_NEXTNUM"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;pkColumnValue&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"inventory"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;allocationSize&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">1000</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_separator">(</span><span class="java_plain">strategy&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">GenerationType</span><span class="java_separator">.</span><span class="java_plain">TABLE</span><span class="java_separator">,</span><span class="java_plain">&nbsp;generator&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"inventory"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>


<!--  --><br><span class="java_plain">&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">ManyToOne</span><span class="java_separator">(</span><span class="java_plain">cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">MERGE</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;customer</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">int</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-2-4-2" /></p>
		</div>
		<div>
			<h3 id="c5-1-3"><s:text name="title5-1-3" /></h3>
			<p><s:text name="p5-1-3-1" /></p>
			<p><s:text name="p5-1-3-2" /></p>
			<p><s:text name="p5-1-3-3" /></p>
		</div>
		<div>
			<h4><s:text name="title5-1-3-1" /></h4>
			<p><s:text name="p5-1-3-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Version</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"OPTLOCK"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getVersion</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-3-1-2" /></p>
			<p><s:text name="p5-1-3-1-3" /></p>
			<p><s:text name="p5-1-3-1-4" /></p>
			<p><s:text name="p5-1-3-1-5" /></p>
			<p><s:text name="p5-1-3-1-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;version
        column="version_column"                            <span class="co" id="version1">(1)</span>
        name="propertyName"                                <span class="co" id="version2">(2)</span>
        type="typename"                                    <span class="co" id="version3">(3)</span>
        access="field|property|ClassName"                  <span class="co" id="version4">(4)</span>
        unsaved-value="null|negative|undefined"            <span class="co" id="version5">(5)</span>
        generated="never|always"                           <span class="co" id="version6">(6)</span>
        insert="true|false"                                <span class="co" id="version7">(7)</span>
        node="element-name|@attribute-name|element/@attribute|."
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-3-1-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-3-1-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-3-1-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-3-1-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-3-1-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-3-1-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-3-1-1-7" /></td>
				</tr>
			</table>
		</div>
		<div>
			<h4><s:text name="title5-1-3-2" /></h4>
			<p><s:text name="p5-1-3-2-1" /></p>
			<p><s:text name="p5-1-3-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Version</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Date</span><span class="java_plain">&nbsp;getLastUpdate</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-3-2-3" /></p>
			<p><s:text name="p5-1-3-2-4" /></p>
			<p><s:text name="p5-1-3-2-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;timestamp
        column="timestamp_column"                          <span class="co" id="timestamp1">(1)</span>
        name="propertyName"                                <span class="co" id="timestamp2">(2)</span>
        access="field|property|ClassName"                  <span class="co" id="timestamp3">(3)</span>
        unsaved-value="null|undefined"                     <span class="co" id="timestamp4">(4)</span>
        source="vm|db"                                     <span class="co" id="timestamp5">(5)</span>
        generated="never|always"                           <span class="co" id="timestamp6">(6)</span>
        node="element-name|@attribute-name|element/@attribute|."
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-3-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-3-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-3-2-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-3-2-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-3-2-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-3-2-1-6" /></td>
				</tr>
			</table>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-3-2-1" /></p>
			</div>
		</div>
		<div>
			<h3 id="c5-1-4"><s:text name="title5-1-4" /></h3>
			<p><s:text name="p5-1-4-1" /></p>
		</div>
		<div>
			<h4 id="c5-1-4-1"><s:text name="title5-1-4-1" /></h4>
			<p><s:text name="p5-1-4-1-1" /></p>
			<p><s:text name="p5-1-4-1-2" /></p>
			<p><s:text name="p5-1-4-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_keyword">public</span>
<!-- <br/> --><span class="java_plain">&nbsp;</span><!-- <br/> --><span class="java_keyword">transient</span><!-- <br/> --><span class="java_plain">&nbsp;</span><!-- <br/> --><span class="java_type">int</span><!-- <br/> --><span class="java_plain">&nbsp;counter</span><!-- <br/> --><span class="java_separator">;</span><!-- <br/> --><span class="java_plain">&nbsp;</span><!-- <br/> --><span class="java_operator">//</span><!-- <br/> --><span class="java_keyword">transient</span><!-- <br/> --><span class="java_plain">&nbsp;property</span>

<!--  --><br><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstname</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">persistent&nbsp;property</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Transient</span>
<!--  --><br><span class="java_type">String</span><span class="java_plain">&nbsp;getLengthInMeter</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_keyword">transient</span><span class="java_plain">&nbsp;property</span>

<!--  --><br><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">&nbsp;persistent&nbsp;property</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Basic</span>
<!--  --><br><span class="java_type">int</span><span class="java_plain">&nbsp;getLength</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">&nbsp;persistent&nbsp;property</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Basic</span><span class="java_separator">(</span><span class="java_plain">fetch&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">FetchType</span><span class="java_separator">.</span><span class="java_plain">LAZY</span><span class="java_separator">)</span>
<!--  --><br><span class="java_type">String</span><span class="java_plain">&nbsp;getDetailedComment</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">&nbsp;persistent&nbsp;property</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Temporal</span><span class="java_separator">(</span><span class="java_type">TemporalType</span><span class="java_separator">.</span><span class="java_plain">TIME</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">java</span><span class="java_separator">.</span><span class="java_plain">util</span><span class="java_separator">.</span><span class="java_type">Date</span><span class="java_plain">&nbsp;getDepartureTime</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">&nbsp;persistent&nbsp;property&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Enumerated</span><span class="java_separator">(</span><span class="java_type">EnumType</span><span class="java_separator">.</span><span class="java_plain">STRING</span><span class="java_separator">)</span>
<!--  --><br><span class="java_type">Starred</span><span class="java_plain">&nbsp;getNote</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">enum&nbsp;persisted&nbsp;as&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;in&nbsp;database</span></pre>
			<p><s:text name="p5-1-4-1-4" /></p>
			<p><s:text name="p5-1-4-1-5" /></p>
			<p><s:text name="p5-1-4-1-6" /></p>
			<p><s:text name="p5-1-4-1-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Lob</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getFullText</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;fullText</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Lob</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">byte</span><span class="java_separator">[]</span><span class="java_plain">&nbsp;getFullCode</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;fullCode</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-4-1-8" /></p>
		</div>
		<div>
			<h4 id="c5-1-4-1-1"><s:text name="title5-1-4-1-1" /></h4>
			<p><s:text name="p5-1-4-1-1-1" /></p>
			<ol>
				<li><s:text name="li5-1-4-1-1-1-1" /></li>
				<li><s:text name="li5-1-4-1-1-1-2" /></li>
				<li><s:text name="li5-1-4-1-1-1-3" /></li>
				<li><s:text name="li5-1-4-1-1-1-4" /></li>
			</ol>
			<p><s:text name="p5-1-4-1-1-2" /></p>
			<p><s:text name="p5-1-4-1-1-3" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-4-1-1-1" /></p>
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">TypeDef</span><!-- <br/> --><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"phoneNumber"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;defaultForType&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">PhoneNumber</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;typeClass&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">PhoneNumberType</span><span class="java_separator">.</span><span class="java_keyword">class</span>
<!--  --><br><span class="java_separator">)</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">ContactDetails</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">[...]</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">PhoneNumber</span><span class="java_plain">&nbsp;localPhoneNumber</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Type</span><span class="java_separator">(</span><span class="java_plain">type</span><span class="java_operator">=</span><span class="java_literal">"phoneNumber"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">OverseasPhoneNumber</span><span class="java_plain">&nbsp;overseasPhoneNumber</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">[...]</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-4-1-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_operator">//</span><!-- <br/> --><span class="java_plain">in&nbsp;org</span><!-- <br/> --><span class="java_operator">/</span><!-- <br/> --><span class="java_plain">hibernate</span><!-- <br/> --><span class="java_operator">/</span><!-- <br/> --><span class="java_plain">test</span><!-- <br/> --><span class="java_operator">/</span><!-- <br/> --><span class="java_plain">annotations</span><!-- <br/> --><span class="java_operator">/</span><!-- <br/> --><span class="java_plain">entity</span><!-- <br/> --><span class="java_operator">/</span><!-- <br/> --><span class="java_keyword">package</span><!-- <br/> --><span class="java_operator">-</span><!-- <br/> --><span class="java_plain">info</span><!-- <br/> --><span class="java_separator">.</span><!-- <br/> --><span class="java_plain">java</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">TypeDefs</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">TypeDef</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"caster"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;typeClass&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">CasterStringType</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;parameters&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Parameter</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"cast"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;value</span><span class="java_operator">=</span><span class="java_literal">"lower"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">package</span><span class="java_plain">&nbsp;org</span><span class="java_separator">.</span><span class="java_plain">hibernate</span><span class="java_separator">.</span><span class="java_plain">test</span><span class="java_separator">.</span><span class="java_plain">annotations</span><span class="java_separator">.</span><span class="java_plain">entity</span><span class="java_separator">;</span>

<!--  --><br><span class="java_operator">//</span><span class="java_plain">in&nbsp;org</span><span class="java_operator">/</span><span class="java_plain">hibernate</span><span class="java_operator">/</span><span class="java_plain">test</span><span class="java_operator">/</span><span class="java_plain">annotations</span><span class="java_operator">/</span><span class="java_plain">entity</span><span class="java_operator">/</span><span class="java_type">Forest</span><span class="java_separator">.</span><span class="java_plain">java</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Forest</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Type</span><span class="java_separator">(</span><span class="java_plain">type</span><span class="java_operator">=</span><span class="java_literal">"caster"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getSmallText</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-4-1-1-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Type</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">type</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"org.hibernate.test.annotations.entity.MonetaryAmountUserType"</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Columns</span><span class="java_separator">(</span><span class="java_plain">columns&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"r_amount"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"r_currency"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_separator">})</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">MonetaryAmount</span><span class="java_plain">&nbsp;getAmount</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;amount</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span>


<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">MonetaryAmount</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">BigDecimal</span><span class="java_plain">&nbsp;amount</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Currency</span><span class="java_plain">&nbsp;currency</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span></pre>
		</div>
		<div>
			<h4 id="c5-1-4-1-2"><s:text name="title5-1-4-1-2" /></h4>
			<p><s:text name="p5-1-4-1-2-1" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-4-1-2-2" /></p>
			</div>
			<p><s:text name="p5-1-4-1-2-2" /></p>
			<ul>
				<li><s:text name="li5-1-4-1-2-1-1" /></li>
				<li><s:text name="li5-1-4-1-2-1-2" /></li>
				<li><s:text name="li5-1-4-1-2-1-3" /></li>
			</ul>
			<p><s:text name="p5-1-4-1-2-3" /></p>
			<p><s:text name="p5-1-4-1-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Embedded</span><span class="java_plain">&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;address</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;getAddress</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;address</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setAddress</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">address&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;address</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">User</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;address</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Embedded</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;getAddress</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;address</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setAddress</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">address&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;address</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Access</span><span class="java_separator">(</span><span class="java_type">AcessType</span><span class="java_separator">.</span><span class="java_plain">PROPERTY</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;street1</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getStreet1</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;street1</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setStreet1</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">street1&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;street1</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;hashCode</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">not&nbsp;persistent</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-4-1-2-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setId</span><span class="java_separator">(</span><span class="java_type">Long</span><span class="java_plain">&nbsp;id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">id&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Transient</span><span class="java_plain">&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;userId</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Transient</span><span class="java_plain">&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;orderId</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Access</span><span class="java_separator">(</span><span class="java_type">AccessType</span><span class="java_separator">.</span><span class="java_plain">PROPERTY</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getOrderNumber</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;userId&nbsp;</span><span class="java_operator">+</span><span class="java_plain">&nbsp;</span><span class="java_literal">":"</span><span class="java_plain">&nbsp;</span><span class="java_operator">+</span><span class="java_plain">&nbsp;orderId</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setOrderNumber</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">userId&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">...;</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">orderId&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">...;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-4-1-2-6" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span></h5>
			    <p><s:text name="nc5-1-4-1-2-1" /></p>
			</div>
		</div>
		<div>
			<h4 id="c5-1-4-1-3"><s:text name="title5-1-4-1-3" /></h4>
			<p><s:text name="p5-1-4-1-3-1" /></p>
			<p><s:text name="p5-1-4-1-3-2" /></p>
		</div>
		<div>
			<h4 id="c5-1-4-1-4"><s:text name="title5-1-4-1-4" /></h4>
			<p><s:text name="p5-1-4-1-4-1" /></p>
			<ul>
				<li><s:text name="li5-1-4-1-4-1-1" /></li>
				<li><s:text name="li5-1-4-1-4-1-2" /></li>
				<li><s:text name="li5-1-4-1-4-1-3" /></li>
				<li><s:text name="li5-1-4-1-4-1-4" /></li>
				<li><s:text name="li5-1-4-1-4-1-5" /></li>
			</ul>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">updatable&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">false</span><span class="java_separator">,</span><span class="java_plain">&nbsp;name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"flight_name"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;nullable&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">false</span><span class="java_separator">,</span><span class="java_plain">&nbsp;length</span><span class="java_operator">=</span><span class="java_literal">50</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-4-1-4-2" /></p>
			<p><s:text name="p5-1-4-1-4-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Column(
    name="columnName";                                     <span class="co" id="hm1">(1)</span>
    boolean unique() default false;                        <span class="co" id="hm2">(2)</span>
    boolean nullable() default true;                       <span class="co" id="hm3">(3)</span>
    boolean insertable() default true;                     <span class="co" id="hm4">(4)</span>
    boolean updatable() default true;                      <span class="co" id="hm5">(5)</span>
    String columnDefinition() default "";                  <span class="co" id="hm6">(6)</span>
    String table() default "";                             <span class="co" id="hm7">(7)</span>
    int length() default 255;                              <span class="co" id="hm8">(8)</span>
    int precision() default 0; // decimal precision        <span class="co" id="hm9">(9)</span>
    int scale() default 0; // decimal scale</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-4-1-4-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-4-1-4-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-4-1-4-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-4-1-4-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-4-1-4-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-4-1-4-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-4-1-4-1-7" /></td>
				</tr>
				<tr>
					<td>(8)</td>
					<td><s:text name="td5-1-4-1-4-1-8" /></td>
				</tr>
				<tr>
					<td>(9)</td>
					<td><s:text name="td5-1-4-1-4-1-9" /></td>
				</tr>
				<tr>
					<td>(10)</td>
					<td><s:text name="td5-1-4-1-4-1-10" /></td>
				</tr>
			</table>
		</div>
		<div>
			<h4 id="c5-1-4-1-5"><s:text name="title5-1-4-1-5" /></h4>
			<p><s:text name="p5-1-4-1-5-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Formula</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_literal">"obj_length&nbsp;*&nbsp;obj_height&nbsp;*&nbsp;obj_width"</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">long</span><span class="java_plain">&nbsp;getObjectVolume</span><span class="java_separator">()</span></pre>
			<p><s:text name="p5-1-4-1-5-2" /></p>
		</div>
		<div>
			<h4 id="c5-1-4-1-6"><s:text name="title5-1-4-1-6" /></h4>
			<p><s:text name="p5-1-4-1-6-1" /></p>
			<ul>
				<li><s:text name="li5-1-4-1-6-1-1" /></li>
				<li><s:text name="li5-1-4-1-6-1-2" /></li>
				<li><s:text name="li5-1-4-1-6-1-3" /></li>
				<li><s:text name="li5-1-4-1-6-1-4" /></li>
			</ul>
		</div>
		<div>
			<h4 id="c5-1-4-2"><s:text name="title5-1-4-2" /></h4>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property
name="propertyName"                                (1)</span>
column="column_name"                               (2)</span>
type="typename"                                    (3)</span>
update="true|false"                                (4)</span>
insert="true|false"                                (4)</span>
formula="arbitrary SQL expression"                 (5)</span>
access="field|property|ClassName"                  (6)</span>
lazy="true|false"                                  (7)</span>
unique="true|false"                                (8)</span>
not-null="true|false"                              (9)</span>
optimistic-lock="true|false"                       (10)</span>
generated="never|insert|always"                    (11)</span>
node="element-name|@attribute-name|element/@attribute|."
index="index_name"
unique_key="unique_key_id"
length="L"
precision="P"
scale="S"
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-4-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-4-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-4-2-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-4-2-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-4-2-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-4-2-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-4-2-1-7" /></td>
				</tr>
				<tr>
					<td>(8)</td>
					<td><s:text name="td5-1-4-2-1-8" /></td>
				</tr>
				<tr>
					<td>(9)</td>
					<td><s:text name="td5-1-4-2-1-9" /></td>
				</tr>
				<tr>
					<td>(10)</td>
					<td><s:text name="td5-1-4-2-1-10" /></td>
				</tr>
				<tr>
					<td>(11)</td>
					<td><s:text name="td5-1-4-2-1-11" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-4-2-2" /></p>
			<ol>
				<li><s:text name="li5-1-4-2-1-1" /></li>
				<li><s:text name="li5-1-4-2-1-2" /></li>
				<li><s:text name="li5-1-4-2-1-3" /></li>
				<li><s:text name="li5-1-4-2-1-4" /></li>
			</ol>
			<p><s:text name="p5-1-4-2-3" /></p>
			<p><s:text name="p5-1-4-2-4" /></p>
			<p><s:text name="p5-1-4-2-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="totalPrice"
    formula="( SELECT SUM (li.quantity*p.price) FROM LineItem li, Product p
                WHERE li.productId = p.productId
                AND li.customerId = customerId
                AND li.orderNumber = orderNumber )"/&gt;</pre>
			<p><s:text name="p5-1-4-2-6" /></p>
		</div>
		<div>
			<h3 id="c5-1-5"><s:text name="title5-1-5" /></h3>
			<p><s:text name="p5-1-5-1" /></p>
			<p><s:text name="p5-1-5-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Person</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_plain">&nbsp;</span><span class="java_type">Persistent</span><span class="java_plain">&nbsp;component&nbsp;using&nbsp;defaults</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;homeAddress</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Embedded</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverrides</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"iso2"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"bornIso2"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"name"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"bornCountryName"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">Country</span><span class="java_plain">&nbsp;bornIn</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;city</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">Country</span><span class="java_plain">&nbsp;nationality</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">no&nbsp;overriding&nbsp;here</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Embeddable</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Country</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;iso2</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"countryName"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getIso2</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;iso2</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setIso2</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;iso2</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">iso2&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;iso2</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setName</span><span class="java_separator">(</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-5-3" /></p>
			<p><s:text name="p5-1-5-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><!-- <br/> --><span class="java_type">Embedded</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverrides</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"city"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fld_city"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"nationality.iso2"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"nat_Iso2"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"nationality.name"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"nat_CountryName"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_operator">//</span><span class="java_plain">nationality&nbsp;columns&nbsp;in&nbsp;homeAddress&nbsp;are&nbsp;overridden</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">Address</span><span class="java_plain">&nbsp;homeAddress</span><span class="java_separator">;</span></pre>
			<p><s:text name="p5-1-5-5" /></p>
			<p><s:text name="p5-1-5-6" /></p>
			<p><s:text name="p5-1-5-7" /></p>
			<p><s:text name="p5-1-5-8" /></p>
			<p><s:text name="p5-1-5-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;component
        name="propertyName"                                <span class="co" id="component1">(1)</span>
        class="className"                                  <span class="co" id="component2">(2)</span>
        insert="true|false"                                <span class="co" id="component3">(3)</span>
        update="true|false"                                <span class="co" id="component4">(4)</span>
        access="field|property|ClassName"                  <span class="co" id="component5">(5)</span>
        lazy="true|false"                                  <span class="co" id="component6">(6)</span>
        optimistic-lock="true|false"                       <span class="co" id="component7">(7)</span>
        unique="true|false"                                <span class="co" id="component8">(8)</span>
        node="element-name|."
&gt;

        &lt;property ...../&gt;
        &lt;many-to-one .... /&gt;
        ........
&lt;/component&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-5-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-5-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-5-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-5-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-5-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-5-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-5-1-7" /></td>
				</tr>
				<tr>
					<td>(8)</td>
					<td><s:text name="td5-1-5-1-8" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-5-10" /></p>
			<p><s:text name="p5-1-5-11" /></p>
			<p><s:text name="p5-1-5-12" /></p>
		</div>
		<div>
			<h3 id="c5-1-6"><s:text name="title5-1-6" /></h3>
			<p><s:text name="p5-1-6-1" /></p>
			<ul>
				<li><s:text name="li5-1-6-1-1" /></li>
				<li><s:text name="li5-1-6-1-2" /></li>
				<li><s:text name="li5-1-6-1-3" /></li>
			</ul>
		</div>
		<div>
			<h4 id="c5-1-6-1"><s:text name="title5-1-6-1" /></h4>
			<p><s:text name="p5-1-6-1-1" /></p>
			<p><s:text name="p5-1-6-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Inheritance</span><span class="java_separator">(</span><span class="java_plain">strategy</span><span class="java_operator">=</span><span class="java_type">InheritanceType</span><span class="java_separator">.</span><span class="java_plain">SINGLE_TABLE</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">DiscriminatorColumn</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"planetype"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;discriminatorType</span><span class="java_operator">=</span><span class="java_type">DiscriminatorType</span><span class="java_separator">.</span><span class="java_plain">STRING</span>
<!--  --><br><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">DiscriminatorValue</span><span class="java_separator">(</span><span class="java_literal">"Plane"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Plane</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">DiscriminatorValue</span><span class="java_separator">(</span><span class="java_literal">"A320"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;A320&nbsp;</span><span class="java_keyword">extends</span><span class="java_plain">&nbsp;</span><span class="java_type">Plane</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-6-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;subclass
        name="ClassName"                                   <span class="co" id="subclass1">(1)</span>
        discriminator-value="discriminator_value"          <span class="co" id="subclass2">(2)</span>
        proxy="ProxyInterface"                             <span class="co" id="subclass3">(3)</span>
        lazy="true|false"                                  <span class="co" id="subclass4">(4)</span>
        dynamic-update="true|false"
        dynamic-insert="true|false"
        entity-name="EntityName"
        node="element-name"
        extends="SuperclassName"&gt;

        &lt;property .... /&gt;
        .....
&lt;/subclass&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-6-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-6-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-6-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-6-1-4" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-6-1-4" /></p>
		</div>
		<div>
			<h4 id="c5-1-6-1-1"><s:text name="title5-1-6-1-1" /></h4>
			<p><s:text name="p5-1-6-1-1-1" /></p>
			<p><s:text name="p5-1-6-1-1-2" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-6-1-1-1" /></p>
			</div>
			<p><s:text name="p5-1-6-1-1-3" /></p>
			<p><s:text name="p5-1-6-1-1-4" /></p>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc5-1-6-1-1-1" /></p>
			</div>
			<p><s:text name="p5-1-6-1-1-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Inheritance</span><span class="java_separator">(</span><span class="java_plain">strategy</span><span class="java_operator">=</span><span class="java_type">InheritanceType</span><span class="java_separator">.</span><span class="java_plain">SINGLE_TABLE</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">DiscriminatorColumn</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"planetype"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;discriminatorType</span><span class="java_operator">=</span><span class="java_type">DiscriminatorType</span><span class="java_separator">.</span><span class="java_plain">STRING</span>
<!--  --><br><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">DiscriminatorValue</span><span class="java_separator">(</span><span class="java_literal">"Plane"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Plane</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">DiscriminatorValue</span><span class="java_separator">(</span><span class="java_literal">"A320"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;A320&nbsp;</span><span class="java_keyword">extends</span><span class="java_plain">&nbsp;</span><span class="java_type">Plane</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-6-1-1-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;discriminator
        column="discriminator_column"                      <span class="co" id="discriminator1">(1)</span>
        type="discriminator_type"                          <span class="co" id="discriminator2">(2)</span>
        force="true|false"                                 <span class="co" id="discriminator3">(3)</span>
        insert="true|false"                                <span class="co" id="discriminator4">(4)</span>
        formula="arbitrary sql expression"                 <span class="co" id="discriminator5">(5)</span>
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-6-1-1-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-6-1-1-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-6-1-1-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-6-1-1-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-6-1-1-1-5" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-6-1-1-7" /></p>
			<p><s:text name="p5-1-6-1-1-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;discriminator
    formula="case when CLASS_TYPE in ('a', 'b', 'c') then 0 else 1 end"
    type="integer"/&gt;</pre>
		</div>
		<div>
			<h4><s:text name="title5-1-6-2" /></h4>
			<p><s:text name="p5-1-6-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span><!-- <br/> --><span class="java_plain">&nbsp;@</span><!-- <br/> --><span class="java_type">Table</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">name</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_literal">"CATS"</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Inheritance</span><span class="java_separator">(</span><span class="java_plain">strategy</span><span class="java_operator">=</span><span class="java_type">InheritanceType</span><span class="java_separator">.</span><span class="java_plain">JOINED</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Cat</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span><span class="java_separator">(</span><span class="java_plain">generator</span><span class="java_operator">=</span><span class="java_literal">"cat-uuid"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">GenericGenerator</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"cat-uuid"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;strategy</span><span class="java_operator">=</span><span class="java_literal">"uuid"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;@</span><span class="java_type">Table</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"DOMESTIC_CATS"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">PrimaryKeyJoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"CAT"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">DomesticCat</span><span class="java_plain">&nbsp;</span><span class="java_keyword">extends</span><span class="java_plain">&nbsp;</span><span class="java_type">Cat</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-6-2-1" /></p>
			</div>
			<p><s:text name="p5-1-6-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;joined-subclass
        name="ClassName"                                   <span class="co" id="joinedsubclass1">(1)</span>
        table="tablename"                                  <span class="co" id="joinedsubclass2">(2)</span>
        proxy="ProxyInterface"                             <span class="co" id="joinedsubclass3">(3)</span>
        lazy="true|false"                                  <span class="co" id="joinedsubclass4">(4)</span>
        dynamic-update="true|false"
        dynamic-insert="true|false"
        schema="schema"
        catalog="catalog"
        extends="SuperclassName"
        persister="ClassName"
        subselect="SQL expression"
        entity-name="EntityName"
        node="element-name"&gt;

        &lt;key .... &gt;

        &lt;property .... /&gt;
        .....
&lt;/joined-subclass&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-6-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-6-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-6-2-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-6-2-1-4" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-6-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;?xml version="1.0"?&gt;
&lt;!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD//EN"
        "http://www.hibernate.org/dtd/hibernate-mapping-3.0.dtd"&gt;

&lt;hibernate-mapping package="eg"&gt;

        &lt;class name="Cat" table="CATS"&gt;
                &lt;id name="id" column="uid" type="long"&gt;
                        &lt;generator class="hilo"/&gt;
                &lt;/id&gt;
                &lt;property name="birthdate" type="date"/&gt;
                &lt;property name="color" not-null="true"/&gt;
                &lt;property name="sex" not-null="true"/&gt;
                &lt;property name="weight"/&gt;
                &lt;many-to-one name="mate"/&gt;
                &lt;set name="kittens"&gt;
                        &lt;key column="MOTHER"/&gt;
                        &lt;one-to-many class="Cat"/&gt;
                &lt;/set&gt;
                &lt;joined-subclass name="DomesticCat" table="DOMESTIC_CATS"&gt;
                    &lt;key column="CAT"/&gt;
                    &lt;property name="name" type="string"/&gt;
                &lt;/joined-subclass&gt;
        &lt;/class&gt;

        &lt;class name="eg.Dog"&gt;
                &lt;!-- mapping for Dog could go here --&gt;
        &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p5-1-6-2-4" /></p>
		</div>
		<div>
			<h4 id="c5-1-6-3"><s:text name="title5-1-6-3" /></h4>
			<p><s:text name="p5-1-6-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Inheritance</span><span class="java_separator">(</span><span class="java_plain">strategy&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">InheritanceType</span><span class="java_separator">.</span><span class="java_plain">TABLE_PER_CLASS</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-6-3-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;union-subclass
        name="ClassName"                                   <span class="co" id="unionsubclass1">(1)</span>
        table="tablename"                                  <span class="co" id="unionsubclass2">(2)</span>
        proxy="ProxyInterface"                             <span class="co" id="unionsubclass3">(3)</span>
        lazy="true|false"                                  <span class="co" id="unionsubclass4">(4)</span>
        dynamic-update="true|false"
        dynamic-insert="true|false"
        schema="schema"
        catalog="catalog"
        extends="SuperclassName"
        abstract="true|false"
        persister="ClassName"
        subselect="SQL expression"
        entity-name="EntityName"
        node="element-name"&gt;

        &lt;property .... /&gt;
        .....
&lt;/union-subclass&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-6-3-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-6-3-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-6-3-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-6-3-1-4" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-6-3-3" /></p>
			<p><s:text name="p5-1-6-3-4" /></p>
		</div>
		<div>
			<h4><s:text name="title5-1-6-4" /></h4>
			<p><s:text name="p5-1-6-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">MappedSuperclass</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">BaseEntity</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Basic</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Temporal</span><span class="java_separator">(</span><span class="java_type">TemporalType</span><span class="java_separator">.</span><span class="java_plain">TIMESTAMP</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Date</span><span class="java_plain">&nbsp;getLastUpdate</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getLastUpdater</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_keyword">extends</span><span class="java_plain">&nbsp;</span><span class="java_type">BaseEntity</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-6-4-2" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-6-4-1" /></p>
			</div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-6-4-2" /></p>
			</div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-6-4-3" /></p>
			</div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-6-4-4" /></p>
			</div>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-6-4-5" /></p>
			</div>
			<p><s:text name="p5-1-6-4-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">MappedSuperclass</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">FlyingObject</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">int</span><span class="java_plain">&nbsp;getAltitude</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;altitude</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Transient</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">int</span><span class="java_plain">&nbsp;getMetricAltitude</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;metricAltitude</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">PropulsionType</span><span class="java_plain">&nbsp;getPropulsion</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;metricAltitude</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">AttributeOverride</span><span class="java_separator">(</span><span class="java_plain">&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"altitude"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;column&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fld_altitude"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">AssociationOverride</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"propulsion"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;joinColumns&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"fld_propulsion_fk"</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Plane</span><span class="java_plain">&nbsp;</span><span class="java_keyword">extends</span><span class="java_plain">&nbsp;</span><span class="java_type">FlyingObject</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-6-4-4" /></p>
			<p><s:text name="p5-1-6-4-5" /></p>
			<p><s:text name="p5-1-6-4-6" /></p>
		</div>
		<div>
			<h4 id="c5-1-6-5"><s:text name="title5-1-6-5" /></h4>
			<p><s:text name="p5-1-6-5-1" /></p>
			<p><s:text name="p5-1-6-5-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Table</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"MainCat"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SecondaryTables</span><span class="java_separator">({</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">SecondaryTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"Cat1"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;pkJoinColumns</span><span class="java_operator">=</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">PrimaryKeyJoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"cat_id"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;referencedColumnName</span><span class="java_operator">=</span><span class="java_literal">"id"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">SecondaryTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"Cat2"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;uniqueConstraints</span><span class="java_operator">=</span><span class="java_separator">{</span><span class="java_plain">@</span><span class="java_type">UniqueConstraint</span><span class="java_separator">(</span><span class="java_plain">columnNames</span><span class="java_operator">=</span><span class="java_separator">{</span><span class="java_literal">"storyPart2"</span><span class="java_separator">})})</span>
<!--  --><br><span class="java_separator">})</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Cat</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;storyPart1</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;storyPart2</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">table</span><span class="java_operator">=</span><span class="java_literal">"Cat1"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getStoryPart1</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;storyPart1</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">table</span><span class="java_operator">=</span><span class="java_literal">"Cat2"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getStoryPart2</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;storyPart2</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-6-5-3" /></p>
			<p><s:text name="p5-1-6-5-4" /></p>
			<ul>
				<li><s:text name="li5-1-6-5-1-1" /></li>
				<li><s:text name="li5-1-6-5-1-2" /></li>
				<li><s:text name="li5-1-6-5-1-3" /></li>
				<li><s:text name="li5-1-6-5-1-4" /></li>
			</ul>
			<p><s:text name="p5-1-6-5-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">Table</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"MainCat"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">SecondaryTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"Cat1"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@org</span><span class="java_separator">.</span><span class="java_plain">hibernate</span><span class="java_separator">.</span><span class="java_plain">annotations</span><span class="java_separator">.</span><span class="java_type">Table</span><span class="java_separator">(</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;appliesTo</span><span class="java_operator">=</span><span class="java_literal">"Cat1"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;fetch</span><span class="java_operator">=</span><span class="java_type">FetchMode</span><span class="java_separator">.</span><span class="java_plain">SELECT</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;optional</span><span class="java_operator">=</span><span class="java_literal">true</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Cat</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;storyPart1</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;storyPart2</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span><span class="java_plain">&nbsp;@</span><span class="java_type">GeneratedValue</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getName</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;name</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">table</span><span class="java_operator">=</span><span class="java_literal">"Cat1"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getStoryPart1</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;storyPart1</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">table</span><span class="java_operator">=</span><span class="java_literal">"Cat2"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;getStoryPart2</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;storyPart2</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-6-5-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;join
        table="tablename"                                  <span class="co" id="join1">(1)</span>
        schema="owner"                                     <span class="co" id="join2">(2)</span>
        catalog="catalog"                                  <span class="co" id="join3">(3)</span>
        fetch="join|select"                                <span class="co" id="join4">(4)</span>
        inverse="true|false"                               <span class="co" id="join5">(5)</span>
        optional="true|false"&gt;                             <span class="co" id="join6">(6)</span>

        &lt;key ... /&gt;

        &lt;property ... /&gt;
        ...
&lt;/join&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-6-5-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-6-5-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-6-5-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-6-5-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-6-5-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-6-5-1-6" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-6-5-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"
    table="PERSON"&gt;

    &lt;id name="id" column="PERSON_ID"&gt;...&lt;/id&gt;

    &lt;join table="ADDRESS"&gt;
        &lt;key column="ADDRESS_ID"/&gt;
        &lt;property name="address"/&gt;
        &lt;property name="zip"/&gt;
        &lt;property name="country"/&gt;
    &lt;/join&gt;
    ...</pre>
			<p><s:text name="p5-1-6-5-8" /></p>
		</div>
		<div>
			<h3 id="c5-1-7"><s:text name="title5-1-7" /></h3>
			<p><s:text name="p5-1-7-1" /></p>
			<p><s:text name="p5-1-7-2" /></p>
			<p><s:text name="p5-1-7-3" /></p>
			<p><s:text name="p5-1-7-4" /></p>
			<ol>
				<li><s:text name="li5-1-7-1-1" /></li>
				<li><s:text name="li5-1-7-1-2" /></li>
				<li><s:text name="li5-1-7-1-3" /></li>
			</ol>
			<p><s:text name="p5-1-7-5" /></p>
			<p><s:text name="p5-1-7-6" /></p>
		</div>
		<div>
			<h4 id="c5-1-7-1"><s:text name="title5-1-7-1" /></h4>
			<p><s:text name="p5-1-7-1-1" /></p>
			<ul>
				<li><s:text name="li5-1-7-1-1-1" /></li>
				<li><s:text name="li5-1-7-1-1-2" /></li>
			</ul>
			<p><s:text name="p5-1-7-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span><span class="java_separator">(</span><span class="java_plain">&nbsp;cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">PERSIST</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">MERGE</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"COMP_ID"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Company</span><span class="java_plain">&nbsp;getCompany</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;company</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<p><s:text name="p5-1-7-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span><span class="java_separator">(</span><span class="java_plain">&nbsp;cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">PERSIST</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">MERGE</span><span class="java_separator">},</span><span class="java_plain">&nbsp;targetEntity</span><span class="java_operator">=</span><span class="java_type">CompanyImpl</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"COMP_ID"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Company</span><span class="java_plain">&nbsp;getCompany</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;company</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">interface</span><span class="java_plain">&nbsp;</span><span class="java_type">Company</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-7-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Flight</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span><span class="java_separator">(</span><span class="java_plain">&nbsp;cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">PERSIST</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">MERGE</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinTable</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"Flight_Company"</span><span class="java_separator">,</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;joinColumns&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"FLIGHT_ID"</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inverseJoinColumns&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"COMP_ID"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Company</span><span class="java_plain">&nbsp;getCompany</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;company</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-7-1-1-1" /></p>
			    <pre xmlns="" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Ticket</span><span class="java_plain">&nbsp;</span><span class="java_keyword">implements</span><span class="java_plain">&nbsp;</span><span class="java_type">Serializable</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumnOrFormula</span><span class="java_separator">(</span><span class="java_plain">formula</span><span class="java_operator">=</span><span class="java_literal">"(firstname&nbsp;+&nbsp;'&nbsp;'&nbsp;+&nbsp;lastname)"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Person</span><span class="java_plain">&nbsp;getOwner</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;person</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
			</div>
			<p><s:text name="p5-1-7-1-5" /></p>
			<p><s:text name="p5-1-7-1-6" /></p>
			<div class="example"><a id="mapping-declaration-manytoone"></a><a id="d5e3750"><p class="title"><strong>Example&nbsp;5.1.&nbsp;@NotFound annotation</strong></p><div class="example-contents">
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Child</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">NotFound</span><span class="java_separator">(</span><span class="java_plain">action</span><span class="java_operator">=</span><span class="java_type">NotFoundAction</span><span class="java_separator">.</span><span class="java_plain">IGNORE</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Parent</span><span class="java_plain">&nbsp;getParent</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span></pre>
		  	</div></a></div>
		  	<p><s:text name="p5-1-7-1-7" /></p>
		    <div class="example"><a id="d5e3750"></a><a id="d5e3754"><p class="title"><strong>Example&nbsp;5.2.&nbsp;@OnDelete annotation</strong></p><div class="example-contents">
          	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Child</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OnDelete</span><span class="java_separator">(</span><span class="java_plain">action</span><span class="java_operator">=</span><span class="java_type">OnDeleteAction</span><span class="java_separator">.</span><span class="java_plain">CASCADE</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Parent</span><span class="java_plain">&nbsp;getParent</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span></pre>
        	</div></a></div>
        	<p><s:text name="p5-1-7-1-8" /></p>
        	<div class="example"><a id="d5e3754"></a><a id="d5e3759"><p class="title"><strong>Example&nbsp;5.3.&nbsp;@ForeignKey annotation</strong></p><div class="example-contents">
          	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Child</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ForeignKey</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"FK_PARENT"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Parent</span><span class="java_plain">&nbsp;getParent</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">alter&nbsp;table&nbsp;</span><span class="java_type">Child</span><span class="java_plain">&nbsp;add&nbsp;constraint&nbsp;FK_PARENT&nbsp;foreign&nbsp;key&nbsp;</span><span class="java_separator">(</span><span class="java_plain">parent_id</span><span class="java_separator">)</span><span class="java_plain">&nbsp;references&nbsp;</span><span class="java_type">Parent</span></pre>
        	</div></a></div>
			<p><s:text name="p5-1-7-1-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
class Person {
   @Id Integer personNumber;
   String firstName;
   @Column(name="I")
   String initial;
   String lastName;
}

@Entity
class Home {
   @ManyToOne
   @JoinColumns({
      @JoinColumn(name="first_name", referencedColumnName="firstName"),
      @JoinColumn(name="init", referencedColumnName="I"),
      @JoinColumn(name="last_name", referencedColumnName="lastName"),
   })
   Person owner
}</pre>
			<p><s:text name="p5-1-7-1-10" /></p>
			<p><s:text name="p5-1-7-1-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one
        name="propertyName"                                <span class="co" id="manytoone1">(1)</span>
        column="column_name"                               <span class="co" id="manytoone2">(2)</span>
        class="ClassName"                                  <span class="co" id="manytoone3">(3)</span>
        cascade="cascade_style"                            <span class="co" id="manytoone4">(4)</span>
        fetch="join|select"                                <span class="co" id="manytoone5">(5)</span>
        update="true|false"                                <span class="co" id="manytoone6">(6)</span>
        insert="true|false"                                <span class="co" id="manytoone7">(6)</span>
        property-ref="propertyNameFromAssociatedClass"     <span class="co" id="manytoone8">(7)</span>
        access="field|property|ClassName"                  <span class="co" id="manytoone9">(8)</span>
        unique="true|false"                                <span class="co" id="manytoone10">(9)</span>
        not-null="true|false"                              <span class="co" id="manytoone11">(10)</span>
        optimistic-lock="true|false"                       <span class="co" id="manytoone12">(11)</span>
        lazy="proxy|no-proxy|false"                        <span class="co" id="manytoone13">(12)</span>
        not-found="ignore|exception"                       <span class="co" id="manytoone14">(13)</span>
        entity-name="EntityName"                           <span class="co" id="manytoone15">(14)</span>
        formula="arbitrary SQL expression"                 <span class="co" id="manytoone16">(15)</span>
        node="element-name|@attribute-name|element/@attribute|."
        embed-xml="true|false"
        index="index_name"
        unique_key="unique_key_id"
        foreign-key="foreign_key_name"
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-7-1-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-7-1-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-7-1-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-7-1-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-7-1-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-7-1-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-7-1-1-7" /></td>
				</tr>
				<tr>
					<td>(8)</td>
					<td><s:text name="td5-1-7-1-1-8" /></td>
				</tr>
				<tr>
					<td>(9)</td>
					<td><s:text name="td5-1-7-1-1-9" /></td>
				</tr>
				<tr>
					<td>(10)</td>
					<td><s:text name="td5-1-7-1-1-10" /></td>
				</tr>
				<tr>
					<td>(11)</td>
					<td><s:text name="td5-1-7-1-1-11" /></td>
				</tr>
				<tr>
					<td>(12)</td>
					<td><s:text name="td5-1-7-1-1-12" /></td>
				</tr>
				<tr>
					<td>(13)</td>
					<td><s:text name="td5-1-7-1-1-13" /></td>
				</tr>
				<tr>
					<td>(14)</td>
					<td><s:text name="td5-1-7-1-1-14" /></td>
				</tr>
				<tr>
					<td>(15)</td>
					<td><s:text name="td5-1-7-1-1-15" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-7-1-12" /></p>
			<p><s:text name="p5-1-7-1-13" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="product" class="Product" column="PRODUCT_ID"/&gt;</pre>
			<p><s:text name="p5-1-7-1-14" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="serialNumber" unique="true" type="string" column="SERIAL_NUMBER"/&gt;</pre>
			<p><s:text name="p5-1-7-1-15" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="product" property-ref="serialNumber" column="PRODUCT_SERIAL_NUMBER"/&gt;</pre>
			<p><s:text name="p5-1-7-1-16" /></p>
			<p><s:text name="p5-1-7-1-17" /></p>
			<p><s:text name="p5-1-7-1-18" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="owner" property-ref="identity.ssn" column="OWNER_SSN"/&gt;</pre>
		</div>
		<div>
			<h4 id="c5-17-2"><s:text name="title5-1-7-2" /></h4>
			<p><s:text name="p5-1-7-2-1" /></p>
			<div class="example"><a id="mapping-declaration-onetoone"></a><a id="d5e3878"><p class="title"><strong>Example&nbsp;5.4.&nbsp;One to One association</strong></p><div class="example-contents">
          	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Body</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToOne</span><span class="java_separator">(</span><span class="java_plain">cascade&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">ALL</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MapsId</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Heart</span><span class="java_plain">&nbsp;getHeart</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;heart</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Heart</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Long</span><span class="java_plain">&nbsp;getId</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...}</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
        	</div></a></div>
        	<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-7-2-1" /></p>
			</div>
			<p><s:text name="p5-1-7-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;one-to-one
        name="propertyName"                                <span class="co" id="onetoone1">(1)</span>
        class="ClassName"                                  <span class="co" id="onetoone2">(2)</span>
        cascade="cascade_style"                            <span class="co" id="onetoone3">(3)</span>
        constrained="true|false"                           <span class="co" id="onetoone4">(4)</span>
        fetch="join|select"                                <span class="co" id="onetoone5">(5)</span>
        property-ref="propertyNameFromAssociatedClass"     <span class="co" id="onetoone6">(6)</span>
        access="field|property|ClassName"                  <span class="co" id="onetoone7">(7)</span>
        formula="any SQL expression"                       <span class="co" id="onetoone8">(8)</span>
        lazy="proxy|no-proxy|false"                        <span class="co" id="onetoone9">(9)</span>
        entity-name="EntityName"                           <span class="co" id="onetoone10">(10)</span>
        node="element-name|@attribute-name|element/@attribute|."
        embed-xml="true|false"
        foreign-key="foreign_key_name"
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-7-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-7-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-7-2-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-7-2-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-7-2-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-7-2-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-7-2-1-7" /></td>
				</tr>
				<tr>
					<td>(8)</td>
					<td><s:text name="td5-1-7-2-1-8" /></td>
				</tr>
				<tr>
					<td>(9)</td>
					<td><s:text name="td5-1-7-2-1-9" /></td>
				</tr>
				<tr>
					<td>(10)</td>
					<td><s:text name="td5-1-7-2-1-10" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-7-2-3" /></p>
			<p><s:text name="p5-1-7-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;one-to-one name="person" class="Person"/&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;one-to-one name="employee" class="Employee" constrained="true"/&gt;</pre>
			<p><s:text name="p5-1-7-2-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="person" table="PERSON"&gt;
    &lt;id name="id" column="PERSON_ID"&gt;
        &lt;generator class="foreign"&gt;
            &lt;param name="property"&gt;employee&lt;/param&gt;
        &lt;/generator&gt;
    &lt;/id&gt;
    ...
    &lt;one-to-one name="employee"
        class="Employee"
        constrained="true"/&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p5-1-7-2-6" /></p>
		</div>
		<div>
			<h3 id="c5-1-8"><s:text name="title5-1-8" /></h3>
			<p><s:text name="p5-1-8-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Citizen</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Id</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">GeneratedValue</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Integer</span><span class="java_plain">&nbsp;id</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;firstname</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;lastname</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">NaturalId</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">ManyToOne</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">State</span><span class="java_plain">&nbsp;state</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">NaturalId</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">String</span><span class="java_plain">&nbsp;ssn</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>



<!--  --><br><span class="java_operator">//</span><span class="java_plain">and&nbsp;later&nbsp;on&nbsp;query</span>
<!--  --><br><span class="java_type">List</span><span class="java_plain">&nbsp;results&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;s</span><span class="java_separator">.</span><span class="java_plain">createCriteria</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_type">Citizen</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">.</span><span class="java_plain">add</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_type">Restrictions</span><span class="java_separator">.</span><span class="java_plain">naturalId</span><span class="java_separator">().</span><span class="java_plain">set</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_literal">"ssn"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_literal">"1234"</span><span class="java_plain">&nbsp;</span><span class="java_separator">).</span><span class="java_plain">set</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_literal">"state"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;ste&nbsp;</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">.</span><span class="java_plain">list</span><span class="java_separator">();</span></pre>
			<p><s:text name="p5-1-8-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;natural-id mutable="true|false"/&gt;
        &lt;property ... /&gt;
        &lt;many-to-one ... /&gt;
        ......
&lt;/natural-id&gt;</pre>
			<p><s:text name="p5-1-8-3" /></p>
			<p><s:text name="p5-1-8-4" /></p>
			<ul>
				<li><s:text name="li5-1-8-1-1" /></li>
			</ul>
		</div>
		<div>
			<h3 id="c5-1-9"><s:text name="title5-1-9" /></h3>
			<p><s:text name="p5-1-9-1" /></p>
			<p><s:text name="p5-1-9-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Any</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">&nbsp;metaColumn&nbsp;</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_plain">&nbsp;@</span><!-- <br/> --><span class="java_type">Column</span><!-- <br/> --><span class="java_separator">(</span><!-- <br/> --><span class="java_plain">&nbsp;name&nbsp;</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_plain">&nbsp;</span><!-- <br/> --><span class="java_literal">"property_type"</span><!-- <br/> --><span class="java_plain">&nbsp;</span><!-- <br/> --><span class="java_separator">),</span><!-- <br/> --><span class="java_plain">&nbsp;fetch</span><!-- <br/> --><span class="java_operator">=</span><!-- <br/> --><span class="java_type">FetchType</span><!-- <br/> --><span class="java_separator">.</span><!-- <br/> --><span class="java_plain">EAGER&nbsp;</span><!-- <br/> --><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">AnyMetaDef</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;idType&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"integer"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;metaType&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"string"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;metaValues&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MetaValue</span><span class="java_separator">(</span><span class="java_plain">&nbsp;value&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"S"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;targetEntity&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">StringProperty</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MetaValue</span><span class="java_separator">(</span><span class="java_plain">&nbsp;value&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"I"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;targetEntity&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">IntegerProperty</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">&nbsp;name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"property_id"</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Property</span><span class="java_plain">&nbsp;getMainProperty</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;mainProperty</span><span class="java_separator">;</span>
<!--  --><br><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-9-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_operator">//</span><!-- <br/> --><span class="java_plain">on&nbsp;a&nbsp;</span><!-- <br/> --><span class="java_keyword">package</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">AnyMetaDef</span><span class="java_separator">(</span><span class="java_plain">&nbsp;name</span><span class="java_operator">=</span><span class="java_literal">"property"</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;idType&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"integer"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;metaType&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"string"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;metaValues&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MetaValue</span><span class="java_separator">(</span><span class="java_plain">&nbsp;value&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"S"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;targetEntity&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">StringProperty</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_separator">),</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">MetaValue</span><span class="java_separator">(</span><span class="java_plain">&nbsp;value&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"I"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;targetEntity&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_type">IntegerProperty</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">package</span><span class="java_plain">&nbsp;org</span><span class="java_separator">.</span><span class="java_plain">hibernate</span><span class="java_separator">.</span><span class="java_plain">test</span><span class="java_separator">.</span><span class="java_plain">annotations</span><span class="java_separator">.</span><span class="java_plain">any</span><span class="java_separator">;</span>


<!--  --><br><span class="java_operator">//</span><span class="java_plain">in&nbsp;a&nbsp;</span><span class="java_keyword">class</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">Any</span><span class="java_separator">(</span><span class="java_plain">&nbsp;metaDef</span><span class="java_operator">=</span><span class="java_literal">"property"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;metaColumn&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;@</span><span class="java_type">Column</span><span class="java_separator">(</span><span class="java_plain">&nbsp;name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"property_type"</span><span class="java_plain">&nbsp;</span><span class="java_separator">),</span><span class="java_plain">&nbsp;fetch</span><span class="java_operator">=</span><span class="java_type">FetchType</span><span class="java_separator">.</span><span class="java_plain">EAGER&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;@</span><span class="java_type">JoinColumn</span><span class="java_separator">(</span><span class="java_plain">&nbsp;name&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;</span><span class="java_literal">"property_id"</span><span class="java_plain">&nbsp;</span><span class="java_separator">)</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Property</span><span class="java_plain">&nbsp;getMainProperty</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;mainProperty</span><span class="java_separator">;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span></pre>
			<p><s:text name="p5-1-9-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;any name="being" id-type="long" meta-type="string"&gt;
    &lt;meta-value value="TBL_ANIMAL" class="Animal"/&gt;
    &lt;meta-value value="TBL_HUMAN" class="Human"/&gt;
    &lt;meta-value value="TBL_ALIEN" class="Alien"/&gt;
    &lt;column name="table_name"/&gt;
    &lt;column name="id"/&gt;
&lt;/any&gt;</pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-9-1" /></p>
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;any
        name="propertyName"                                <span class="co" id="any1">(1)</span>
        id-type="idtypename"                               <span class="co" id="any2">(2)</span>
        meta-type="metatypename"                           <span class="co" id="any3">(3)</span>
        cascade="cascade_style"                            <span class="co" id="any4">(4)</span>
        access="field|property|ClassName"                  <span class="co" id="any5">(5)</span>
        optimistic-lock="true|false"                       <span class="co" id="any6">(6)</span>
&gt;
        &lt;meta-value ... /&gt;
        &lt;meta-value ... /&gt;
        .....
        &lt;column .... /&gt;
        &lt;column .... /&gt;
        .....
&lt;/any&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-9-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-9-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-9-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-9-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-9-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-9-1-6" /></td>
				</tr>
			</table>
		</div>
		<div>
			<h3 id="c5-1-10"><s:text name="title5-1-10" /></h3>
			<p><s:text name="p5-1-10-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;properties
        name="logicalName"                                 <span class="co" id="properties1">(1)</span>
        insert="true|false"                                <span class="co" id="properties2">(2)</span>
        update="true|false"                                <span class="co" id="properties3">(3)</span>
        optimistic-lock="true|false"                       <span class="co" id="properties4">(4)</span>
        unique="true|false"                                <span class="co" id="properties5">(5)</span>
&gt;

        &lt;property ...../&gt;
        &lt;many-to-one .... /&gt;
        ........
&lt;/properties&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-10-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-10-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-10-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-10-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-10-1-5" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-10-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="personNumber"/&gt;

    ...
    &lt;properties name="name"
            unique="true" update="false"&gt;
        &lt;property name="firstName"/&gt;
        &lt;property name="initial"/&gt;
        &lt;property name="lastName"/&gt;
    &lt;/properties&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p5-1-10-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="owner"
         class="Person" property-ref="name"&gt;
    &lt;column name="firstName"/&gt;
    &lt;column name="initial"/&gt;
    &lt;column name="lastName"/&gt;
&lt;/many-to-one&gt;</pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-10-1" /></p>
			    <pre xmlns="" class="">
@Entity
class Person {
   @Id Integer personNumber;
   String firstName;
   @Column(name="I")
   String initial;
   String lastName;
}

@Entity
class Home {
   @ManyToOne
   @JoinColumns({
      @JoinColumn(name="first_name", referencedColumnName="firstName"),
      @JoinColumn(name="init", referencedColumnName="I"),
      @JoinColumn(name="last_name", referencedColumnName="lastName"),
   })
   Person owner
}</pre>
			</div>
			<p><s:text name="p5-1-10-4" /></p>
		</div>
		<div>
			<h3 id="c5-1-11"><s:text name="title5-1-11" /></h3>
			<p><s:text name="p5-1-11-1" /></p>
		</div>
		<div>
			<h4 id="c5-1-11-1"><s:text name="title5-1-11-1" /></h4>
			<p><s:text name="p5-1-11-1-1" /></p>
		</div>
		<div>
			<h4 id="title5-1-11-1-1"><s:text name="title5-1-11-1" /></h4>
			<p><s:text name="p5-1-11-1-1-1" /></p>
			<ul>
				<li><s:text name="li5-1-11-1-1-1-1" /></li>
				<li><s:text name="li5-1-11-1-1-1-2" /></li>
			</ul>
			<p><s:text name="p5-1-11-1-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="XML">
<!-- XML : generated by JHighlight v1.0 (http://jhighlight.dev.java.net) -->
<span class="xml_plain"></span><br>
<span class="xml_processing_instruction">&lt;?xml&nbsp;version="1.0"?&gt;</span><span class="xml_plain"></span><br>
<span class="xml_tag_symbols">&lt;</span><span class="xml_plain">!</span><span class="xml_attribute_name">DOCTYPE</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">hibernate-mapping</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">PUBLIC</span><span class="xml_plain"></span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="xml_attribute_value">"-//Hibernate/Hibernate&nbsp;Mapping&nbsp;DTD&nbsp;3.0//EN"</span><span class="xml_plain"></span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="xml_attribute_value">"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd"</span><span class="xml_plain">&nbsp;[</span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;&lt;!</span><span class="xml_attribute_name">ENTITY</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">types</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">SYSTEM</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_value">"classpath://your/domain/types.xml"</span><span class="xml_tag_symbols">&gt;</span><span class="xml_plain"></span><br>
<span class="xml_plain">]&gt;</span><br>
<span class="xml_plain"></span><br>
<span class="xml_tag_symbols">&lt;</span><span class="xml_tag_name">hibernate-mapping</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">package</span><span class="xml_tag_symbols">=</span><span class="xml_attribute_value">"your.domain"</span><span class="xml_tag_symbols">&gt;</span><span class="xml_plain"></span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="xml_tag_symbols">&lt;</span><span class="xml_tag_name">class</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">name</span><span class="xml_tag_symbols">=</span><span class="xml_attribute_value">"MyEntity"</span><span class="xml_tag_symbols">&gt;</span><span class="xml_plain"></span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="xml_tag_symbols">&lt;</span><span class="xml_tag_name">id</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">name</span><span class="xml_tag_symbols">=</span><span class="xml_attribute_value">"id"</span><span class="xml_plain">&nbsp;</span><span class="xml_attribute_name">type</span><span class="xml_tag_symbols">=</span><span class="xml_attribute_value">"my-custom-id-type"</span><span class="xml_tag_symbols">&gt;</span><span class="xml_plain"></span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...</span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="xml_tag_symbols">&lt;/</span><span class="xml_tag_name">id</span><span class="xml_tag_symbols">&gt;</span><span class="xml_plain"></span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="xml_tag_symbols">&lt;</span><span class="xml_tag_name">class</span><span class="xml_tag_symbols">&gt;</span><span class="xml_plain"></span><br>
<span class="xml_plain">&nbsp;&nbsp;&nbsp;&nbsp;&amp;types;</span><br>
<span class="xml_tag_symbols">&lt;/</span><span class="xml_tag_name">hibernate-mapping</span><span class="xml_tag_symbols">&gt;</span><span class="xml_plain"></span><br>
<span class="xml_plain"></span><br>
</pre>
			<p><s:text name="p5-1-11-1-1-3" /></p>
		</div>
		<div>
			<h4 id="c5-1-11-2"><s:text name="title5-1-11-2" /></h4>
			<p><s:text name="p5-1-11-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping
         schema="schemaName"                               <span class="co" id="hm1">(1)</span>
         catalog="catalogName"                             <span class="co" id="hm2">(2)</span>
         default-cascade="cascade_style"                   <span class="co" id="hm3">(3)</span>
         default-access="field|property|ClassName"         <span class="co" id="hm4">(4)</span>
         default-lazy="true|false"                         <span class="co" id="hm5">(5)</span>
         auto-import="true|false"                          <span class="co" id="hm6">(6)</span>
         package="package.name"                            <span class="co" id="hm7">(7)</span>
 /&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-11-2-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-11-2-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-11-2-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-11-2-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-11-2-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-11-2-1-6" /></td>
				</tr>
				<tr>
					<td>(7)</td>
					<td><s:text name="td5-1-11-2-1-7" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-11-2-2" /></p>
			<p><s:text name="p5-1-11-2-3" /></p>
		</div>
		<div>
			<h4 id="c5-1-11-3"><s:text name="title5-1-11-3" /></h4>
			<p><s:text name="p5-1-11-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;key
        column="columnname"                                <span class="co" id="key1">(1)</span>
        on-delete="noaction|cascade"                       <span class="co" id="key2">(2)</span>
        property-ref="propertyName"                        <span class="co" id="key3">(3)</span>
        not-null="true|false"                              <span class="co" id="key4">(4)</span>
        update="true|false"                                <span class="co" id="key5">(5)</span>
        unique="true|false"                                <span class="co" id="key6">(6)</span>
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-11-3-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-11-3-1-2" /></td>
				</tr>
				<tr>
					<td>(3)</td>
					<td><s:text name="td5-1-11-3-1-3" /></td>
				</tr>
				<tr>
					<td>(4)</td>
					<td><s:text name="td5-1-11-3-1-4" /></td>
				</tr>
				<tr>
					<td>(5)</td>
					<td><s:text name="td5-1-11-3-1-5" /></td>
				</tr>
				<tr>
					<td>(6)</td>
					<td><s:text name="td5-1-11-3-1-6" /></td>
				</tr>
			</table>
			<p><s:text name="p5-1-11-3-2" /></p>
			<p><s:text name="p5-1-11-3-3" /></p>
		</div>
		<div>
			<h4 id="c5-1-11-4"><s:text name="title5-1-11-4" /></h4>
			<p><s:text name="p5-1-11-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;import class="java.lang.Object" rename="Universe"/&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;import
        class="ClassName"                                  <span class="co" id="import1">(1)</span>
        rename="ShortName"                                 <span class="co" id="import2">(2)</span>
/&gt;</pre>
			<table class="table table-bordered">
				<tr>
					<td>(1)</td>
					<td><s:text name="td5-1-11-4-1-1" /></td>
				</tr>
				<tr>
					<td>(2)</td>
					<td><s:text name="td5-1-11-4-1-2" /></td>
				</tr>
			</table>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-1-11-4-1" /></p>
			</div>
		</div>
		<div>
			<h4 id="c5-1-11-5"><s:text name="title5-1-11-5" /></h4>
			<p><s:text name="p5-1-11-5-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;column
        name="column_name"
        length="N"
        precision="N"
        scale="N"
        not-null="true|false"
        unique="true|false"
        unique-key="multicolumn_unique_key_name"
        index="index_name"
        sql-type="sql_type_name"
        check="SQL expression"
        default="SQL expression"
        read="SQL expression"
        write="SQL expression"/&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;formula&gt;SQL expression&lt;/formula&gt;</pre>
			<p><s:text name="p5-1-11-5-2" /></p>
			<p><s:text name="p5-1-11-5-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="homeAddress" class="Address"
        insert="false" update="false"&gt;
    &lt;column name="person_id" not-null="true" length="10"/&gt;
    &lt;formula&gt;'MAILING'&lt;/formula&gt;
&lt;/many-to-one&gt;</pre>
		</div>
		<div>
			<h2 id="c5-2"><s:text name="title5-2" /></h2>
		</div>
		<div>
			<h3 id="c5-2-1"><s:text name="title5-2-1" /></h3>
			<p><s:text name="p5-2-1-1" /></p>
			<p><s:text name="p5-2-1-2" /></p>
			<p><s:text name="p5-2-1-3" /></p>
			<p><s:text name="p5-2-1-4" /></p>
			<p><s:text name="p5-2-1-5" /></p>
			<p><s:text name="p5-2-1-6" /></p>
			<p><s:text name="p5-2-1-7" /></p>
		</div>
		<div>
			<h3 id="c5-2-2"><s:text name="title5-2-2" /></h3>
			<p><s:text name="p5-2-2-1" /></p>
			<dl>
				<dt><code>integer, long, short, float, double, character, byte, boolean, yes_no, true_false</code></dt>
				<dd><s:text name="dd5-2-2-1-1" /></dd>
				<dt><code>string</code></dt>
				<dd><s:text name="dd5-2-2-1-2" /></dd>
				<dt><code>date, time, timestamp</code></dt>
				<dd><s:text name="dd5-2-2-1-3" /></dd>
				<dt><code>calendar, calendar_date</code></dt>
				<dd><s:text name="dd5-2-2-1-4" /></dd>
				<dt><code>big_decimal, big_integer</code></dt>
				<dd><s:text name="dd5-2-2-1-5" /></dd>
				<dt><code>locale, timezone, currency</code></dt>
				<dd><s:text name="dd5-2-2-1-6" /></dd>
				<dt><code>class</code></dt>
				<dd><s:text name="dd5-2-2-1-7" /></dd>
				<dt><code>binary</code></dt>
				<dd><s:text name="dd5-2-2-1-8" /></dd>
				<dt><code>text</code></dt>
				<dd><s:text name="dd5-2-2-1-9" /></dd>
				<dt><code>image</code></dt>
				<dd><s:text name="dd5-2-2-1-10" /></dd>
				<dt><code>serializable</code></dt>
				<dd><s:text name="dd5-2-2-1-11" /></dd>
				<dt><code>clob, blob</code></dt>
				<dd><s:text name="dd5-2-2-1-12" /></dd>
				<dt><code>materialized_clob</code></dt>
				<dd><s:text name="dd5-2-2-1-13" /></dd>
				<dt><code>materialized_blob</code></dt>
				<dd><s:text name="dd5-2-2-1-14" /></dd>
				<dt><code>imm_date, imm_time, imm_timestamp, imm_calendar, imm_calendar_date, imm_serializable, imm_binary</code></dt>
				<dd><s:text name="dd5-2-2-1-15" /></dd>
			</dl>
			<p><s:text name="p5-2-2-2" /></p>
			<p><s:text name="p5-2-2-3" /></p>
		</div>
		<div>
			<h3 id="c5-2-3"><s:text name="title5-2-3" /></h3>
			<p><s:text name="p5-2-3-1" /></p>
			<p><s:text name="p5-2-3-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="twoStrings" type="org.hibernate.test.DoubleStringType"&gt;
    &lt;column name="first_string"/&gt;
    &lt;column name="second_string"/&gt;
&lt;/property&gt;</pre>
			<p><s:text name="p5-2-3-3" /></p>
			<p><s:text name="p5-2-3-4" /></p>
			<p><s:text name="p5-2-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="priority"&gt;
    &lt;type name="com.mycompany.usertypes.DefaultValueIntegerType"&gt;
        &lt;param name="default"&gt;0&lt;/param&gt;
    &lt;/type&gt;
&lt;/property&gt;</pre>
			<p><s:text name="p5-2-3-6" /></p>
			<p><s:text name="p5-2-3-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;typedef class="com.mycompany.usertypes.DefaultValueIntegerType" name="default_zero"&gt;
    &lt;param name="default"&gt;0&lt;/param&gt;
&lt;/typedef&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="priority" type="default_zero"/&gt;</pre>
			<p><s:text name="p5-2-3-8" /></p>
			<p><s:text name="p5-2-3-9" /></p>
		</div>
		<div>
			<h2 id="c5-3"><s:text name="title5-3" /></h2>
			<p><s:text name="p5-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Contract" table="Contracts"
        entity-name="CurrentContract"&gt;
    ...
    &lt;set name="history" inverse="true"
            order-by="effectiveEndDate desc"&gt;
        &lt;key column="currentContractId"/&gt;
        &lt;one-to-many entity-name="HistoricalContract"/&gt;
    &lt;/set&gt;
&lt;/class&gt;

&lt;class name="Contract" table="ContractHistory"
        entity-name="HistoricalContract"&gt;
    ...
    &lt;many-to-one name="currentContract"
            column="currentContractId"
            entity-name="CurrentContract"/&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p5-3-2" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-3-1" /></p>
			</div>
		</div>
		<div>
			<h2 id="c5-4"><s:text name="title5-4" /></h2>
			<p><s:text name="p5-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity @Table(name="`Line Item`")
class LineItem {
   @id @Column(name="`Item Id`") Integer id;
   @Column(name="`Item #`") int itemNumber
}

&lt;class name="LineItem" table="`Line Item`"&gt;
    &lt;id name="id" column="`Item Id`"/&gt;&lt;generator class="assigned"/&gt;&lt;/id&gt;
    &lt;property name="itemNumber" column="`Item #`"/&gt;
    ...
&lt;/class&gt;</pre>
		</div>
		<div>
			<h2 id="c5-5"><s:text name="title5-5" /></h2>
			<p><s:text name="p5-5-1" /></p>
			<p><s:text name="p5-5-2" /></p>
			<p><s:text name="p5-5-3" /></p>
			<p><s:text name="p5-5-4" /></p>
			<p><s:text name="p5-5-5" /></p>
			<p><s:text name="p5-5-6" /></p>
		</div>
		<div>
			<h2 id="c5-6"><s:text name="title5-6" /></h2>
			<p><s:text name="p5-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
class CreditCard {
   @Column(name="credit_card_num")
   @ColumnTransformer(
      read="decrypt(credit_card_num)", 
      write="encrypt(?)")
   public String getCreditCardNumber() { return creditCardNumber; }
   public void setCreditCardNumber(String number) { this.creditCardNumber = number; }
   private String creditCardNumber;
}</pre>
			<p><s:text name="p5-6-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="creditCardNumber"&gt;
        &lt;column 
          name="credit_card_num"
          read="decrypt(credit_card_num)"
          write="encrypt(?)"/&gt;
&lt;/property&gt;</pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-6-1" /></p>
			</div>
			<p><s:text name="p5-6-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
class User {
   @Type(type="com.acme.type.CreditCardType")
   @Columns( {
      @Column(name="credit_card_num"),
      @Column(name="exp_date") } )
   @ColumnTransformer(
      forColumn="credit_card_num", 
      read="decrypt(credit_card_num)", 
      write="encrypt(?)")
   public CreditCard getCreditCard() { return creditCard; }
   public void setCreditCard(CreditCard card) { this.creditCard = card; }
   private CreditCard creditCard;
}</pre>
			<p><s:text name="p5-6-4" /></p>
			<ul>
				<li><s:text name="li5-6-1-1" /></li>
				<li><s:text name="li5-6-1-2" /></li>
			</ul>
			<p><s:text name="p5-6-5" /></p>
		</div>
		<div>
			<h2 id="c5-7"><s:text name="title5-7" /></h2>
			<p><s:text name="p5-7-1" /></p>
			<p><s:text name="p5-7-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;
    ...
    &lt;database-object&gt;
        &lt;create&gt;CREATE TRIGGER my_trigger ...&lt;/create&gt;
        &lt;drop&gt;DROP TRIGGER my_trigger&lt;/drop&gt;
    &lt;/database-object&gt;
&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p5-7-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;
    ...
    &lt;database-object&gt;
        &lt;definition class="MyTriggerDefinition"/&gt;
    &lt;/database-object&gt;
&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p5-7-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;
    ...
    &lt;database-object&gt;
        &lt;definition class="MyTriggerDefinition"/&gt;
        &lt;dialect-scope name="org.hibernate.dialect.Oracle9iDialect"/&gt;
        &lt;dialect-scope name="org.hibernate.dialect.Oracle10gDialect"/&gt;
    &lt;/database-object&gt;
&lt;/hibernate-mapping&gt;</pre>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc5-7-1" /></p>
			</div>
		</div>
	</s:i18n>
</div>