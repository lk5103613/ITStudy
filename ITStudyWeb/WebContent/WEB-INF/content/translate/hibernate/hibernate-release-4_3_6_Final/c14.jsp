<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c14">
		<div>
			<h1 id="c14"><s:text name="title14" /></h1>
			<p><s:text name="p14-1" /></p>
		</div>
		<div>
			<h2 id="c14-1"><s:text name="title14-1" /></h2>
			<p><s:text name="p14-1-1" /></p>
			<p><s:text name="p14-1-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package org.hibernate.test;

import java.io.Serializable;
import java.util.Date;
import java.util.Iterator;

import org.hibernate.EmptyInterceptor;
import org.hibernate.Transaction;
import org.hibernate.type.Type;

public class AuditInterceptor extends EmptyInterceptor {

    private int updates;
    private int creates;
    private int loads;

    public void onDelete(Object entity,
                         Serializable id,
                         Object[] state,
                         String[] propertyNames,
                         Type[] types) {
        // do nothing
    }

    public boolean onFlushDirty(Object entity,
                                Serializable id,
                                Object[] currentState,
                                Object[] previousState,
                                String[] propertyNames,
                                Type[] types) {

        if ( entity instanceof Auditable ) {
            updates++;
            for ( int i=0; i &lt; propertyNames.length; i++ ) {
                if ( "lastUpdateTimestamp".equals( propertyNames[i] ) ) {
                    currentState[i] = new Date();
                    return true;
                }
            }
        }
        return false;
    }

    public boolean onLoad(Object entity,
                          Serializable id,
                          Object[] state,
                          String[] propertyNames,
                          Type[] types) {
        if ( entity instanceof Auditable ) {
            loads++;
        }
        return false;
    }

    public boolean onSave(Object entity,
                          Serializable id,
                          Object[] state,
                          String[] propertyNames,
                          Type[] types) {

        if ( entity instanceof Auditable ) {
            creates++;
            for ( int i=0; i&lt;propertyNames.length; i++ ) {
                if ( "createTimestamp".equals( propertyNames[i] ) ) {
                    state[i] = new Date();
                    return true;
                }
            }
        }
        return false;
    }

    public void afterTransactionCompletion(Transaction tx) {
        if ( tx.wasCommitted() ) {
            System.out.println("Creations: " + creates + ", Updates: " + updates + "Loads: " + loads);
        }
        updates=0;
        creates=0;
        loads=0;
    }

}</pre>
			<p><s:text name="p14-1-3" /></p>
			<p><s:text name="p14-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sf.withOptions( new AuditInterceptor() ).openSession();</pre>
			<p><s:text name="p14-1-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
new Configuration().setInterceptor( new AuditInterceptor() );</pre>
		</div>
		<div>
			<h2 id="c14-2"><s:text name="title14-2" /></h2>
			<p><s:text name="p14-2-1" /></p>
			<p><s:text name="p14-2-2" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc14-2-1" /></p>
			</div>
			<p><s:text name="p14-2-3" /></p>
			<p><s:text name="p14-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class MyLoadListener implements LoadEventListener {
    // this is the single method defined by the LoadEventListener interface
    public void onLoad(LoadEvent event, LoadEventListener.LoadType loadType)
            throws HibernateException {
        if ( !MySecurity.isAuthorized( event.getEntityClassName(), event.getEntityId() ) ) {
            throw MySecurityException("Unauthorized access");
        }
    }
}</pre>
		</div>
		<div>
			<h2 id="c14-3"><s:text name="title14-3" /></h2>
			<p><s:text name="p14-3-1" /></p>
			<p><s:text name="p14-3-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
import org.hibernate.event.service.spi.DuplicationStrategy;
import org.hibernate.event.service.spi.EventListenerRegistry;
import org.hibernate.integrator.spi.Integrator;
import org.hibernate.secure.internal.JACCPreDeleteEventListener;
import org.hibernate.secure.internal.JACCPreInsertEventListener;
import org.hibernate.secure.internal.JACCPreLoadEventListener;
import org.hibernate.secure.internal.JACCPreUpdateEventListener;
import org.hibernate.secure.internal.JACCSecurityListener;

public class JaccEventListenerIntegrator implements Integrator {

	private static final DuplicationStrategy JACC_DUPLICATION_STRATEGY = new DuplicationStrategy() {
		@Override
		public boolean areMatch(Object listener, Object original) {
			return listener.getClass().equals( original.getClass() ) &amp;&amp;
					JACCSecurityListener.class.isInstance( original );
		}

		@Override
		public Action getAction() {
			return Action.KEEP_ORIGINAL;
		}
	};

	@Override
	@SuppressWarnings( {"unchecked"})
	public void integrate(
			Configuration configuration,
			SessionFactoryImplementor sessionFactory,
			SessionFactoryServiceRegistry serviceRegistry) {
		boolean isSecurityEnabled = configuration.getProperties().containsKey( AvailableSettings.JACC_ENABLED );
		if ( !isSecurityEnabled ) {
			return;
		}

		final EventListenerRegistry eventListenerRegistry = serviceRegistry.getService( EventListenerRegistry.class );
		eventListenerRegistry.addDuplicationStrategy( JACC_DUPLICATION_STRATEGY );

		final String jaccContextId = configuration.getProperty( Environment.JACC_CONTEXTID );
		eventListenerRegistry.prependListeners( EventType.PRE_DELETE, new JACCPreDeleteEventListener(jaccContextId) );
		eventListenerRegistry.prependListeners( EventType.PRE_INSERT, new JACCPreInsertEventListener(jaccContextId) );
		eventListenerRegistry.prependListeners( EventType.PRE_UPDATE, new JACCPreUpdateEventListener(jaccContextId) );
		eventListenerRegistry.prependListeners( EventType.PRE_LOAD, new JACCPreLoadEventListener(jaccContextId) );
	}
}</pre>
			<p><s:text name="p14-3-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;grant role="admin" entity-name="User" actions="insert,update,read"/&gt;
&lt;grant role="su" entity-name="User" actions="*"/&gt;</pre>
		</div>
	</s:i18n>
</div>
