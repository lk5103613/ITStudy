<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c12">
		<div>
			<h1 id="c12"><s:text name="title12" /></h1>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic12-1" /></p>
			</div>
			<p><s:text name="p12-1" /></p>
			<ul>
				<li><s:text name="li12-1-1" /></li>
				<li><s:text name="li12-1-2" /></li>
				<li><s:text name="li12-1-3" /></li>
			</ul>
			<p><s:text name="p12-2" /></p>
			<ul>
				<li><s:text name="li12-2-1" /></li>
				<li><s:text name="li12-2-2" /></li>
				<li><s:text name="li12-2-3" /></li>
			</ul>
			<p><s:text name="p12-3" /></p>
			<p><s:text name="p12-4" /></p>
			<p><s:text name="p12-5" /></p>
			<p><s:text name="p12-6" /></p>
			<ul>
				<li><s:text name="li12-3-1" /><</li>
				<li><s:text name="li12-3-2" /><</li>
			</ul>
		</div>
		<div>
			<h2 id="c12-1"><s:text name="title12-1" /></h2>
			<p><s:text name="p12-1-1" /></p>
			<p><s:text name="p12-1-2" /></p>
			<ul>
				<li><s:text name="li12-1-1-1" /></li>
				<li><s:text name="li12-1-1-2" /></li>
				<li><s:text name="li12-1-1-3" /></li>
				<li><s:text name="li12-1-1-4" /></li>
			</ul>
		</div>
		<div>
			<h3 id="c12-1-1"><s:text name="title12-1-1" /></h3>
			<p><s:text name="p12-1-1-1" /></p>
			<p><s:text name="p12-1-1-2" /></p>
			<p><s:text name="p12-1-1-3" /></p>
		</div>
		<div>
			<h3 id="c12-1-2"><s:text name="title12-1-2" /></h3>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc12-1-2-1" /></p>
			</div>
			<p><s:text name="p12-1-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session.setDefaultReadOnly( true );</pre>
			<p><s:text name="p12-1-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session.setDefaultReadOnly( false );</pre>
			<p><s:text name="p12-1-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session.isDefaultReadOnly();</pre>
			<p><s:text name="p12-1-2-4" /></p>
			<ul>
				<li><s:text name="li12-1-2-1-1" /></li>
				<li><s:text name="li12-1-2-1-2" /></li>
				<li><s:text name="li12-1-2-1-3" /></li>
				<li><s:text name="li12-1-2-1-4" /></li>
			</ul>
			<p><s:text name="p12-1-2-5" /></p>
			<ul>
				<li><s:text name="li12-1-2-2-1" /></li>
				<li><s:text name="li12-1-2-2-2" /></li>
				<li><s:text name="li12-1-2-2-3" /></li>
			</ul>
		</div>
		<div>
			<h3 id="c12-1-3"><s:text name="title12-1-3" /></h3>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc12-1-3-1" /></p>
			</div>
			<p><s:text name="p12-1-3-1" /></p>
			<p><s:text name="p12-1-3-2" /></p>
			<p><s:text name="p12-1-3-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Query.setReadOnly( true );</pre>
			<p><s:text name="p12-1-3-4" /></p>
			<p><s:text name="p12-1-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Criteria.setReadOnly( true );</pre>
			<p><s:text name="p12-1-3-6" /></p>
			<p><s:text name="p12-1-3-7" /></p>
			<p><s:text name="p12-1-3-8" /></p>
			<p><s:text name="p12-1-3-9" /></p>
			<p><s:text name="p12-1-3-10" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = factory.openSession();
Transaction tx = session.beginTransaction();
 
setDefaultReadOnly( true );
Contract contract = 
   ( Contract ) session.createQuery(
           "from Contract where customerName = 'Sherman'" )
           .uniqueResult();
Hibernate.initialize( contract.getPlan() );
Hibernate.initialize( contract.getVariations() );
Hibernate.initialize( contract.getNotes() );
setDefaultReadOnly( false );
...
tx.commit();
session.close();

</pre>
			<p><s:text name="p12-1-3-11" /></p>
		</div>
		<div>
			<h3 id="c12-1-4"><s:text name="title12-1-4" /></h3>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc12-1-4-1" /></p>
			</div>
			<p><s:text name="p12-1-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session.setReadOnly(entityOrProxy, true)</pre>
			<p><s:text name="p12-1-4-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session.setReadOnly(entityOrProxy, false)</pre>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic12-1-4-1" /></p>
			</div>
			<p><s:text name="p12-1-4-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
session.refresh( entity );</pre>
			<p><s:text name="p12-1-4-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// evict the read-only entity so it is detached
session.evict( entity );

// make the detached entity (with the non-flushed changes) persistent
session.update( entity );

