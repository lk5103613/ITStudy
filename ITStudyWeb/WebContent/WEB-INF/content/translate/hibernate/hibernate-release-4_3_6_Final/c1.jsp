<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c1">
		<!--
		**********************************************************************************************************
		title1
		**********************************************************************************************************
		 -->
		<div>
			<h1 id="c1">
				<s:text name="title1" />
				<input class="btn_tooltip" type="image" src="../imgs/translate/example.png" 
					data-toggle="tooltip modal" data-placement="right" title="演示" />
			</h1>
			<p>
				<s:text name="p1" />
			</p>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-warning-sign"></span>
					<s:text name="important" />
				</h5>
				<p>
					<s:text name="import-content" />
				</p>
			</div>
			<div class="alert alert-info" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-info-sign"></span>
					<s:text name="note" />
				</h5>
				<p>
					<s:text name="note-content" />
				</p>
			</div>
		</div>
		<!--
		**********************************************************************************************************
		title2
		**********************************************************************************************************
		 -->
		<div>
			<h2 id="c1-1">
				<s:text name="title2" />
			</h2>
			<p>
				<s:text name="p2" />
			</p>
			<div class="alert alert-info" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-info-sign"></span>
					<s:text name="note" />
				</h5>
				<p>
					<s:text name="note-content2" />
				</p>
			</div>
		</div>
		<!--
		**********************************************************************************************************
		title3
		**********************************************************************************************************
		 -->
		<div>
			<h3 id="c1-1-1" class="has_show">
				<s:text name="title3" />
				<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
			</h3>
			<p>
				<s:text name="p3" />
			</p>
			<p>
				<s:text name="p4" />
			</p>

			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"&gt;

    &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;

    &lt;groupId&gt;org.hibernate.tutorials&lt;/groupId&gt;
    &lt;artifactId&gt;hibernate-tutorial&lt;/artifactId&gt;
    &lt;version&gt;1.0.0-SNAPSHOT&lt;/version&gt;
    &lt;name&gt;First Hibernate Tutorial&lt;/name&gt;

    &lt;build&gt;
         &lt;!-- we dont want the version to be part of the generated war file name --&gt;
         &lt;finalName&gt;${artifactId}&lt;/finalName&gt;
    &lt;/build&gt;

    &lt;dependencies&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;org.hibernate&lt;/groupId&gt;
            &lt;artifactId&gt;hibernate-core&lt;/artifactId&gt;
        &lt;/dependency&gt;

        &lt;!-- Because this is a web app, we also have a dependency on the servlet api. --&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;javax.servlet&lt;/groupId&gt;
            &lt;artifactId&gt;servlet-api&lt;/artifactId&gt;
        &lt;/dependency&gt;

        &lt;!-- Hibernate uses slf4j for logging, for our purposes here use the simple backend --&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;org.slf4j&lt;/groupId&gt;
            &lt;artifactId&gt;slf4j-simple&lt;/artifactId&gt;
        &lt;/dependency&gt;

        &lt;dependency&gt;
            &lt;groupId&gt;javassist&lt;/groupId&gt;
            &lt;artifactId&gt;javassist&lt;/artifactId&gt;
        &lt;/dependency&gt;
    &lt;/dependencies&gt;

