<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c13">
		<div>
			<h1 id="c13"><s:text name="title13" /></h1>
			<p><s:text name="p13-1" /></p>
			<p><s:text name="p13-2" /></p>
			<p><s:text name="p13-3" /></p>
			<p><s:text name="p13-4" /></p>
		</div>
		<div>
			<h2 id="c13-1"><s:text name="title13-1" /></h2>
			<p><s:text name="p13-1-1" /></p>
			<p><s:text name="p13-1-2" /></p>
			<p><s:text name="p13-1-3" /></p>
			<p><s:text name="p13-1-4" /></p>
		</div>
		<div>
			<h3 id="c13-1-1"><s:text name="title13-1-1" /></h3>
			<p><s:text name="p13-1-1-1" /></p>
			<p><s:text name="p13-1-1-2" /></p>
			<p><s:text name="p13-1-1-3" /></p>
			<p><s:text name="p13-1-1-4" /></p>
			<p><s:text name="p13-1-1-5" /></p>
			<p><s:text name="p13-1-1-6" /></p>
		</div>
		<div>
			<h3 id="c13-1-2"><s:text name="title13-1-2" /></h3>
			<p><s:text name="p13-1-2-1" /></p>
			<ul>
				<li><s:text name="li13-1-2-1-1" /></li>
				<li><s:text name="li13-1-2-1-2" /></li>
			</ul>
			<p><s:text name="p13-1-2-2" /></p>
			<p><s:text name="p13-1-2-3" /></p>
			<p><s:text name="p13-1-2-4" /></p>
			<ul>
				<li><s:text name="li13-1-2-2-1" /></li>
				<li><s:text name="li13-1-2-2-2" /></li>
				<li><s:text name="li13-1-2-2-3" /></li>
			</ul>
			<p><s:text name="p13-1-2-5" /></p>
		</div>
		<div>
			<h3 id="c13-1-3"><s:text name="title13-1-3" /></h3>
			<p><s:text name="p13-1-3-1" /></p>
			<dl>
				<dt><strong>Database Identity</strong></dt>
				<dd>foo.getId().equals( bar.getId() )</dd>
				<dt><strong>JVM Identity</strong></dt>
				<dd>foo==bar</dd>
			</dl>
			<p><s:text name="p13-1-3-2" /></p>
			<p><s:text name="p13-1-3-3" /></p>
			<p><s:text name="p13-1-3-4" /></p>
		</div>
		<div>
			<h3 id="c13-1-4"><s:text name="title13-1-4" /></h3>
			<p><s:text name="p13-1-4-1" /></p>
			<ul>
				<li><s:text name="li13-1-4-1-1" /></li>
				<li><s:text name="li13-1-4-1-2" /></li>
				<li><s:text name="li13-1-4-1-3" /></li>
			</ul>
		</div>
		<div>
			<h2 id="c13-2"><s:text name="title13-2" /></h2>
			<p><s:text name="p13-2-1" /></p>
			<p><s:text name="p13-2-2" /></p>
			<p><s:text name="p13-2-3" /></p>
			<p><s:text name="p13-2-4" /></p>
			<ul>
				<li><s:text name="li13-2-1-1" /></li>
				<li><s:text name="li13-2-1-2" /></li>
				<li><s:text name="li13-2-1-3" /></li>
				<li><s:text name="li13-2-1-4" /></li>
			</ul>
			<p><s:text name="p13-2-5" /></p>
		</div>
		<div>
			<h3 id="c13-2-1"><s:text name="title13-2-1" /></h3>
			<p><s:text name="p13-2-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// Non-managed environment idiom
Session sess = factory.openSession();
Transaction tx = null;
try {
    tx = sess.beginTransaction();

    // do some work
    ...

    tx.commit();
}
catch (RuntimeException e) {
    if (tx != null) tx.rollback();
    throw e; // or display error message
}
finally {
    sess.close();
}</pre>
			<p><s:text name="p13-2-1-2" /></p>
			<p><s:text name="p13-2-1-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// Non-managed environment idiom with getCurrentSession()
try {
    factory.getCurrentSession().beginTransaction();

    // do some work
    ...

    factory.getCurrentSession().getTransaction().commit();
}
catch (RuntimeException e) {
    factory.getCurrentSession().getTransaction().rollback();
    throw e; // or display error message
}</pre>
			<p><s:text name="p13-2-1-4" /></p>
			<p><s:text name="p13-2-1-5" /></p>
		</div>
		<div>
			<h3 id="c13-2-2"><s:text name="title13-2-2" /></h3>
			<p><s:text name="p13-2-2-1" /></p>
			<p><s:text name="p13-2-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// BMT idiom
Session sess = factory.openSession();
Transaction tx = null;
try {
    tx = sess.beginTransaction();

    // do some work
    ...

    tx.commit();
}
catch (RuntimeException e) {
    if (tx != null) tx.rollback();
    throw e; // or display error message
}
finally {
    sess.close();
}</pre>
			<p><s:text name="p13-2-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// BMT idiom with getCurrentSession()
try {
    UserTransaction tx = (UserTransaction)new InitialContext()
                            .lookup("java:comp/UserTransaction");

    tx.begin();

    // Do some work on Session bound to transaction
    factory.getCurrentSession().load(...);
    factory.getCurrentSession().persist(...);

    tx.commit();
}
catch (RuntimeException e) {
    tx.rollback();
    throw e; // or display error message
}</pre>
			<p><s:text name="p13-2-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// CMT idiom
 Session sess = factory.getCurrentSession();

 // do some work
 ...
