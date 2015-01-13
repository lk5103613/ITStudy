<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c25">
		<div>
			<h1 id="c25"><s:text name="title25" /></h1>
			<p><s:text name="p25-1" /></p>
		</div>
		<div>
			<h2 id="c25-1"><s:text name="title25-1" /></h2>
			<p><s:text name="p25-1-1" /></p>
			<img src="http://docs.jboss.org/hibernate/orm/4.3/manual/en-US/html_single/images/EmployerEmployee.png" align="middle">
			<p><s:text name="p25-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;
        
    &lt;class name="Employer" table="employers"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"&gt;
                &lt;param name="sequence"&gt;employer_id_seq&lt;/param&gt;
            &lt;/generator&gt;
        &lt;/id&gt;
        &lt;property name="name"/&gt;
    &lt;/class&gt;

    &lt;class name="Employment" table="employment_periods"&gt;

        &lt;id name="id"&gt;
            &lt;generator class="sequence"&gt;
                &lt;param name="sequence"&gt;employment_id_seq&lt;/param&gt;
            &lt;/generator&gt;
        &lt;/id&gt;
        &lt;property name="startDate" column="start_date"/&gt;
        &lt;property name="endDate" column="end_date"/&gt;

        &lt;component name="hourlyRate" class="MonetaryAmount"&gt;
            &lt;property name="amount"&gt;
                &lt;column name="hourly_rate" sql-type="NUMERIC(12, 2)"/&gt;
            &lt;/property&gt;
            &lt;property name="currency" length="12"/&gt;
        &lt;/component&gt;

        &lt;many-to-one name="employer" column="employer_id" not-null="true"/&gt;
        &lt;many-to-one name="employee" column="employee_id" not-null="true"/&gt;

    &lt;/class&gt;

    &lt;class name="Employee" table="employees"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="sequence"&gt;
                &lt;param name="sequence"&gt;employee_id_seq&lt;/param&gt;
            &lt;/generator&gt;
        &lt;/id&gt;
        &lt;property name="taxfileNumber"/&gt;
        &lt;component name="name" class="Name"&gt;
            &lt;property name="firstName"/&gt;
            &lt;property name="initial"/&gt;
            &lt;property name="lastName"/&gt;
        &lt;/component&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p25-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table employers (
    id BIGINT not null, 
    name VARCHAR(255), 
    primary key (id)
)

create table employment_periods (
    id BIGINT not null,
    hourly_rate NUMERIC(12, 2),
    currency VARCHAR(12), 
    employee_id BIGINT not null, 
    employer_id BIGINT not null, 
    end_date TIMESTAMP, 
    start_date TIMESTAMP, 
    primary key (id)
)

create table employees (
    id BIGINT not null, 
    firstName VARCHAR(255), 
    initial CHAR(1), 
    lastName VARCHAR(255), 
    taxfileNumber VARCHAR(255), 
    primary key (id)
)

alter table employment_periods 
    add constraint employment_periodsFK0 foreign key (employer_id) references employers
alter table employment_periods 
    add constraint employment_periodsFK1 foreign key (employee_id) references employees
create sequence employee_id_seq
create sequence employment_id_seq
create sequence employer_id_seq</pre>
		</div>
		<div>
			<h2 id="c25-2"><s:text name="title25-2" /></h2>
			<p><s:text name="p25-2-1" /></p>
			<img src="http://docs.jboss.org/hibernate/orm/4.3/manual/en-US/html_single/images/AuthorWork.png" align="middle">
			<p><s:text name="p25-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;

    &lt;class name="Work" table="works" discriminator-value="W"&gt;

        &lt;id name="id" column="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;discriminator column="type" type="character"/&gt;

        &lt;property name="title"/&gt;
        &lt;set name="authors" table="author_work"&gt;
            &lt;key column name="work_id"/&gt;
            &lt;many-to-many class="Author" column name="author_id"/&gt;
        &lt;/set&gt;

        &lt;subclass name="Book" discriminator-value="B"&gt;
            &lt;property name="text"/&gt;
        &lt;/subclass&gt;

        &lt;subclass name="Song" discriminator-value="S"&gt;
            &lt;property name="tempo"/&gt;
            &lt;property name="genre"/&gt;
        &lt;/subclass&gt;

    &lt;/class&gt;

    &lt;class name="Author" table="authors"&gt;

        &lt;id name="id" column="id"&gt;
            &lt;!-- The Author must have the same identifier as the Person --&gt;
            &lt;generator class="assigned"/&gt; 
        &lt;/id&gt;

        &lt;property name="alias"/&gt;
        &lt;one-to-one name="person" constrained="true"/&gt;

        &lt;set name="works" table="author_work" inverse="true"&gt;
            &lt;key column="author_id"/&gt;
            &lt;many-to-many class="Work" column="work_id"/&gt;
        &lt;/set&gt;

    &lt;/class&gt;

    &lt;class name="Person" table="persons"&gt;
        &lt;id name="id" column="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="name"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p25-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table works (
    id BIGINT not null generated by default as identity, 
    tempo FLOAT, 
    genre VARCHAR(255), 
    text INTEGER, 
    title VARCHAR(255), 
    type CHAR(1) not null, 
    primary key (id)
)