&lt;/project&gt;</pre>
			<div class="alert alert-danger" role="alert">
				上方为官方原版，由于没有添加版本以及缺少个别依赖，无法直接使用，所以在此有所修改
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"&gt;

    &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;

    &lt;groupId&gt;org.hibernate.tutorials&lt;/groupId&gt;
    &lt;artifactId&gt;hibernate-tutorial&lt;/artifactId&gt;
    &lt;version&gt;1.0.0-SNAPSHOT&lt;/version&gt;
    &lt;name&gt;First Hibernate Tutorial&lt;/name&gt;

    &lt;build&gt;
         &lt;!-- we dont want the version to be part of the generated war file name --&gt;
         &lt;finalName&gt;${artifactId}&lt;/finalName&gt;
    &lt;/build&gt;

    &lt;dependencies&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;org.hibernate&lt;/groupId&gt;
            &lt;artifactId&gt;hibernate-core&lt;/artifactId&gt;
            &lt;version&gt;4.3.7.Final&lt;/version&gt;
        &lt;/dependency&gt;

        &lt;!-- Because this is a web app, we also have a dependency on the servlet api. --&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;javax.servlet&lt;/groupId&gt;
            &lt;artifactId&gt;javax.servlet-api&lt;/artifactId&gt;
            &lt;version&gt;3.1.0&lt;/version&gt;
        &lt;/dependency&gt;

        &lt;!-- Hibernate uses slf4j for logging, for our purposes here use the simple backend --&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;org.slf4j&lt;/groupId&gt;
            &lt;artifactId&gt;slf4j-simple&lt;/artifactId&gt;
            &lt;version&gt;1.7.7&lt;/version&gt;
        &lt;/dependency&gt;

        &lt;dependency&gt;
            &lt;groupId&gt;org.javassist&lt;/groupId&gt;
            &lt;artifactId&gt;javassist&lt;/artifactId&gt;
            &lt;version&gt;3.18.2-GA&lt;/version&gt;
        &lt;/dependency&gt;
        
        &lt;dependency&gt;
            &lt;groupId&gt;org.hsqldb&lt;/groupId&gt;
            &lt;artifactId&gt;hsqldb&lt;/artifactId&gt;
            &lt;version&gt;2.3.2&lt;/version&gt;
        &lt;/dependency&gt;
		
    &lt;/dependencies&gt;

&lt;/project&gt;</pre>
			<div class="alert alert-success" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-eye-open"></span>
					<s:text name="tip" />
				</h5>
				<p>
					<s:text name="tip-content" />
				</p>
			</div>
			<p>
				<s:text name="p5" />
			</p>
		</div>
		<!--
		**********************************************************************************************************
		title4
		**********************************************************************************************************
		 -->
		<div>
			<h3 id="c1-1-2">
				<s:text name="title4" />
				<input class="btn_tooltip" type="image" src="../imgs/translate/example.png" 
					data-toggle="tooltip modal" data-placement="right" title="演示" />
			</h3>
			<p>
				<s:text name="p6" />
			</p>

			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package org.hibernate.tutorial.domain;

import java.util.Date;

public class Event {
    private Long id;

    private String title;
    private Date date;

    public Event() {}

    public Long getId() {
        return id;
    }

    private void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}</pre>

			<p>
				<s:text name="p7" />
			</p>
			<p>
				<s:text name="p8" />
			</p>
			<p>
				<s:text name="p9" />
			</p>
			<p>
				<s:text name="p10" />
			</p>
		</div>
		<!--
		**********************************************************************************************************
		title5
		**********************************************************************************************************
		 -->
		<div>
			<h3 id="c1-1-3">
				<s:text name="title5" />
				<input class="btn_tooltip" type="image" src="../imgs/translate/example.png" 
					data-toggle="tooltip modal" data-placement="right" title="演示" />
			</h3>
			<p>
				<s:text name="p11" />
			</p>
			<p>
				<s:text name="p12" />
			</p>

			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;?xml version="1.0"?&gt;
&lt;!DOCTYPE hibernate-mapping PUBLIC
        "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-mapping-3.0.dtd"&gt;

