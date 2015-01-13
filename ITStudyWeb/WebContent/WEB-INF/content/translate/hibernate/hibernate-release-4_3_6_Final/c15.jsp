<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c15">
		<div>
			<h1 id="c15"><s:text name="title15" /></h1>
			<p><s:text name="p15-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessionFactory.openSession();
Transaction tx = session.beginTransaction();
for ( int i=0; i&lt;100000; i++ ) {
    Customer customer = new Customer(.....);
    session.save(customer);
}
tx.commit();
session.close();</pre>
			<p><s:text name="p15-2" /></p>
			<p><s:text name="p15-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.jdbc.batch_size 20</pre>
			<p><s:text name="p15-4" /></p>
			<p><s:text name="p15-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.cache.use_second_level_cache false</pre>
			<p><s:text name="p15-6" /></p>
		</div>
		<div>
			<h2 id="c15-1"><s:text name="title15-1" /></h2>
			<p><s:text name="p15-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessionFactory.openSession();
Transaction tx = session.beginTransaction();
   
for ( int i=0; i&lt;100000; i++ ) {
    Customer customer = new Customer(.....);
    session.save(customer);
    if ( i % 20 == 0 ) { //20, same as the JDBC batch size
        //flush a batch of inserts and release memory:
        session.flush();
        session.clear();
    }
}
   
tx.commit();
session.close();</pre>
		</div>
		<div>
			<h2 id="c15-2"><s:text name="title15-2" /></h2>
			<p><s:text name="p15-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessionFactory.openSession();
Transaction tx = session.beginTransaction();
   
ScrollableResults customers = session.getNamedQuery("GetCustomers")
    .setCacheMode(CacheMode.IGNORE)
    .scroll(ScrollMode.FORWARD_ONLY);
int count=0;
while ( customers.next() ) {
    Customer customer = (Customer) customers.get(0);
    customer.updateStuff(...);
    if ( ++count % 20 == 0 ) {
        //flush a batch of updates and release memory:
        session.flush();
        session.clear();
    }
}
   
tx.commit();
session.close();</pre>
		</div>
		<div>
			<h2 id="c15-3"><s:text name="title15-3" /></h2>
			<p><s:text name="p15-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
StatelessSession session = sessionFactory.openStatelessSession();
Transaction tx = session.beginTransaction();
   
ScrollableResults customers = session.getNamedQuery("GetCustomers")
    .scroll(ScrollMode.FORWARD_ONLY);
while ( customers.next() ) {
    Customer customer = (Customer) customers.get(0);
    customer.updateStuff(...);
    session.update(customer);
}
   
tx.commit();
session.close();</pre>
			<p><s:text name="p15-3-2" /></p>
			<p><s:text name="p15-3-3" /></p>
		</div>
		<div>
			<h2 id="c15-4"><s:text name="title15-4" /></h2>
			<p><s:text name="p15-4-1" /></p>
			<p><s:text name="p15-4-2" /></p>
			<p><s:text name="p15-4-3" /></p>
			<ul>
				<li><s:text name="li15-4-1-1" /></li>
				<li><s:text name="li15-4-1-2" /></li>
				<li><s:text name="li15-4-1-3" /></li>
				<li><s:text name="li15-4-1-4" /></li>
			</ul>
			<p><s:text name="p15-4-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessionFactory.openSession();
Transaction tx = session.beginTransaction();

String hqlUpdate = "update Customer c set c.name = :newName where c.name = :oldName";
// or String hqlUpdate = "update Customer set name = :newName where name = :oldName";
int updatedEntities = s.createQuery( hqlUpdate )
        .setString( "newName", newName )
        .setString( "oldName", oldName )
        .executeUpdate();
tx.commit();
session.close();</pre>
			<p><s:text name="p15-4-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessionFactory.openSession();
Transaction tx = session.beginTransaction();
String hqlVersionedUpdate = "update versioned Customer set name = :newName where name = :oldName";
int updatedEntities = s.createQuery( hqlUpdate )
        .setString( "newName", newName )
        .setString( "oldName", oldName )
        .executeUpdate();
tx.commit();
session.close();</pre>
			<p><s:text name="p15-4-6" /></p>
			<p><s:text name="p15-4-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessionFactory.openSession();
Transaction tx = session.beginTransaction();

String hqlDelete = "delete Customer c where c.name = :oldName";
// or String hqlDelete = "delete Customer where name = :oldName";
int deletedEntities = s.createQuery( hqlDelete )
        .setString( "oldName", oldName )
        .executeUpdate();
tx.commit();
session.close();</pre>
			<p><s:text name="p15-4-8" /></p>
			<p><s:text name="p15-4-9" /></p>
			<ul>
				<li><s:text name="li15-4-1-1" /></li>
				<li><s:text name="li15-4-1-2" /></li>
				<li><s:text name="li15-4-1-3" /></li>
				<li><s:text name="li15-4-1-4" /></li>
			</ul>
			<p><s:text name="p15-4-10" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessionFactory.openSession();
Transaction tx = session.beginTransaction();

String hqlInsert = "insert into DelinquentAccount (id, name) select c.id, c.name from Customer c where ...";
int createdEntities = s.createQuery( hqlInsert )
        .executeUpdate();
tx.commit();
session.close();</pre>
		</div>
	</s:i18n>
</div>