// now entity is no longer read-only and its changes can be flushed
s.flush();
</pre>
		</div>
		<div>
			<h2 id="c12-2"><s:text name="title12-2" /></h2>
			<p><s:text name="p12-2-1" /></p>
			<p><s:text name="p12-2-2" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th12-2-1-1" /></th>
						<th><s:text name="th12-2-1-2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td12-2-1-1" /></td>
						<td><s:text name="td12-2-1-2" /></td>
					</tr>
					<tr>
						<td><s:text name="td12-2-1-3" /></td>
						<td><s:text name="td12-2-1-4" /></td>
					</tr>
					<tr>
						<td><s:text name="td12-2-1-5" /></td>
						<td><s:text name="td12-2-1-6" /></td>
					</tr>
					<tr>
						<td><s:text name="td12-2-1-7" /></td>
						<td><s:text name="td12-2-1-8" /></td>
					</tr>
					<tr>
						<td><s:text name="td12-2-1-9" /></td>
						<td><s:text name="td12-2-1-10" /></td>
					</tr>
					<tr>
						<td><s:text name="td12-2-1-11" /></td>
						<td><s:text name="td12-2-1-12" /></td>
					</tr>
				</tbody>
			</table>
			<p><s:text name="p12-2-3" /></p>
		</div>
		<div>
			<h3 id="c12-2-1"><s:text name="title12-2-1" /></h3>
			<p><s:text name="p12-2-1-1" /></p>
			<p><s:text name="p12-2-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = factory.openSession();
Transaction tx = session.beginTransaction();

// get a contract and make it read-only
Contract contract = ( Contract ) session.get( Contract.class, contractId );
session.setReadOnly( contract, true );

// contract.getCustomerName() is "Sherman"
contract.setCustomerName( "Yogi" );
tx.commit();

tx = session.beginTransaction();

contract = ( Contract ) session.get( Contract.class, contractId );
// contract.getCustomerName() is still "Sherman"
...
tx.commit();
session.close();
            </pre>
		</div>
		<div>
			<h3 id="c12-2-2"><s:text name="title12-2-2" /></h3>
		</div>
		<div>
			<h4 id="c12-2-2-1"><s:text name="title12-2-2-1" /></h4>
			<p><s:text name="p12-2-2-1-1" /></p>
			<p><s:text name="p12-2-2-1-2" /></p>
			<p><s:text name="p12-2-2-1-3" /></p>
			<p><s:text name="p12-2-2-1-4" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc12-2-2-1-1" /></p>
			</div>
			<p><s:text name="p12-2-2-1-5" /></p>
			<p><s:text name="p12-2-2-1-6" /></p>
			<p><s:text name="p12-2-2-1-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// get a contract with an existing plan;
// make the contract read-only and set its plan to null 
tx = session.beginTransaction();
Contract contract = ( Contract ) session.get( Contract.class, contractId );
session.setReadOnly( contract, true );
contract.setPlan( null );
tx.commit();

// get the same contract
tx = session.beginTransaction();
contract = ( Contract ) session.get( Contract.class, contractId );

// contract.getPlan() still refers to the original plan;

tx.commit();
session.close();</pre>
			<p><s:text name="p12-2-2-1-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// get a contract with an existing plan;
// make the contract read-only and change to a new plan
tx = session.beginTransaction();
Contract contract = ( Contract ) session.get( Contract.class, contractId );
session.setReadOnly( contract, true );
Plan newPlan = new Plan( "new plan"
contract.setPlan( newPlan);
tx.commit();

// get the same contract
tx = session.beginTransaction();
contract = ( Contract ) session.get( Contract.class, contractId );
newPlan = ( Contract ) session.get( Plan.class, newPlan.getId() ); 

// contract.getPlan() still refers to the original plan;
// newPlan is non-null because it was persisted when 
// the previous transaction was committed; 

tx.commit();
session.close();</pre>
		</div>
		<div>
			<h4 id="c12-2-2-2"><s:text name="title12-2-2-2" /></h4>
			<p><s:text name="p12-2-2-2-1" /></p>
			<p><s:text name="p12-2-2-2-2" /></p>
			<p><s:text name="p12-2-2-2-3" /></p>
			<p><s:text name="p12-2-2-2-4" /></p>
			<p><s:text name="p12-2-2-2-5" /></p>
		</div>
		<div>
			<h3 id="c12-2-3"><s:text name="title12-2-3" /></h3>
		</div>
		<div>
			<h4 id="c12-2-3-1"><s:text name="title12-2-3-1" /></h4>
			<p><s:text name="p12-2-3-1-1" /></p>
			<ul>
				<li><s:text name="li12-2-3-1-1-1" /></li>
				<li><s:text name="li12-2-3-1-1-2" /></li>
				<li><s:text name="li12-2-3-1-1-3" /></li>
			</ul>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc12-2-3-1-1" /></p>
			</div>
			<p><s:text name="p12-2-3-1-2" /></p>
		</div>
		<div>
			<h4 id="c12-2-3-2"><s:text name="title12-2-3-2" /></h4>
			<p><s:text name="p12-2-3-2-1" /></p>
			<ul>
				<li><s:text name="li12-2-3-2-1-1" /></li>
				<li><s:text name="li12-2-3-2-1-2" /></li>
				<li><s:text name="li12-2-3-2-1-3" /></li>
			</ul>
			<p><s:text name="p12-2-3-2-2" /></p>
			<ul>
				<li><s:text name="li12-2-3-2-2-1" /></li>
				<li><s:text name="li12-2-3-2-2-2" /></li>
			</ul>
		</div>
		<div>
			<h4 id="c12-2-3-3"><s:text name="title12-2-3-3" /></h4>
			<p><s:text name="p12-2-3-3-1" /></p>
			<p><s:text name="p12-2-3-3-2" /></p>
			<p><s:text name="p12-2-3-3-3" /></p>
			<p><s:text name="p12-2-3-3-4" /></p>
			<p><s:text name="p12-2-3-3-5" /></p>
		</div>
	</s:i18n>
</div>