&lt;hibernate-mapping package="org.hibernate.tutorial.domain"&gt;
[...]
&lt;/hibernate-mapping&gt;</pre>

			<p>
				<s:text name="p13" />
			</p>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-warning-sign"></span>
					<s:text name="important" />
				</h5>
				<p>
					<s:text name="import-content2" />
				</p>
			</div>
			<p>
				<s:text name="p14" />
			</p>

			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping package="org.hibernate.tutorial.domain"&gt;

    &lt;class name="Event" table="EVENTS"&gt;

    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>

			<p>
				<s:text name="p15" />
			</p>

			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping package="org.hibernate.tutorial.domain"&gt;

    &lt;class name="Event" table="EVENTS"&gt;
        &lt;id name="id" column="EVENT_ID"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>

			<p></p>
			<p>
				<s:text name="p17" />
			</p>
			<div class="alert alert-success" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-eye-open"></span>
					<s:text name="tip" />
				</h5>
				<p>
					<s:text name="tip-content2" />
				</p>
			</div>
			<p>
				<s:text name="p18" />
			</p>

			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping package="org.hibernate.tutorial.domain"&gt;

    &lt;class name="Event" table="EVENTS"&gt;
        &lt;id name="id" column="EVENT_ID"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="date" type="timestamp" column="EVENT_DATE"/&gt;
        &lt;property name="title"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>

			<p>
				<s:text name="p19" />
			</p>
			<div class="alert alert-info" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-info-sign"></span>
					<s:text name="note" />
				</h5>
				<p>
					<s:text name="note-content3" />
				</p>
			</div>
			<p>
				<s:text name="p20" />
			</p>
			<div class="alert alert-success" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-eye-open"></span>
					<s:text name="tip" />
				</h5>
				<p>
					<s:text name="tip-content3" />
				</p>
			</div>
			<p>
				<s:text name="p21" />
			</p>
		</div>
		<!--
		**********************************************************************************************************
		title6
		**********************************************************************************************************
		 -->
		<div>
			<h3 id="c1-1-4">
				<s:text name="title6" />
				<input class="btn_tooltip" type="image" src="../imgs/translate/example.png" 
					data-toggle="tooltip modal" data-placement="right" title="演示" />
			</h3>
			<p>
				<s:text name="p22" />
			</p>
			<div class="alert alert-info" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-info-sign"></span>
					<s:text name="note" />
				</h5>
				<p>
					<s:text name="note-content4" />
				</p>
			</div>
			<p>
				<s:text name="p23" />
			</p>
			<p>
				<s:text name="p24" />
			</p>
			<div class="alert alert-danger" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-exclamation-sign"></span>
					<s:text name="caution" />
				</h5>
				<p>
					<s:text name="caution-content" />
				</p>
			</div>
			<p>
				<s:text name="p25" />
			</p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;?xml version='1.0' encoding='utf-8'?&gt;
&lt;!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd"&gt;

&lt;hibernate-configuration&gt;

    &lt;session-factory&gt;

        &lt;!-- Database connection settings --&gt;
        &lt;property name="connection.driver_class"&gt;org.hsqldb.jdbcDriver&lt;/property&gt;
        &lt;property name="connection.url"&gt;jdbc:hsqldb:hsql://localhost&lt;/property&gt;
        &lt;property name="connection.username"&gt;sa&lt;/property&gt;
        &lt;property name="connection.password"&gt;&lt;/property&gt;

        &lt;!-- JDBC connection pool (use the built-in) --&gt;
        &lt;property name="connection.pool_size"&gt;1&lt;/property&gt;

        &lt;!-- SQL dialect --&gt;
        &lt;property name="dialect"&gt;org.hibernate.dialect.HSQLDialect&lt;/property&gt;

        &lt;!-- Enable Hibernate's automatic session context management --&gt;
        &lt;property name="current_session_context_class"&gt;thread&lt;/property&gt;

        &lt;!-- Disable the second-level cache  --&gt;
        &lt;property name="cache.provider_class"&gt;org.hibernate.cache.internal.NoCacheProvider&lt;/property&gt;

        &lt;!-- Echo all executed SQL to stdout --&gt;
        &lt;property name="show_sql"&gt;true&lt;/property&gt;

        &lt;!-- Drop and re-create the database schema on startup --&gt;
        &lt;property name="hbm2ddl.auto"&gt;update&lt;/property&gt;

        &lt;mapping resource="org/hibernate/tutorial/domain/Event.hbm.xml"/&gt;

    &lt;/session-factory&gt;

