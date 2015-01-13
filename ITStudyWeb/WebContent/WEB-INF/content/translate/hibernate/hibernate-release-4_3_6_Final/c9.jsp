<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c9">
		<div>
			<h1 id="c9"><s:text name="title9" /></h1>
			<p><s:text name="p9-1" /></p>
		</div>
		<div>
			<h2 id="c9-1"><s:text name="title9-1" /></h2>
			<p><s:text name="p9-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Person {
    private java.util.Date birthday;
    private Name name;
    private String key;
    public String getKey() {
        return key;
    }
    private void setKey(String key) {
        this.key=key;
    }
    public java.util.Date getBirthday() {
        return birthday;
    }
    public void setBirthday(java.util.Date birthday) {
        this.birthday = birthday;
    }
    public Name getName() {
        return name;
    }
    public void setName(Name name) {
        this.name = name;
    }
    ......
    ......
}</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Name {
    char initial;
    String first;
    String last;
    public String getFirst() {
        return first;
    }
    void setFirst(String first) {
        this.first = first;
    }
    public String getLast() {
        return last;
    }
    void setLast(String last) {
        this.last = last;
    }
    public char getInitial() {
        return initial;
    }
    void setInitial(char initial) {
        this.initial = initial;
    }
}</pre>
			<p><s:text name="p9-1-2" /></p>
			<p><s:text name="p9-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="eg.Person" table="person"&gt;
    &lt;id name="Key" column="pid" type="string"&gt;
        &lt;generator class="uuid"/&gt;
    &lt;/id&gt;
    &lt;property name="birthday" type="date"/&gt;
    &lt;component name="Name" class="eg.Name"&gt; &lt;!-- class attribute optional --&gt;
        &lt;property name="initial"/&gt;
        &lt;property name="first"/&gt;
        &lt;property name="last"/&gt;
    &lt;/component&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p9-1-4" /></p>
			<p><s:text name="p9-1-5" /></p>
			<p><s:text name="p9-1-6" /></p>
			<p><s:text name="p9-1-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="eg.Person" table="person"&gt;
    &lt;id name="Key" column="pid" type="string"&gt;
        &lt;generator class="uuid"/&gt;
    &lt;/id&gt;
    &lt;property name="birthday" type="date"/&gt;
    &lt;component name="Name" class="eg.Name" unique="true"&gt;
        &lt;parent name="namedPerson"/&gt; &lt;!-- reference back to the Person --&gt;
        &lt;property name="initial"/&gt;
        &lt;property name="first"/&gt;
        &lt;property name="last"/&gt;
    &lt;/component&gt;
&lt;/class&gt;</pre>
		</div>
		<div>
			<h2 id="c9-2"><s:text name="title9-2" /></h2>
			<p><s:text name="p9-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="someNames" table="some_names" lazy="true"&gt;
    &lt;key column="id"/&gt;
    &lt;composite-element class="eg.Name"&gt; &lt;!-- class attribute required --&gt;
        &lt;property name="initial"/&gt;
        &lt;property name="first"/&gt;
        &lt;property name="last"/&gt;
    &lt;/composite-element&gt;