create table author_work (
    author_id BIGINT not null, 
    work_id BIGINT not null, 
    primary key (work_id, author_id)
)

create table authors (
    id BIGINT not null generated by default as identity, 
    alias VARCHAR(255), 
    primary key (id)
)

create table persons (
    id BIGINT not null generated by default as identity, 
    name VARCHAR(255), 
    primary key (id)
)

alter table authors 
    add constraint authorsFK0 foreign key (id) references persons
alter table author_work 
    add constraint author_workFK0 foreign key (author_id) references authors
alter table author_work
    add constraint author_workFK1 foreign key (work_id) references works</pre>
		</div>
		<div>
			<h2 id="c25-3"><s:text name="title25-3" /></h2>
			<p><s:text name="p25-3-1" /></p>
			<img src="http://docs.jboss.org/hibernate/orm/4.3/manual/en-US/html_single/images/CustomerOrderProduct.png" align="middle">
			<p><s:text name="p25-3-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;

    &lt;class name="Customer" table="customers"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="name"/&gt;
        &lt;set name="orders" inverse="true"&gt;
            &lt;key column="customer_id"/&gt;
            &lt;one-to-many class="Order"/&gt;
        &lt;/set&gt;
    &lt;/class&gt;

    &lt;class name="Order" table="orders"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="date"/&gt;
        &lt;many-to-one name="customer" column="customer_id"/&gt;
        &lt;list name="lineItems" table="line_items"&gt;
            &lt;key column="order_id"/&gt;
            &lt;list-index column="line_number"/&gt;
            &lt;composite-element class="LineItem"&gt;
                &lt;property name="quantity"/&gt;
                &lt;many-to-one name="product" column="product_id"/&gt;
            &lt;/composite-element&gt;
        &lt;/list&gt;
    &lt;/class&gt;

    &lt;class name="Product" table="products"&gt;
        &lt;id name="id"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="serialNumber"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p25-3-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
create table customers (
    id BIGINT not null generated by default as identity, 
    name VARCHAR(255), 
    primary key (id)
)

create table orders (
    id BIGINT not null generated by default as identity, 
    customer_id BIGINT, 
    date TIMESTAMP, 
    primary key (id)
)

create table line_items (
    line_number INTEGER not null, 
    order_id BIGINT not null, 
    product_id BIGINT, 
    quantity INTEGER, 
    primary key (order_id, line_number)
)

create table products (
    id BIGINT not null generated by default as identity, 
    serialNumber VARCHAR(255), 
    primary key (id)
)

alter table orders 
    add constraint ordersFK0 foreign key (customer_id) references customers
alter table line_items
    add constraint line_itemsFK0 foreign key (product_id) references products
alter table line_items
    add constraint line_itemsFK1 foreign key (order_id) references orders</pre>
		</div>
		<div>
			<h2 id="c25-4"><s:text name="title25-4" /></h2>
			<p><s:text name="p25-4-1" /></p>
		</div>
		<div>
			<h3 id="c25-4-1"><s:text name="title25-4-1" /></h3>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    &lt;id name="name"/&gt;
    &lt;one-to-one name="address" 
            cascade="all"&gt;
        &lt;formula&gt;name&lt;/formula&gt;
        &lt;formula&gt;'HOME'&lt;/formula&gt;
    &lt;/one-to-one&gt;
    &lt;one-to-one name="mailingAddress" 
            cascade="all"&gt;
        &lt;formula&gt;name&lt;/formula&gt;
        &lt;formula&gt;'MAILING'&lt;/formula&gt;
    &lt;/one-to-one&gt;