&lt;/hibernate-configuration&gt;</pre>
			<div class="alert alert-info" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-info-sign"></span>
					<s:text name="note" />
				</h5>
				<p>
					<s:text name="note-content5" />
				</p>
			</div>
			<p>
				<s:text name="p26" />
			</p>
			<p>
				<s:text name="p27" />
			</p>
			<div class="alert alert-success" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-eye-open"></span>
					<s:text name="tip" />
				</h5>
				<p>
					<s:text name="tip-content4" />
				</p>
			</div>
			<p>
				<s:text name="p28" />
			</p>
			<p>
				<s:text name="p29" />
			</p>
		</div>
		<!--
		**********************************************************************************************************
		title7
		**********************************************************************************************************
		 -->
		<div>
			<h3 id="c1-1-5">
				<s:text name="title7" />
			</h3>
			<p>
				<s:text name="p30" />
			</p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
[hibernateTutorial]$ mvn compile
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Building First Hibernate Tutorial
[INFO]    task-segment: [compile]
[INFO] ------------------------------------------------------------------------
[INFO] [resources:resources]
[INFO] Using default encoding to copy filtered resources.
[INFO] [compiler:compile]
[INFO] Compiling 1 source file to /home/steve/projects/sandbox/hibernateTutorial/target/classes
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESSFUL
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2 seconds
[INFO] Finished at: Tue Jun 09 12:25:25 CDT 2009
[INFO] Final Memory: 5M/547M
[INFO] ------------------------------------------------------------------------</pre>
		</div>
		<!--
		**********************************************************************************************************
		title8
		**********************************************************************************************************
		 -->
		<div>
			<h3 id="c1-1-6">
				<s:text name="title8" />
				<input class="btn_tooltip" type="image" src="../imgs/translate/example.png" 
					data-toggle="tooltip modal" data-placement="right" title="演示" />
			</h3>
			<p>
				<s:text name="p31" />
			</p>
			<p>
				<s:text name="p32" />
			</p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package org.hibernate.tutorial.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            new Configuration().configure().buildSessionFactory(
			    new StandardServiceRegistryBuilder().build() );
        }
        catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

}</pre>
			<div class="alert alert-danger" role="alert">
				以上为官方原版，由于存在错误，在此改正
			</div>
						<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package org.hibernate.tutorial.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            Configuration cfg = new Configuration().configure();
            return cfg.buildSessionFactory(
            		new StandardServiceRegistryBuilder().applySettings(
            				cfg.getProperties()).build());
        }
        catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

}</pre>
			<p>
				<s:text name="p33" />
			</p>
			<p>
				<s:text name="p34" />
			</p>
			<p>
				<s:text name="p35" />
			</p>
			<p>
				<s:text name="p36" />
			</p>
			<p>
				<s:text name="p37" />
			</p>
		</div>
		<!--
		**********************************************************************************************************
		title9
		**********************************************************************************************************
		 -->
		<div>
			<h3 id="c1-1-7">
				<s:text name="title9" />
				<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
			</h3>
			<p>
				<s:text name="p38" />
			</p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package org.hibernate.tutorial;

import org.hibernate.Session;

import java.util.*;

import org.hibernate.tutorial.domain.Event;
import org.hibernate.tutorial.util.HibernateUtil;

public class EventManager {

    public static void main(String[] args) {
        EventManager mgr = new EventManager();

        if (args[0].equals("store")) {
            mgr.createAndStoreEvent("My Event", new Date());
        }

        HibernateUtil.getSessionFactory().close();
    }

    private void createAndStoreEvent(String title, Date theDate) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        Event theEvent = new Event();
        theEvent.setTitle(title);
        theEvent.setDate(theDate);
        session.save(theEvent);