</pre>
			<p><s:text name="p13-2-2-5" /></p>
			<p><s:text name="p13-2-2-6" /></p>
			<p><s:text name="p13-2-2-7" /></p>
		</div>
		<div>
			<h3 id="c13-2-3"><s:text name="title13-2-3" /></h3>
			<p><s:text name="p13-2-3-1" /></p>
			<p><s:text name="p13-2-3-2" /></p>
			<p><s:text name="p13-2-3-3" /></p>
			<ul>
				<li><s:text name="li13-2-3-1-1" /></li>
				<li><s:text name="li13-2-3-1-2" /></li>
				<li><s:text name="li13-2-3-1-3" /></li>
				<li><s:text name="li13-2-3-1-4" /></li>
				<li><s:text name="li13-2-3-1-5" /></li>
			</ul>
		</div>
		<div>
			<h3 id="c13-2-4"><s:text name="title13-2-4" /></h3>
			<p><s:text name="p13-2-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session sess = factory.openSession();
try {
    //set transaction timeout to 3 seconds
    sess.getTransaction().setTimeout(3);
    sess.getTransaction().begin();

    // do some work
    ...

    sess.getTransaction().commit()
}
catch (RuntimeException e) {
    sess.getTransaction().rollback();
    throw e; // or display error message
}
finally {
    sess.close();
}</pre>
			<p><s:text name="p13-2-4-2" /></p>
		</div>
		<div>
			<h2 id="c13-3"><s:text name="title13-3" /></h2>
			<p><s:text name="p13-3-1" /></p>
		</div>
		<div>
			<h3 id="c13-3-1"><s:text name="title13-3-1" /></h3>
			<p><s:text name="p13-3-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// foo is an instance loaded by a previous Session
session = factory.openSession();
Transaction t = session.beginTransaction();

int oldVersion = foo.getVersion();
session.load( foo, foo.getKey() ); // load the current state
if ( oldVersion != foo.getVersion() ) throw new StaleObjectStateException();
foo.setProperty("bar");

t.commit();
session.close();</pre>
			<p><s:text name="p13-3-1-2" /></p>
			<p><s:text name="p13-3-1-3" /></p>
			<p><s:text name="p13-3-1-4" /></p>
		</div>
		<div>
			<h3 id="c13-3-2"><s:text name="title13-3-2" /></h3>
			<p><s:text name="p13-3-2-1" /></p>
			<p><s:text name="p13-3-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// foo is an instance loaded earlier by the old session
Transaction t = session.beginTransaction(); // Obtain a new JDBC connection, start transaction

foo.setProperty("bar");

session.flush();    // Only for last transaction in conversation
t.commit();         // Also return JDBC connection
session.close();    // Only for last transaction in conversation</pre>
			<p><s:text name="p13-3-2-3" /></p>
			<p><s:text name="p13-3-2-4" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc13-3-2-1" /></p>
			</div>
			<p><s:text name="p13-3-2-5" /></p>
			<p><s:text name="p13-3-2-6" /></p>
		</div>
		<div>
			<h3 id="c13-3-3"><s:text name="title13-3-3" /></h3>
			<p><s:text name="p13-3-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// foo is an instance loaded by a previous Session
foo.setProperty("bar");
session = factory.openSession();
Transaction t = session.beginTransaction();
session.saveOrUpdate(foo); // Use merge() if "foo" might have been loaded already
t.commit();
session.close();</pre>
			<p><s:text name="p13-3-3-2" /></p>
			<p><s:text name="p13-3-3-3" /></p>
		</div>
		<div>
			<h3 id="c13-3-4"><s:text name="title13-3-4" /></h3>
			<p><s:text name="p13-3-4-1" /></p>
			<p><s:text name="p13-3-4-2" /></p>
			<p><s:text name="p13-3-4-3" /></p>
			<p><s:text name="p13-3-4-4" /></p>
		</div>
		<div>
			<h2 id="c13-4"><s:text name="title13-4" /></h2>
			<p><s:text name="p13-4-1" /></p>
			<p><s:text name="p13-4-2" /></p>
			<p><s:text name="p13-4-3" /></p>
			<ul>
				<li><s:text name="li13-4-1-1" /></li>
				<li><s:text name="li13-4-1-2" /></li>
				<li><s:text name="li13-4-1-3" /></li>
				<li><s:text name="li13-4-1-4" /></li>
				<li><s:text name="li13-4-1-5" /></li>
			</ul>
			<p><s:text name="p13-4-4" /></p>
			<ul>
				<li><s:text name="li13-4-2-1" /></li>
				<li><s:text name="li13-4-2-2" /></li>
				<li><s:text name="li13-4-2-3" /></li>
			</ul>
			<p><s:text name="p13-4-5" /></p>
			<p><s:text name="p13-4-6" /></p>
			<p><s:text name="p13-4-7" /></p>
		</div>
		<div>
			<h2 id="c13-5"><s:text name="title13-5" /></h2>
			<p><s:text name="p13-5-1" /></p>
			<ul>
				<li><s:text name="li13-5-1-1" /></li>
				<li><s:text name="li13-5-1-2" /></li>
				<li><s:text name="li13-5-1-3" /></li>
			</ul>
			<p><s:text name="p13-5-2" /></p>
			<ul>
				<li><s:text name="li3-5-2-1" /></li>
				<li><s:text name="li3-5-2-2" /></li>
				<li><s:text name="li3-5-2-3" /></li>
				<li><s:text name="li3-5-2-4" /></li>
			</ul>
		</div>
	</s:i18n>
</div>