&lt;/class&gt;

&lt;class name="Address" batch-size="2" 
        check="addressType in ('MAILING', 'HOME', 'BUSINESS')"&gt;
    &lt;composite-id&gt;
        &lt;key-many-to-one name="person" 
                column="personName"/&gt;
        &lt;key-property name="type" 
                column="addressType"/&gt;
    &lt;/composite-id&gt;
    &lt;property name="street" type="text"/&gt;
    &lt;property name="state"/&gt;
    &lt;property name="zip"/&gt;
&lt;/class&gt;</pre>
		</div>
		<div>
			<h3 id="c25-4-2"><s:text name="title25-4-2" /></h3>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Customer"&gt;

    &lt;id name="customerId"
        length="10"&gt;
        &lt;generator class="assigned"/&gt;
    &lt;/id&gt;

    &lt;property name="name" not-null="true" length="100"/&gt;
    &lt;property name="address" not-null="true" length="200"/&gt;

    &lt;list name="orders"
            inverse="true"
            cascade="save-update"&gt;
        &lt;key column="customerId"/&gt;
        &lt;index column="orderNumber"/&gt;
        &lt;one-to-many class="Order"/&gt;
    &lt;/list&gt;

&lt;/class&gt;

&lt;class name="Order" table="CustomerOrder" lazy="true"&gt;
    &lt;synchronize table="LineItem"/&gt;
    &lt;synchronize table="Product"/&gt;
    
    &lt;composite-id name="id" 
            class="Order$Id"&gt;
        &lt;key-property name="customerId" length="10"/&gt;
        &lt;key-property name="orderNumber"/&gt;
    &lt;/composite-id&gt;
    
    &lt;property name="orderDate" 
            type="calendar_date"
            not-null="true"/&gt;
    
    &lt;property name="total"&gt;
        &lt;formula&gt;
            ( select sum(li.quantity*p.price) 
            from LineItem li, Product p 
            where li.productId = p.productId 
                and li.customerId = customerId 
                and li.orderNumber = orderNumber )
        &lt;/formula&gt;
    &lt;/property&gt;
    
    &lt;many-to-one name="customer"
            column="customerId"
            insert="false"
            update="false" 
            not-null="true"/&gt;
        
    &lt;bag name="lineItems"
            fetch="join" 
            inverse="true"
            cascade="save-update"&gt;
        &lt;key&gt;
            &lt;column name="customerId"/&gt;
            &lt;column name="orderNumber"/&gt;
        &lt;/key&gt;
        &lt;one-to-many class="LineItem"/&gt;
    &lt;/bag&gt;
    
&lt;/class&gt;
    
&lt;class name="LineItem"&gt;
    
    &lt;composite-id name="id" 
            class="LineItem$Id"&gt;
        &lt;key-property name="customerId" length="10"/&gt;
        &lt;key-property name="orderNumber"/&gt;
        &lt;key-property name="productId" length="10"/&gt;
    &lt;/composite-id&gt;
    
    &lt;property name="quantity"/&gt;
    
    &lt;many-to-one name="order"
            insert="false"
            update="false" 
            not-null="true"&gt;
        &lt;column name="customerId"/&gt;
        &lt;column name="orderNumber"/&gt;
    &lt;/many-to-one&gt;
    
    &lt;many-to-one name="product"
            insert="false"
            update="false" 
            not-null="true"
            column="productId"/&gt;
        
&lt;/class&gt;

&lt;class name="Product"&gt;
    &lt;synchronize table="LineItem"/&gt;

    &lt;id name="productId"
        length="10"&gt;
        &lt;generator class="assigned"/&gt;
    &lt;/id&gt;
    
    &lt;property name="description" 
        not-null="true" 
        length="200"/&gt;
    &lt;property name="price" length="3"/&gt;
    &lt;property name="numberAvailable"/&gt;
    
    &lt;property name="numberOrdered"&gt;
        &lt;formula&gt;
            ( select sum(li.quantity) 
            from LineItem li 
            where li.productId = productId )
        &lt;/formula&gt;
    &lt;/property&gt;
    