        session.getTransaction().commit();
    }

}</pre>
			<p>
				<s:text name="p39" />
			</p>
			<p>
				<s:text name="p40" />
			</p>
			<p>
				<s:text name="p41" />
			</p>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-warning-sign"></span>
					<s:text name="important" />
				</h5>
				<p>
					<s:text name="important-content2" />
				</p>
			</div>
			<p>
				<s:text name="p42" />
			</p>
			<p>
				<s:text name="p43" />
			</p>
			<p>
				<s:text name="p44" />
			</p>
			<p>
				<s:text name="p45" />
			</p>
			<div class="alert alert-info" role="alert">
				<h5 class="lead">
					<span class="glyphicon glyphicon-info-sign"></span>
					<s:text name="note" />
				</h5>
				<p>
					<s:text name="note-content6" />
				</p>
			</div>
			<p>
				<s:text name="p46" />
			</p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
[java] Hibernate: insert into EVENTS (EVENT_DATE, title, EVENT_ID) values (?, ?, ?)</pre>
			<p>
				<s:text name="p47" />
			</p>
			<p>
				<s:text name="p48" />
			</p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">        
if (args[0].equals("store")) {
    mgr.createAndStoreEvent("My Event", new Date());
}
else if (args[0].equals("list")) {
    List events = mgr.listEvents();
    for (int i = 0; i &lt; events.size(); i++) {
        Event theEvent = (Event) events.get(i);
        System.out.println(
                "Event: " + theEvent.getTitle() + " Time: " + theEvent.getDate()
        );
    }
}</pre>
			<p>
				<s:text name="p49" />
			</p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook"
				xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">    
private List listEvents() {
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    session.beginTransaction();
    List result = session.createQuery("from Event").list();
    session.getTransaction().commit();
    return result;
}</pre>
			<p>
				<s:text name="p50" />
			</p>
			<p>
				<s:text name="p51" />
			</p>
		</div>
		<!--
		**********************************************************************************************************
		title10
		**********************************************************************************************************
		 -->
		<div>
			<h2 id="c1-2">
				<s:text name="title10" />
			</h2>
			<p><s:text name="p52" /></p>
			
		</div>
		<!--
		**********************************************************************************************************
		title11
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-2-1">
		 		<s:text name="title11" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p53" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package org.hibernate.tutorial.domain;

public class Person {

    private Long id;
    private int age;
    private String firstname;
    private String lastname;

    public Person() {}

    // Accessor methods for all properties, private setter for 'id'

}</pre>
		 	<p><s:text name="p54" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping package="org.hibernate.tutorial.domain"&gt;

    &lt;class name="Person" table="PERSON"&gt;
        &lt;id name="id" column="PERSON_ID"&gt;
            &lt;generator class="native"/&gt;
        &lt;/id&gt;
        &lt;property name="age"/&gt;
        &lt;property name="firstname"/&gt;
        &lt;property name="lastname"/&gt;
    &lt;/class&gt;

&lt;/hibernate-mapping&gt;</pre>
		 	<p><s:text name="p55" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;mapping resource="org/hibernate/tutorial/domain/Event.hbm.xml"/&gt;
&lt;mapping resource="org/hibernate/tutorial/domain/Person.hbm.xml"/&gt;</pre>
		 	<p><s:text name="p56" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title12
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-2-2">
		 		<s:text name="title12" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p57" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Person {

    private Set events = new HashSet();

    public Set getEvents() {
        return events;
    }

    public void setEvents(Set events) {
        this.events = events;
    }
}</pre>
		 	<p><s:text name="p58" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Person" table="PERSON"&gt;
    &lt;id name="id" column="PERSON_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;property name="age"/&gt;
    &lt;property name="firstname"/&gt;
    &lt;property name="lastname"/&gt;

    &lt;set name="events" table="PERSON_EVENT"&gt;
        &lt;key column="PERSON_ID"/&gt;
        &lt;many-to-many column="EVENT_ID" class="Event"/&gt;
    &lt;/set&gt;

