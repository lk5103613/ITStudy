<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c8">
		<div>
			<h1 id="c8"><s:text name="title8" /></h1>
		</div>
		<div>
			<h2 id="c8-1"><s:text name="title8-1" /></h2>
			<p><s:text name="p8-1-1" /></p>
			<p><s:text name="p8-1-2" /></p>
			<p><s:text name="p8-1-3" /></p>
		</div>
		<div>
			<h2 id="c8-2"><s:text name="title8-2" /></h2>
		</div>
		<div>
			<h3 id="c8-2-1"><s:text name="title8-2-1" /></h3>
			<p><s:text name="p8-2-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;many-to-one name="address" 
        column="addressId"
        not-null="true"/&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key, addressId bigint not null )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h3 id="c8-2-2"><s:text name="title8-2-2" /></h3>
			<p><s:text name="p8-2-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;many-to-one name="address" 
        column="addressId" 
        unique="true"
        not-null="true"/&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key, addressId bigint not null unique )
create table Address ( addressId bigint not null primary key )
        </pre>
			<p><s:text name="p8-2-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="foreign"&gt;
            &lt;param name="property"&gt;person&lt;/param&gt;
        &lt;/generator&gt;
    &lt;/id&gt;
    &lt;one-to-one name="person" constrained="true"/&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table Address ( personId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h3 id="c8-2-3"><s:text name="title8-2-3" /></h3>
			<p><s:text name="p8-2-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;set name="addresses"&gt;
        &lt;key column="personId" 
            not-null="true"/&gt;
        &lt;one-to-many class="Address"/&gt;
    &lt;/set&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table Address ( addressId bigint not null primary key, personId bigint not null )
        </pre>
			<p><s:text name="p8-2-3-2" /></p>
		</div>
		<div>
			<h2 id="c8-3"><s:text name="title8-3" /></h2>
		</div>
		<div>
			<h3 id="c8-3-1"><s:text name="title8-3-1" /></h3>
			<p><s:text name="p8-3-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;set name="addresses" table="PersonAddress"&gt;
        &lt;key column="personId"/&gt;
        &lt;many-to-many column="addressId"
            unique="true"
            class="Address"/&gt;
    &lt;/set&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table PersonAddress ( personId bigint not null, addressId bigint not null primary key )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h3 id="c8-3-2"><s:text name="title8-3-2" /></h3>
			<p><s:text name="p8-3-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;join table="PersonAddress" 
        optional="true"&gt;
        &lt;key column="personId" unique="true"/&gt;
        &lt;many-to-one name="address"
            column="addressId" 
            not-null="true"/&gt;
    &lt;/join&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table PersonAddress ( personId bigint not null primary key, addressId bigint not null )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h3 id="c8-3-3"><s:text name="title8-3-3" /></h3>
			<p><s:text name="p8-3-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;join table="PersonAddress" 
        optional="true"&gt;
        &lt;key column="personId" 
            unique="true"/&gt;
        &lt;many-to-one name="address"
            column="addressId" 
            not-null="true"
            unique="true"/&gt;
    &lt;/join&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table PersonAddress ( personId bigint not null primary key, addressId bigint not null unique )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h3 id="c8-3-4"><s:text name="title8-3-4" /></h3>
			<p><s:text name="p8-3-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;set name="addresses" table="PersonAddress"&gt;
        &lt;key column="personId"/&gt;
        &lt;many-to-many column="addressId"
            class="Address"/&gt;
    &lt;/set&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table PersonAddress ( personId bigint not null, addressId bigint not null, primary key (personId, addressId) )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h2 id="c8-4"><s:text name="title8-4" /></h2>
		</div>
		<div>
			<h3 id="c8-4-1"><s:text name="title8-4-1" /></h3>
			<p><s:text name="p8-4-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;many-to-one name="address" 
        column="addressId"
        not-null="true"/&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;set name="people" inverse="true"&gt;
        &lt;key column="addressId"/&gt;
        &lt;one-to-many class="Person"/&gt;
    &lt;/set&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key, addressId bigint not null )
create table Address ( addressId bigint not null primary key )
        </pre>
			<p><s:text name="p8-4-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
   &lt;id name="id"/&gt;
   ...
   &lt;many-to-one name="address"
      column="addressId"
      not-null="true"
      insert="false"
      update="false"/&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
   &lt;id name="id"/&gt;
   ...
   &lt;list name="people"&gt;
      &lt;key column="addressId" not-null="true"/&gt;
      &lt;list-index column="peopleIdx"/&gt;
      &lt;one-to-many class="Person"/&gt;
   &lt;/list&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p8-4-1-3" /></p>
		</div>
		<div>
			<h3 id="c8-4-2"><s:text name="title8-4-2" /></h3>
			<p><s:text name="p8-4-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;many-to-one name="address" 
        column="addressId" 
        unique="true"
        not-null="true"/&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
   &lt;one-to-one name="person" 
        property-ref="address"/&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key, addressId bigint not null unique )