&lt;/class&gt;</pre>
		</div>
		<div>
			<h3 id="c25-4-3"><s:text name="title25-4-3" /></h3>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="User" table="`User`"&gt;
    &lt;composite-id&gt;
        &lt;key-property name="name"/&gt;
        &lt;key-property name="org"/&gt;
    &lt;/composite-id&gt;
    &lt;set name="groups" table="UserGroup"&gt;
        &lt;key&gt;
            &lt;column name="userName"/&gt;
            &lt;column name="org"/&gt;
        &lt;/key&gt;
        &lt;many-to-many class="Group"&gt;
            &lt;column name="groupName"/&gt;
            &lt;formula&gt;org&lt;/formula&gt;
        &lt;/many-to-many&gt;
    &lt;/set&gt;
&lt;/class&gt;
    
&lt;class name="Group" table="`Group`"&gt;
    &lt;composite-id&gt;
        &lt;key-property name="name"/&gt;
        &lt;key-property name="org"/&gt;
    &lt;/composite-id&gt;
    &lt;property name="description"/&gt;
    &lt;set name="users" table="UserGroup" inverse="true"&gt;
        &lt;key&gt;
            &lt;column name="groupName"/&gt;
            &lt;column name="org"/&gt;
        &lt;/key&gt;
        &lt;many-to-many class="User"&gt;
            &lt;column name="userName"/&gt;
            &lt;formula&gt;org&lt;/formula&gt;
        &lt;/many-to-many&gt;
    &lt;/set&gt;
&lt;/class&gt;
</pre>
		</div>
		<div>
			<h3 id="c25-4-4"><s:text name="title25-4-4" /></h3>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"
    discriminator-value="P"&gt;
    
    &lt;id name="id" 
        column="person_id" 
        unsaved-value="0"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    
            
    &lt;discriminator 
        type="character"&gt;
        &lt;formula&gt;
            case 
                when title is not null then 'E' 
                when salesperson is not null then 'C' 
                else 'P' 
            end
        &lt;/formula&gt;
    &lt;/discriminator&gt;

    &lt;property name="name" 
        not-null="true"
        length="80"/&gt;
        
    &lt;property name="sex" 
        not-null="true"
        update="false"/&gt;
    
    &lt;component name="address"&gt;
        &lt;property name="address"/&gt;
        &lt;property name="zip"/&gt;
        &lt;property name="country"/&gt;
    &lt;/component&gt;
    
    &lt;subclass name="Employee" 
        discriminator-value="E"&gt;
            &lt;property name="title"
                length="20"/&gt;
            &lt;property name="salary"/&gt;
            &lt;many-to-one name="manager"/&gt;
    &lt;/subclass&gt;
    
    &lt;subclass name="Customer" 
        discriminator-value="C"&gt;
            &lt;property name="comments"/&gt;
            &lt;many-to-one name="salesperson"/&gt;
    &lt;/subclass&gt;
    
&lt;/class&gt;</pre>
		</div>
		<div>
			<h3 id="c25-4-5"><s:text name="title25-4-5" /></h3>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person"&gt;
    
    &lt;id name="id"&gt;
        &lt;generator class="hilo"/&gt;
    &lt;/id&gt;
    
    &lt;property name="name" length="100"/&gt;
    
    &lt;one-to-one name="address" 
        property-ref="person"
        cascade="all"
        fetch="join"/&gt;
    
    &lt;set name="accounts" 
        inverse="true"&gt;
        &lt;key column="userId"
            property-ref="userId"/&gt;
        &lt;one-to-many class="Account"/&gt;
    &lt;/set&gt;
    
    &lt;property name="userId" length="8"/&gt;

&lt;/class&gt;

&lt;class name="Address"&gt;

    &lt;id name="id"&gt;
        &lt;generator class="hilo"/&gt;
    &lt;/id&gt;

    &lt;property name="address" length="300"/&gt;
    &lt;property name="zip" length="5"/&gt;
    &lt;property name="country" length="25"/&gt;
    &lt;many-to-one name="person" unique="true" not-null="true"/&gt;

&lt;/class&gt;

&lt;class name="Account"&gt;
    &lt;id name="accountId" length="32"&gt;
        &lt;generator class="uuid"/&gt;
    &lt;/id&gt;
    
    &lt;many-to-one name="user"
        column="userId"
        property-ref="userId"/&gt;
    
    &lt;property name="type" not-null="true"/&gt;
    
&lt;/class&gt;</pre>
		</div>
	</s:i18n>
</div>    
    
    
    
    
    
    
    
    