&lt;/class&gt;</pre>
		 	<p><s:text name="p59" /></p>
		 	<p><s:text name="p60" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">    
    _____________        __________________
   |             |      |                  |       _____________
   |   EVENTS    |      |   PERSON_EVENT   |      |             |
   |_____________|      |__________________|      |    PERSON   |
   |             |      |                  |      |_____________|
   | *EVENT_ID   | &lt;--&gt; | *EVENT_ID        |      |             |
   |  EVENT_DATE |      | *PERSON_ID       | &lt;--&gt; | *PERSON_ID  |
   |  TITLE      |      |__________________|      |  AGE        |
   |_____________|                                |  FIRSTNAME  |
                                                  |  LASTNAME   |
                                                  |_____________|
 </pre>
		 </div>
		  <!--
		**********************************************************************************************************
		title13
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-2-3">
		 		<s:text name="title13" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p61" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">    
private void addPersonToEvent(Long personId, Long eventId) {
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    session.beginTransaction();

    Person aPerson = (Person) session.load(Person.class, personId);
    Event anEvent = (Event) session.load(Event.class, eventId);
    aPerson.getEvents().add(anEvent);

    session.getTransaction().commit();
}</pre>
		 	<p><s:text name="p62" /></p>
		 	<p><s:text name="p63" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">    
private void addPersonToEvent(Long personId, Long eventId) {
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    session.beginTransaction();

    Person aPerson = (Person) session
            .createQuery("select p from Person p left join fetch p.events where p.id = :pid")
            .setParameter("pid", personId)
            .uniqueResult(); // Eager fetch the collection so we can use it detached
    Event anEvent = (Event) session.load(Event.class, eventId);

    session.getTransaction().commit();

    // End of first unit of work

    aPerson.getEvents().add(anEvent); // aPerson (and its collection) is detached

    // Begin second unit of work

    Session session2 = HibernateUtil.getSessionFactory().getCurrentSession();
    session2.beginTransaction();
    session2.update(aPerson); // Reattachment of aPerson

    session2.getTransaction().commit();
}</pre>
		 	<p><s:text name="p64" /></p>
		 	<p><s:text name="p65" /></p>
		 	
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">        
else if (args[0].equals("addpersontoevent")) {
    Long eventId = mgr.createAndStoreEvent("My Event", new Date()).getId();
    Long personId = mgr.createAndStorePerson(20, "Foo", "Bar").getId();
    mgr.addPersonToEvent(personId, eventId);
    System.out.println("Added person " + personId + " to event " + eventId);
}</pre>
			<div class="alert alert-danger" role="alert">
				运行以上代码要进行的修改：1. 将之前的<code>createAndStoreEvent</code>方法修改为
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">        
private Event createAndStoreEvent(String title, Date theDate) {
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    session.beginTransaction();
    Event theEvent = new Event();
    theEvent.setTitle(title);
    theEvent.setDate(theDate);
    session.save(theEvent);
    
    session.getTransaction().commit();
    return theEvent;
}</pre>
			<div class="alert alert-danger" role="alert">
				运行以上代码要进行的修改：2. 添加<code>createAndStorePerson</code>方法
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">        
private Person createAndStorePerson(int age, String firstname, String lastname){
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    session.beginTransaction();

    Person person = new Person();
    person.setAge(age);
    person.setFirstname(firstname);
    person.setLastname(lastname);
    
    session.save(person);
    session.getTransaction().commit();
    
    return person;
}</pre>
		 	<p><s:text name="p66" /></p>
		 	<p><s:text name="p67" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title14
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-2-4">
		 		<s:text name="title14" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p68" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">   
private Set emailAddresses = new HashSet();

public Set getEmailAddresses() {
    return emailAddresses;
}

public void setEmailAddresses(Set emailAddresses) {
    this.emailAddresses = emailAddresses;
}</pre>
		 	<p><s:text name="p69" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">        
&lt;set name="emailAddresses" table="PERSON_EMAIL_ADDR"&gt;
    &lt;key column="PERSON_ID"/&gt;
    &lt;element type="string" column="EMAIL_ADDR"/&gt;