&lt;/set&gt;</pre>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic9-2-1" /></p>
			</div>
			<p><s:text name="p9-2-2" /></p>
			<p><s:text name="p9-2-3" /></p>
			<p><s:text name="p9-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="eg.Order" .... &gt;
    ....
    &lt;set name="purchasedItems" table="purchase_items" lazy="true"&gt;
        &lt;key column="order_id"&gt;
        &lt;composite-element class="eg.Purchase"&gt;
            &lt;property name="purchaseDate"/&gt;
            &lt;property name="price"/&gt;
            &lt;property name="quantity"/&gt;
            &lt;many-to-one name="item" class="eg.Item"/&gt; &lt;!-- class attribute is optional --&gt;
        &lt;/composite-element&gt;
    &lt;/set&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p9-2-5" /></p>
			<p><s:text name="p9-2-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="eg.Order" .... &gt;
    ....
    &lt;set name="purchasedItems" table="purchase_items" lazy="true"&gt;
        &lt;key column="order_id"&gt;
        &lt;composite-element class="eg.OrderLine"&gt;
            &lt;many-to-one name="purchaseDetails class="eg.Purchase"/&gt;
            &lt;many-to-one name="item" class="eg.Item"/&gt;
        &lt;/composite-element&gt;
    &lt;/set&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p9-2-7" /></p>
		</div>
		<div>
			<h2 id="c9-3"><s:text name="title9-3" /></h2>
			<p><s:text name="p9-3-1" /></p>
		</div>
		<div>
			<h2 id="c9-4"><s:text name="title9-4" /></h2>
			<p><s:text name="p9-4-1" /></p>
			<ul>
				<li><s:text name="li9-4-1-1" /></li>
				<li><s:text name="li9-4-1-2" /></li>
			</ul>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc9-4-1" /></p>
			</div>
			<p><s:text name="p9-4-2" /></p>
			<p><s:text name="p9-4-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="OrderLine"&gt;

    &lt;composite-id name="id" class="OrderLineId"&gt;
        &lt;key-property name="lineId"/&gt;
        &lt;key-property name="orderId"/&gt;
        &lt;key-property name="customerId"/&gt;
    &lt;/composite-id&gt;

    &lt;property name="name"/&gt;

    &lt;many-to-one name="order" class="Order"
            insert="false" update="false"&gt;
        &lt;column name="orderId"/&gt;
        &lt;column name="customerId"/&gt;
    &lt;/many-to-one&gt;
    ....

&lt;/class&gt;</pre>
			<p><s:text name="p9-4-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="orderLine" class="OrderLine"&gt;
&lt;!-- the "class" attribute is optional, as usual --&gt;
    &lt;column name="lineId"/&gt;
    &lt;column name="orderId"/&gt;
    &lt;column name="customerId"/&gt;
&lt;/many-to-one&gt;</pre>
			<div class="alert alert-success" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-eye-open"></span> <s:text name="tip" /></h5>
				<p><s:text name="tc9-4-1" /></p>
			</div>
			<p><s:text name="p9-4-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="undeliveredOrderLines"&gt;
    &lt;key column name="warehouseId"/&gt;
    &lt;many-to-many class="OrderLine"&gt;
        &lt;column name="lineId"/&gt;
        &lt;column name="orderId"/&gt;
        &lt;column name="customerId"/&gt;
    &lt;/many-to-many&gt;
&lt;/set&gt;</pre>
			<p><s:text name="p9-4-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="orderLines" inverse="true"&gt;
    &lt;key&gt;
        &lt;column name="orderId"/&gt;
        &lt;column name="customerId"/&gt;
    &lt;/key&gt;
    &lt;one-to-many class="OrderLine"/&gt;
&lt;/set&gt;</pre>
			<p><s:text name="p9-4-7" /></p>
			<p><s:text name="p9-4-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="OrderLine"&gt;
    ....
    ....
    &lt;list name="deliveryAttempts"&gt;
        &lt;key&gt;   &lt;!-- a collection inherits the composite key type --&gt;
            &lt;column name="lineId"/&gt;
            &lt;column name="orderId"/&gt;
            &lt;column name="customerId"/&gt;
        &lt;/key&gt;
        &lt;list-index column="attemptId" base="1"/&gt;
        &lt;composite-element class="DeliveryAttempt"&gt;
            ...
        &lt;/composite-element&gt;
    &lt;/set&gt;
&lt;/class&gt;</pre>
		</div>
		<div>
			<h2 id="c9-5"><s:text name="title9-5" /></h2>
			<p><s:text name="p9-5-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;dynamic-component name="userAttributes"&gt;
    &lt;property name="foo" column="FOO" type="string"/&gt;
    &lt;property name="bar" column="BAR" type="integer"/&gt;
    &lt;many-to-one name="baz" class="Baz" column="BAZ_ID"/&gt;
&lt;/dynamic-component&gt;</pre>
			<p><s:text name="p9-5-2" /></p>
		</div>
	</s:i18n>
</div>