create table Address ( addressId bigint not null primary key )
        </pre>
			<p><s:text name="p8-4-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;one-to-one name="address"/&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="foreign"&gt;
            &lt;param name="property"&gt;person&lt;/param&gt;
        &lt;/generator&gt;
    &lt;/id&gt;
    &lt;one-to-one name="person" 
        constrained="true"/&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table Address ( personId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h2 id="c8-5"><s:text name="title8-5" /></h2>
		</div>
		<div>
			<h3 id="c8-5-1"><s:text name="title8-5-1" /></h3>
			<p><s:text name="p8-5-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;set name="addresses" 
        table="PersonAddress"&gt;
        &lt;key column="personId"/&gt;
        &lt;many-to-many column="addressId"
            unique="true"
            class="Address"/&gt;
    &lt;/set&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;join table="PersonAddress" 
        inverse="true" 
        optional="true"&gt;
        &lt;key column="addressId"/&gt;
        &lt;many-to-one name="person"
            column="personId"
            not-null="true"/&gt;
    &lt;/join&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table PersonAddress ( personId bigint not null, addressId bigint not null primary key )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h3 id="c8-5-2"><s:text name="title8-5-2" /></h3>
			<p><s:text name="p8-5-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;join table="PersonAddress" 
        optional="true"&gt;
        &lt;key column="personId" 
            unique="true"/&gt;
        &lt;many-to-one name="address"
            column="addressId" 
            not-null="true"
            unique="true"/&gt;
    &lt;/join&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;join table="PersonAddress" 
        optional="true"
        inverse="true"&gt;
        &lt;key column="addressId" 
            unique="true"/&gt;
        &lt;many-to-one name="person"
            column="personId" 
            not-null="true"
            unique="true"/&gt;
    &lt;/join&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table PersonAddress ( personId bigint not null primary key, addressId bigint not null unique )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h3 id="c8-5-3"><s:text name="title8-5-3" /></h3>
			<p><s:text name="p8-5-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="id" column="personId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;set name="addresses" table="PersonAddress"&gt;
        &lt;key column="personId"/&gt;
        &lt;many-to-many column="addressId"
            class="Address"/&gt;
    &lt;/set&gt;
&lt;/class&gt;

&lt;class name="Address"&gt;
    &lt;id name="id" column="addressId"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;set name="people" inverse="true" table="PersonAddress"&gt;
        &lt;key column="addressId"/&gt;
        &lt;many-to-many column="personId"
            class="Person"/&gt;
    &lt;/set&gt;
&lt;/class&gt;</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table Person ( personId bigint not null primary key )
create table PersonAddress ( personId bigint not null, addressId bigint not null, primary key (personId, addressId) )
create table Address ( addressId bigint not null primary key )
        </pre>
		</div>
		<div>
			<h2 id="c8-6"><s:text name="title8-6" /></h2>
			<p><s:text name="p8-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;properties name="currentAccountKey"&gt;
    &lt;property name="accountNumber" type="string" not-null="true"/&gt;
    &lt;property name="currentAccount" type="boolean"&gt;
        &lt;formula&gt;case when effectiveEndDate is null then 1 else 0 end&lt;/formula&gt;
    &lt;/property&gt;
&lt;/properties&gt;
&lt;property name="effectiveEndDate" type="date"/&gt;
&lt;property name="effectiveStateDate" type="date" not-null="true"/&gt;</pre>
			<p><s:text name="p8-6-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="currentAccountInfo"
        property-ref="currentAccountKey"
        class="AccountInfo"&gt;
    &lt;column name="accountNumber"/&gt;
    &lt;formula&gt;'1'&lt;/formula&gt;
&lt;/many-to-one&gt;</pre>
			<p><s:text name="p8-6-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;join&gt;
    &lt;key column="employeeId"/&gt;
    &lt;subselect&gt;
        select employeeId, orgId 
        from Employments 
        group by orgId 
        having startDate = max(startDate)
    &lt;/subselect&gt;
    &lt;many-to-one name="mostRecentEmployer" 
            class="Organization" 
            column="orgId"/&gt;
&lt;/join&gt;</pre>
			<p><s:text name="p8-6-4" /></p>
		</div>
	</s:i18n>
</div>