&lt;/set&gt;</pre>
		 	<p><s:text name="p70" /></p>
		 	<p><s:text name="p71" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">  
  _____________        __________________
 |             |      |                  |       _____________
 |   EVENTS    |      |   PERSON_EVENT   |      |             |       ___________________
 |_____________|      |__________________|      |    PERSON   |      |                   |
 |             |      |                  |      |_____________|      | PERSON_EMAIL_ADDR |
 | *EVENT_ID   | &lt;--&gt; | *EVENT_ID        |      |             |      |___________________|
 |  EVENT_DATE |      | *PERSON_ID       | &lt;--&gt; | *PERSON_ID  | &lt;--&gt; |  *PERSON_ID       |
 |  TITLE      |      |__________________|      |  AGE        |      |  *EMAIL_ADDR      |
 |_____________|                                |  FIRSTNAME  |      |___________________|
                                                |  LASTNAME   |
                                                |_____________|
 </pre>
		 	<p><s:text name="p72" /></p>
		 	<p><s:text name="p73" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
private void addEmailToPerson(Long personId, String emailAddress) {
    Session session = HibernateUtil.getSessionFactory().getCurrentSession();
    session.beginTransaction();

    Person aPerson = (Person) session.load(Person.class, personId);
    // adding to the emailAddress collection might trigger a lazy load of the collection
    aPerson.getEmailAddresses().add(emailAddress);

    session.getTransaction().commit();
}</pre>
		 	<p><s:text name="p74" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title15
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-2-5">
		 		<s:text name="title15" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p75" /></p>
		 	<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="note-content7" /></p>
			</div>
			<p><s:text name="p76" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
private Set participants = new HashSet();

public Set getParticipants() {
    return participants;
}

public void setParticipants(Set participants) {
    this.participants = participants;
}</pre>
		 	<p><s:text name="p77" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;set name="participants" table="PERSON_EVENT" inverse="true"&gt;
    &lt;key column="EVENT_ID"/&gt;
    &lt;many-to-many column="PERSON_ID" class="Person"/&gt;
&lt;/set&gt;</pre>
		 	<p><s:text name="p78" /></p>
		 	<p><s:text name="p79" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title16
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-2-6">
		 		<s:text name="title16" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p80" /></p>
		 	<p><s:text name="p81" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
protected Set getEvents() {
    return events;
}

protected void setEvents(Set events) {
    this.events = events;
}

public void addToEvent(Event event) {
    this.getEvents().add(event);
    event.getParticipants().add(this);
}

public void removeFromEvent(Event event) {
    this.getEvents().remove(event);
    event.getParticipants().remove(this);
}</pre>
		 	<p><s:text name="p82" /></p>
		 	<p><s:text name="p83" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title17
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c1-3"><s:text name="title17" /></h2>
		 	<p><s:text name="p84" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title18
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-3-1">
		 		<s:text name="title18" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p85" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package org.hibernate.tutorial.web;

// Imports

public class EventManagerServlet extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        SimpleDateFormat dateFormatter = new SimpleDateFormat( "dd.MM.yyyy" );

        try {
            // Begin unit of work
            HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();

            // Process request and render page...

            // End unit of work
            HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().commit();
        }
        catch (Exception ex) {
            HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().rollback();
            if ( ServletException.class.isInstance( ex ) ) {
                throw ( ServletException ) ex;
            }
            else {
                throw new ServletException( ex );
            }
        }
    }

}</pre>
		 	<p><s:text name="p86" /></p>
		 	<p><s:text name="p87" /></p>
		 	<p><s:text name="p88" /></p>
		 	<p><s:text name="p89" /></p>
		 	<p><s:text name="p90" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title19
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-3-2">
		 		<s:text name="title19" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p91" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// Write HTML header
 PrintWriter out = response.getWriter();
 out.println("&lt;html&gt;&lt;head&gt;&lt;title&gt;Event Manager&lt;/title&gt;&lt;/head&gt;&lt;body&gt;");

 // Handle actions
 if ( "store".equals(request.getParameter("action")) ) {

     String eventTitle = request.getParameter("eventTitle");
     String eventDate = request.getParameter("eventDate");

     if ( "".equals(eventTitle) || "".equals(eventDate) ) {
         out.println("&lt;b&gt;&lt;i&gt;Please enter event title and date.&lt;/i&gt;&lt;/b&gt;");
     }
     else {
         createAndStoreEvent(eventTitle, dateFormatter.parse(eventDate));
         out.println("&lt;b&gt;&lt;i&gt;Added event.&lt;/i&gt;&lt;/b&gt;");
     }
 }

 // Print page
printEventForm(out);
listEvents(out, dateFormatter);

// Write HTML footer
out.println("&lt;/body&gt;&lt;/html&gt;");
out.flush();
out.close();</pre>
		 	<p><s:text name="p92" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
private void printEventForm(PrintWriter out) {
    out.println("&lt;h2&gt;Add new event:&lt;/h2&gt;");
    out.println("&lt;form&gt;");
    out.println("Title: &lt;input name='eventTitle' length='50'/&gt;&lt;br/&gt;");
    out.println("Date (e.g. 24.12.2009): &lt;input name='eventDate' length='10'/&gt;&lt;br/&gt;");
    out.println("&lt;input type='submit' name='action' value='store'/&gt;");
    out.println("&lt;/form&gt;");
}</pre>
		 	<p><s:text name="p93" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
private void listEvents(PrintWriter out, SimpleDateFormat dateFormatter) {

    List result = HibernateUtil.getSessionFactory()
            .getCurrentSession().createCriteria(Event.class).list();
    if (result.size() &gt; 0) {
        out.println("&lt;h2&gt;Events in database:&lt;/h2&gt;");
        out.println("&lt;table border='1'&gt;");
        out.println("&lt;tr&gt;");
        out.println("&lt;th&gt;Event title&lt;/th&gt;");
        out.println("&lt;th&gt;Event date&lt;/th&gt;");
        out.println("&lt;/tr&gt;");
        Iterator it = result.iterator();
        while (it.hasNext()) {
            Event event = (Event) it.next();
            out.println("&lt;tr&gt;");
            out.println("&lt;td&gt;" + event.getTitle() + "&lt;/td&gt;");
            out.println("&lt;td&gt;" + dateFormatter.format(event.getDate()) + "&lt;/td&gt;");
            out.println("&lt;/tr&gt;");
        }
        out.println("&lt;/table&gt;");
    }
}</pre>
		 	<p><s:text name="p94" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
protected void createAndStoreEvent(String title, Date theDate) {
    Event theEvent = new Event();
    theEvent.setTitle(title);
    theEvent.setDate(theDate);

    HibernateUtil.getSessionFactory()
            .getCurrentSession().save(theEvent);
}</pre>
		 	<p><s:text name="p95" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title20
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c1-3-3">
		 		<s:text name="title20" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h3>
		 	<p><s:text name="p96" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;web-app version="2.4"
    xmlns="http://java.sun.com/xml/ns/j2ee"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://java.sun.com/xml/ns/j2ee http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"&gt;

    &lt;servlet&gt;
        &lt;servlet-name&gt;Event Manager&lt;/servlet-name&gt;
        &lt;servlet-class&gt;org.hibernate.tutorial.web.EventManagerServlet&lt;/servlet-class&gt;
    &lt;/servlet&gt;

    &lt;servlet-mapping&gt;
        &lt;servlet-name&gt;Event Manager&lt;/servlet-name&gt;
        &lt;url-pattern&gt;/eventmanager&lt;/url-pattern&gt;
    &lt;/servlet-mapping&gt;
&lt;/web-app&gt;</pre>
		 	<div class="alert alert-success" role="alert">
				如果使用Eclipse创建servlet，则不需要创建web.xml。
			</div>
		 	<p><s:text name="p97" /></p>
		 	<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="note-content8" /></p>
			</div>
			<p><s:text name="p98" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title21
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c1-4"><s:text name="title21" /></h2>
		 	<p><s:text name="p99" /></p>
		 </div>
	</s:i18n>
</div>