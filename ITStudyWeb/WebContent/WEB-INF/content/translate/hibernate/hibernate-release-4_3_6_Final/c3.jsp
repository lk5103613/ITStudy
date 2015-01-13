<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c3">
		<!--
		**********************************************************************************************************
		title3
		**********************************************************************************************************
		 -->
		 <div>
		 	<h1 id="c3">
		 		<s:text name="title3" />
		 		<input class="btn_tooltip" type="image" src="../imgs/translate/example.png"
					 data-toggle="tooltip modal" data-placement="right" title="演示" />
		 	</h1>
		 	<p><s:text name="p3-1" /></p>
		 </div>
		<!--
		**********************************************************************************************************
		title3-1
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-1"><s:text name="title3-1" /></h2>
		 	<p><s:text name="p3-1-1" /></p>
		 	<p><s:text name="p3-1-2" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Configuration cfg = new Configuration()
   .addResource("Item.hbm.xml")
   .addResource("Bid.hbm.xml");</pre>
		 	<p><s:text name="p3-1-3" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Configuration cfg = new Configuration()
   .addClass(org.hibernate.auction.Item.class)
   .addClass(org.hibernate.auction.Bid.class);</pre>
		 	<p><s:text name="p3-1-4" /></p>
		 	<p><s:text name="p3-1-5" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Configuration cfg = new Configuration()
   .addClass(org.hibernate.auction.Item.class)
   .addClass(org.hibernate.auction.Bid.class)
   .setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLInnoDBDialect")
   .setProperty("hibernate.connection.datasource", "java:comp/env/jdbc/test")
   .setProperty("hibernate.order_updates", "true");</pre>
			<p><s:text name="p3-1-6" /></p>
			<ol>
				<li><s:text name="li3-1-1" /></li>
				<li><s:text name="li3-1-2" /></li>
				<li><s:text name="li3-1-3" /></li>
				<li><s:text name="li3-1-4" /></li>
			</ol>
			<p><s:text name="p3-1-7" /></p>
			<p><s:text name="p3-1-8" /></p>
		 </div>
		<!--
		**********************************************************************************************************
		title3-2
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-2"><s:text name="title3-2" /></h2>
		 	<p><s:text name="p3-2-1" /></p>
<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
SessionFactory sessions = cfg.buildSessionFactory();</pre>
			<div class="alert alert-danger" role="alert">
				以上方法已过时，不推荐使用，请使用以下方法：
			</div>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
SessionFactory sessions = cfg.buildSessionFactory(
            		new StandardServiceRegistryBuilder()
            		.applySettings(cfg.getProperties()).build());</pre>
			<p><s:text name="p3-2-2" /></p>
		 </div>
		<!--
		**********************************************************************************************************
		title3-3
		**********************************************************************************************************
		 -->
		<div>
		 	<h2 id="c3-3"><s:text name="title3-3" /></h2>
		 	<p><s:text name="p3-3-1" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session session = sessions.openSession(); // open a new Session</pre>
			
		 	
			
		 	<p><s:text name="p3-3-3" /></p>
		 	<p><s:text name="p3-3-4" /></p>
		 	<h5><strong><s:text name="tb3-3-1" /></strong></h5>
		 	<table class="table table-bordered">
				<thead>
					<tr>
						<th><s:text name="th1" /></th>
						<th><s:text name="th2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>hibernate.connection.driver_class</code></td>
						<td><s:text name="td3-3-1" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.url</code></td>
						<td><s:text name="td3-3-2" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.username</code></td>
						<td><s:text name="td3-3-3" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.password</code></td>
						<td><s:text name="td3-3-4" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.pool_size</code></td>
						<td><s:text name="td3-3-5" /></td>
					</tr>
				</tbody>
			</table>
		 	<p><s:text name="p3-3-5" /></p>
		 	<p><s:text name="p3-3-6" /></p>
		 	<p><s:text name="p3-3-7" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.connection.driver_class = org.postgresql.Driver
hibernate.connection.url = jdbc:postgresql://localhost/mydatabase
hibernate.connection.username = myuser
hibernate.connection.password = secret
hibernate.c3p0.min_size=5
hibernate.c3p0.max_size=20
hibernate.c3p0.timeout=1800
hibernate.c3p0.max_statements=50
hibernate.dialect = org.hibernate.dialect.PostgreSQL82Dialect</pre>
		 	<p><s:text name="p3-3-8" /></p>
		 	<h5><strong><s:text name="tb3-3-2" /></strong></h5>
		 	<table class="table table-bordered">
		 		<thead>
		 			<tr>
		 				<th><s:text name="th1" /></th>
		 				<th><s:text name="th2" /></th>
		 			</tr>
		 		</thead>
		 		<tbody>
		 			<tr>
		 				<td><code>hibernate.connection.datasource</code></td>
		 				<td><s:text name="td3-3-6" /></td>
		 			</tr>
		 			<tr>
		 				<td><code>hibernate.jndi.url</code></td>
		 				<td><s:text name="td3-3-7" /></td>
		 			</tr>
		 			<tr>
		 				<td><code>hibernate.jndi.class</code></td>
		 				<td><s:text name="td3-3-8" /></td>
		 			</tr>
		 			<tr>
		 				<td><code>hibernate.connection.username</code></td>
		 				<td><s:text name="td3-3-9" /></td>
		 			</tr>
		 			<tr>
		 				<td><code>hibernate.connection.password</code></td>
		 				<td><s:text name="td3-3-10" /></td>
		 			</tr>
		 		</tbody>
		 	</table>
		 	<p><s:text name="p3-3-9" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.connection.datasource = java:/comp/env/jdbc/test
hibernate.transaction.factory_class = \
    org.hibernate.transaction.JTATransactionFactory
hibernate.transaction.manager_lookup_class = \
    org.hibernate.transaction.JBossTransactionManagerLookup
hibernate.dialect = org.hibernate.dialect.PostgreSQL82Dialect</pre>
		 	<p><s:text name="p3-3-10" /></p>
		 	<p><s:text name="p3-3-11" /></p>
		 	<p><s:text name="p3-3-12" /></p>
		 </div>
		<!--
		**********************************************************************************************************
		title3-4
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-4"><s:text name="title3-4" /></h2>
		 	<s:text name="p3-4-1" />
			<div class="alert alert-danger" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-exclamation-sign"></span> <s:text name="warning" /></h5>
				<p><s:text name="wc3-4-1" /></p>
			</div>
			<h5 id="tb3-4-1"><strong><s:text name="tb3-4-1" /></strong></h5>			
			<table class="table table-bordered">
				<thead>
					<tr>
						<th><s:text name="th1" /></th>
						<th><s:text name="th2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>hibernate.dialect</code></td>
						<td><s:text name="td3-4-1" /></td>
					</tr>
					<tr>
						<td><code>hibernate.show_sql</code></td>
						<td><s:text name="td3-4-2" /></td>
					</tr>
					<tr>
						<td><code>hibernate.format_sql</code></td>
						<td><s:text name="td3-4-3" /></td>
					</tr>
					<tr>
						<td><code>hibernate.default_schema</code></td>
						<td><s:text name="td3-4-4" /></td>
					</tr>
					<tr>
						<td><code>hibernate.default_catalog</code></td>
						<td><s:text name="td3-4-5" /></td>
					</tr>
					<tr>
						<td><code>hibernate.session_factory_name</code></td>
						<td><s:text name="td3-4-6" /></td>
					</tr>
					<tr>
						<td><code>hibernate.max_fetch_depth</code></td>
						<td><s:text name="td3-4-7" /></td>
					</tr>
					<tr>
						<td><code>hibernate.default_batch_fetch_size</code></td>
						<td><s:text name="td3-4-8" /></td>
					</tr>
					<tr>
						<td><code>hibernate.default_entity_mode</code></td>
						<td><s:text name="td3-4-9" /></td>
					</tr>
					<tr>
						<td><code>hibernate.order_updates</code></td>
						<td><s:text name="td3-4-10" /></td>
					</tr>
					<tr>
						<td><code>hibernate.generate_statistics</code></td>
						<td><s:text name="td3-4-11" /></td>
					</tr>
					<tr>
						<td><code>hibernate.use_identifier_rollback</code></td>
						<td><s:text name="td3-4-12" /></td>
					</tr>
					<tr>
						<td><code>hibernate.use_sql_comments</code></td>
						<td><s:text name="td3-4-13" /></td>
					</tr>
					<tr>
						<td><code>hibernate.id.new_generator_mappings</code></td>
						<td><s:text name="td3-4-14" /></td>
					</tr>
				</tbody>
			</table>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc-3-4-1" /></p>
			</div>
			<h5><strong><s:text name="tb3-4-2" /></strong></h5>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th><s:text name="th1" /></th>
						<th><s:text name="th2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>hibernate.jdbc.fetch_size</code></td>
						<td><s:text name="td3-4-15" /></td>
					</tr>
					<tr>
						<td><code>hibernate.jdbc.batch_size</code></td>
						<td><s:text name="td3-4-16" /></td>
					</tr>
					<tr>
						<td><code>hibernate.jdbc.batch_versioned_data</code></td>
						<td><s:text name="td3-4-17" /></td>
					</tr>
					<tr>
						<td><code>hibernate.jdbc.factory_class</code></td>
						<td><s:text name="td3-4-18" /></td>
					</tr>
					<tr>
						<td><code>hibernate.jdbc.use_scrollable_resultset</code></td>
						<td><s:text name="td3-4-19" /></td>
					</tr>
					<tr>
						<td><code>hibernate.jdbc.use_streams_for_binary</code></td>
						<td><s:text name="td3-4-20" /></td>
					</tr>
					<tr>
						<td><code>hibernate.jdbc.use_get_generated_keys</code></td>
						<td><s:text name="td3-4-21" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.provider_class</code></td>
						<td><s:text name="td3-4-22" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.isolation</code></td>
						<td><s:text name="td3-4-23" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.autocommit</code></td>
						<td><s:text name="td3-4-24" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.release_mode</code></td>
						<td><s:text name="td3-4-25" /></td>
					</tr>
					<tr>
						<td><code>hibernate.connection.&lt;propertyName&gt;</code></td>
						<td><s:text name="td3-4-26" /></td>
					</tr>
					<tr>
						<td><code>hibernate.jndi.&lt;propertyName&gt;</code></td>
						<td><s:text name="td3-4-27" /></td>
					</tr>
				</tbody>
			</table>
		 	<h5><strong><s:text name="tb3-4-3" /></strong></h5>
		 	<table class="table table-bordered">
		 		<thead>
					<tr>
						<th><s:text name="th1" /></th>
						<th><s:text name="th2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>hibernate.cache.provider_class</code></td>
						<td><s:text name="td3-4-28" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.use_minimal_puts</code></td>
						<td><s:text name="td3-4-29" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.use_query_cache</code></td>
						<td><s:text name="td3-4-30" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.use_second_level_cache</code></td>
						<td><s:text name="td3-4-31" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.query_cache_factory</code></td>
						<td><s:text name="td3-4-32" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.region_prefix</code></td>
						<td><s:text name="td3-4-33" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.use_structured_entries</code></td>
						<td><s:text name="td3-4-34" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.auto_evict_collection_cache</code></td>
						<td><s:text name="td3-4-35" /></td>
					</tr>
					<tr>
						<td><code>hibernate.cache.default_cache_concurrency_strategy</code></td>
						<td><s:text name="td3-4-36" /></td>
					</tr>
				</tbody>
		 	</table>
		 	<h5><strong><s:text name="tb3-4-4" /></strong></h5>
		 	<table class="table table-bordered">
		 		<thead>
					<tr>
						<th><s:text name="th1" /></th>
						<th><s:text name="th2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>hibernate.transaction.factory_class</code></td>
						<td><s:text name="td3-4-37" /></td>
					</tr>
					<tr>
						<td><code>jta.UserTransaction</code></td>
						<td><s:text name="td3-4-38" /></td>
					</tr>
					<tr>
						<td><code>hibernate.transaction.manager_lookup_class</code></td>
						<td><s:text name="td3-4-39" /></td>
					</tr>
					<tr>
						<td><code>hibernate.transaction.flush_before_completion</code></td>
						<td><s:text name="td3-4-40" /></td>
					</tr>
					<tr>
						<td><code>hibernate.transaction.auto_close_session</code></td>
						<td><s:text name="td3-4-41" /></td>
					</tr>
				</tbody>
			</table>
			<h5><strong><s:text name="tb3-4-5" /></strong></h5>
		 	<table class="table table-bordered">
		 		<thead>
					<tr>
						<th><s:text name="th1" /></th>
						<th><s:text name="th2" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>hibernate.current_session_context_class</code></td>
						<td><s:text name="td3-4-42" /></td>
					</tr>
					<tr>
						<td><code>hibernate.query.factory_class</code></td>
						<td><s:text name="td3-4-43" /></td>
					</tr>
					<tr>
						<td><code>hibernate.query.substitutions</code></td>
						<td><s:text name="td3-4-44" /></td>
					</tr>
					<tr>
						<td><code>hibernate.hbm2ddl.auto</code></td>
						<td><s:text name="td3-4-45" /></td>
					</tr>
					<tr>
						<td><code>hibernate.hbm2ddl.import_files</code></td>
						<td><s:text name="td3-4-46" /></td>
					</tr>
					<tr>
						<td><code>hibernate.hbm2ddl.import_files_sql_extractor</code></td>
						<td><s:text name="td3-4-47" /></td>
					</tr>
					<tr>
						<td><code>hibernate.bytecode.use_reflection_optimizer</code></td>
						<td><s:text name="td3-4-48" /></td>
					</tr>
					<tr>
						<td><code>hibernate.bytecode.provider</code></td>
						<td><s:text name="td3-4-49" /></td>
					</tr>
				</tbody>
			</table>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-4-1
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-4-1"><s:text name="title3-4-1" /></h3>
		 	<p><s:text name="p3-4-1-1" /></p>
		 	<h5><strong><s:text name="tb3-4-1-1" /></strong></h5>
		 	<table class="table table-bordered">
		 		<thead>
					<tr>
						<th><s:text name="th3" /></th>
						<th><s:text name="th4" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>CUBRID 8.3 and later</td>
						<td>org.hibernate.dialect.CUBRIDDialect</td>
					</tr>
					<tr>
						<td>DB2</td>
						<td>org.hibernate.dialect.DB2Dialect</td>
					</tr>
					<tr>
						<td>DB2 AS/400</td>
						<td>org.hibernate.dialect.DB2400Dialect</td>
					</tr>
					<tr>
						<td>DB2 OS390</td>
						<td>org.hibernate.dialect.DB2390Dialect</td>
					</tr>
					<tr>
						<td>Firebird</td>
						<td>org.hibernate.dialect.FirebirdDialect</td>
					</tr>
					<tr>
						<td>FrontBase</td>
						<td>org.hibernate.dialect.FrontbaseDialect</td>
					</tr>
					<tr>
						<td>H2</td>
						<td>org.hibernate.dialect.H2Dialect</td>
					</tr>
					<tr>
						<td>HyperSQL (HSQL)</td>
						<td>org.hibernate.dialect.HSQLDialect</td>
					</tr>
					<tr>
						<td>Informix</td>
						<td>org.hibernate.dialect.InformixDialect</td>
					</tr>
					<tr>
						<td>Ingres</td>
						<td>org.hibernate.dialect.IngresDialect</td>
					</tr>
					<tr>
						<td>Ingres 9</td>
						<td>org.hibernate.dialect.Ingres9Dialect</td>
					</tr>
					<tr>
						<td>Ingres 10</td>
						<td>org.hibernate.dialect.Ingres10Dialect</td>
					</tr>
					<tr>
						<td>Interbase</td>
						<td>org.hibernate.dialect.InterbaseDialect</td>
					</tr>
					<tr>
						<td>InterSystems Cache 2007.1</td>
						<td>org.hibernate.dialect.Cache71Dialect</td>
					</tr>
					<tr>
						<td>JDataStore</td>
						<td>org.hibernate.dialect.JDataStoreDialect</td>
					</tr>
					<tr>
						<td>Mckoi SQL</td>
						<td>org.hibernate.dialect.MckoiDialect</td>
					</tr>
					<tr>
						<td>Microsoft SQL Server 2000</td>
						<td>org.hibernate.dialect.SQLServerDialect</td>
					</tr>
					<tr>
						<td>Microsoft SQL Server 2005</td>
						<td>org.hibernate.dialect.SQLServer2005Dialect</td>
					</tr>
					<tr>
						<td>Microsoft SQL Server 2008</td>
						<td>org.hibernate.dialect.SQLServer2008Dialect</td>
					</tr>
					<tr>
						<td>Microsoft SQL Server 2012</td>
						<td>org.hibernate.dialect.SQLServer2012Dialect</td>
					</tr>
					<tr>
						<td>Mimer SQL</td>
						<td>org.hibernate.dialect.MimerSQLDialect</td>
					</tr>
					<tr>
						<td>MySQL</td>
						<td>org.hibernate.dialect.MySQLDialect</td>
					</tr>
					<tr>
						<td>MySQL with InnoDB</td>
						<td>org.hibernate.dialect.MySQLInnoDBDialect</td>
					</tr>
					<tr>
						<td>MySQL with MyISAM</td>
						<td>org.hibernate.dialect.MySQLMyISAMDialect</td>
					</tr>
					<tr>
						<td>MySQL5</td>
						<td>org.hibernate.dialect.MySQL5Dialect</td>
					</tr>
					<tr>
						<td>MySQL5 with InnoDB</td>
						<td>org.hibernate.dialect.MySQL5InnoDBDialect</td>
					</tr>
					<tr>
						<td>Oracle 8i</td>
						<td>org.hibernate.dialect.Oracle8iDialect</td>
					</tr>
					<tr>
						<td>Oracle 9i</td>
						<td>org.hibernate.dialect.Oracle9iDialect</td>
					</tr>
					<tr>
						<td>Oracle 10g and later</td>
						<td>org.hibernate.dialect.Oracle10gDialect</td>
					</tr>
					<tr>
						<td>Oracle TimesTen</td>
						<td>org.hibernate.dialect.TimesTenDialect</td>
					</tr>
					<tr>
						<td>Pointbase</td>
						<td>org.hibernate.dialect.PointbaseDialect</td>
					</tr>
					<tr>
						<td>PostgreSQL 8.1</td>
						<td>org.hibernate.dialect.PostgreSQL81Dialect</td>
					</tr>
					<tr>
						<td>PostgreSQL 8.2</td>
						<td>org.hibernate.dialect.PostgreSQL82Dialect</td>
					</tr>
					<tr>
						<td>PostgreSQL 9 and later</td>
						<td>org.hibernate.dialect.PostgreSQL9Dialect</td>
					</tr>
					<tr>
						<td>Progress</td>
						<td>org.hibernate.dialect.ProgressDialect</td>
					</tr>
					<tr>
						<td>SAP DB</td>
						<td>org.hibernate.dialect.SAPDBDialect</td>
					</tr>
					<tr>
						<td>SAP HANA (column store)</td>
						<td>org.hibernate.dialect.HANAColumnStoreDialect</td>
					</tr>
					<tr>
						<td>SAP HANA (row store)</td>
						<td>org.hibernate.dialect.HANARowStoreDialect</td>
					</tr>
					<tr>
						<td>Sybase</td>
						<td>org.hibernate.dialect.SybaseDialect</td>
					</tr>
					<tr>
						<td>Sybase 11</td>
						<td>org.hibernate.dialect.Sybase11Dialect</td>
					</tr>
					<tr>
						<td>Sybase ASE 15.5</td>
						<td>org.hibernate.dialect.SybaseASE15Dialect</td>
					</tr>
					<tr>
						<td>Sybase ASE 15.7</td>
						<td>org.hibernate.dialect.SybaseASE157Dialect</td>
					</tr>
					<tr>
						<td>Sybase Anywhere</td>
						<td>org.hibernate.dialect.SybaseAnywhereDialect</td>
					</tr>
					<tr>
						<td>Teradata</td>
						<td>org.hibernate.dialect.TeradataDialect</td>
					</tr>
					<tr>
						<td>Unisys OS 2200 RDMS</td>
						<td>org.hibernate.dialect.RDMSOS2200Dialect</td>
					</tr>
				</tbody>
			</table>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-4-2
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-4-2"><s:text name="title3-4-2" /></h3>
		 	<p><s:text name="p3-4-2-1" /></p>
		 	<p><s:text name="p3-4-2-2" /></p>
		 	<p><s:text name="p3-4-2-3" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-4-3
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-4-3"><s:text name="title3-4-3" /></h3>
		 	<p><s:text name="p3-4-3-1" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-4-4
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-4-4"><s:text name="title3-4-4" /></h3>
		 	<p><s:text name="p3-4-4-1" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-4-5
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-4-5"><s:text name="title3-4-5" /></h3>
		 	<p><s:text name="p3-4-5-1" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.query.substitutions true=1, false=0</pre>
			<p><s:text name="p3-4-5-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
hibernate.query.substitutions toLowercase=LOWER</pre>
			<p><s:text name="p3-4-5-3" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-4-6
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-4-6"><s:text name="title3-4-6" /></h3>
		 	<p><s:text name="p3-4-6-1" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-5
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-5"><s:text name="title3-5" /></h2>
		 	<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic3-5-1" /></p>
			</div>
			<p><s:text name="p3-5-1" /></p>
			<p><s:text name="p3-5-2" /></p>
			<h5><strong><s:text name="tb3-5-1" /></strong></h5>
			<table class="table table-bordered">
		 		<thead>
					<tr>
						<th><s:text name="th5" /></th>
						<th><s:text name="th6" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>org.hibernate.SQL</code></td>
						<td><s:text name="td3-5-1" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.type</code></td>
						<td><s:text name="td3-5-2" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.tool.hbm2ddl</code></td>
						<td><s:text name="td3-5-3" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.pretty</code></td>
						<td><s:text name="td3-5-4" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.cache</code></td>
						<td><s:text name="td3-5-5" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction</code></td>
						<td><s:text name="td3-5-6" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.jdbc</code></td>
						<td><s:text name="td3-5-7" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.hql.internal.ast.AST</code></td>
						<td><s:text name="td3-5-8" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate.secure</code></td>
						<td><s:text name="td3-5-9" /></td>
					</tr>
					<tr>
						<td><code>org.hibernate</code></td>
						<td><s:text name="td3-5-10" /></td>
					</tr>
				</tbody>
			</table>
			<p><s:text name="p3-5-3" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-6
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-6"><s:text name="title3-6" /></h2>
		 	<p><s:text name="p3-6-1" /></p>
		 	<p><s:text name="p3-6-2" /></p>
		 	<p><s:text name="p3-6-3" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
SessionFactory sf = new Configuration()
   .setNamingStrategy(ImprovedNamingStrategy.INSTANCE)
   .addFile("Item.hbm.xml")
   .addFile("Bid.hbm.xml")
   .buildSessionFactory();</pre>
   			<p><s:text name="p3-6-4" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-7
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-7"><s:text name="title3-7" /></h2>
		 	<p><s:text name="p3-7-1" /></p>
		 	<ul>
		 		<li><p><s:text name="li3-7-1" /></p></li>
		 		<li><p><s:text name="li3-7-2" /></p></li>
		 		<li><p><s:text name="li3-7-3" /></p></li>
		 	</ul>
		 	<p><s:text name="p3-7-2" /></p>
		 	<p><s:text name="p3-7-3" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
SessionFactory sf = new Configuration()
   .setPersisterClassProvider(customPersisterClassProvider)
   .addAnnotatedClass(Order.class)
   .buildSessionFactory();</pre>
   			<p><s:text name="p3-7-4" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-8
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-8"><s:text name="title3-8" /></h2>
		 	<p><s:text name="p3-8-1" /></p>
		 	<p><s:text name="p3-8-2" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;?xml version='1.0' encoding='utf-8'?&gt;
&lt;!DOCTYPE hibernate-configuration PUBLIC
    "-//Hibernate/Hibernate Configuration DTD//EN"
    "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd"&gt;

&lt;hibernate-configuration&gt;

    &lt;!-- a SessionFactory instance listed as /jndi/name --&gt;
    &lt;session-factory
        name="java:hibernate/SessionFactory"&gt;

        &lt;!-- properties --&gt;
        &lt;property name="connection.datasource"&gt;java:/comp/env/jdbc/MyDB&lt;/property&gt;
        &lt;property name="dialect"&gt;org.hibernate.dialect.MySQLDialect&lt;/property&gt;
        &lt;property name="show_sql"&gt;false&lt;/property&gt;
        &lt;property name="transaction.factory_class"&gt;
            org.hibernate.transaction.JTATransactionFactory
        &lt;/property&gt;
        &lt;property name="jta.UserTransaction"&gt;java:comp/UserTransaction&lt;/property&gt;

        &lt;!-- mapping files --&gt;
        &lt;mapping resource="org/hibernate/auction/Item.hbm.xml"/&gt;
        &lt;mapping resource="org/hibernate/auction/Bid.hbm.xml"/&gt;

        &lt;!-- cache settings --&gt;
        &lt;class-cache class="org.hibernate.auction.Item" usage="read-write"/&gt;
        &lt;class-cache class="org.hibernate.auction.Bid" usage="read-only"/&gt;
        &lt;collection-cache collection="org.hibernate.auction.Item.bids" usage="read-write"/&gt;

    &lt;/session-factory&gt;

&lt;/hibernate-configuration&gt;</pre>
			<p><s:text name="p3-8-3" /></p>
			<p><s:text name="p3-8-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
SessionFactory sf = new Configuration().configure().buildSessionFactory();</pre>
		 	<p><s:text name="p3-8-5" /></p>
		 	<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
SessionFactory sf = new Configuration()
   .configure("catdb.cfg.xml")
   .buildSessionFactory();</pre>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-9
		**********************************************************************************************************
		 -->
		 <div>
		 	<h2 id="c3-9"><s:text name="title3-9" /></h2>
		 	<p><s:text name="p3-9-1" /></p>
		 	<ul>
		 		<li><s:text name="li3-9-1" /></li>
		 		<li><s:text name="li3-9-2" /></li>
		 		<li><s:text name="li3-9-3" /></li>
		 		<li><s:text name="li3-9-4" /></li>
		 	</ul>
		 	<p><s:text name="p3-9-2" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-9-1
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-9-1"><s:text name="title3-9-1" /></h3>
		 	<p><s:text name="p3-9-1-1" /></p>
		 	<p><s:text name="p3-9-1-2" /></p>
		 	<p><s:text name="p3-9-1-3" /></p>
		 	<dl>
		 		<dt><code>org.hibernate.transaction.JDBCTransactionFactory</code></dt>
		 		<dd><s:text name="dd3-9-1-1" /></dd>
		 		<dt><code>org.hibernate.transaction.JTATransactionFactory</code></dt>
		 		<dd><s:text name="dd3-9-1-2" /></dd>
		 		<dt><code>org.hibernate.transaction.CMTTransactionFactory</code></dt>
		 		<dd><s:text name="dd3-9-1-3" /></dd>
		 	</dl>
		 	<p><s:text name="p3-9-1-4" /></p>
		 	<p><s:text name="p3-9-1-5" /></p>
		 	<h5><strong><s:text name="tb3-9-1-1" /></strong></h5>
		 	<table class="table table-bordered">
		 		<thead>
					<tr>
						<th><s:text name="th7" /></th>
						<th><s:text name="th8" /></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><code>org.hibernate.transaction.JBossTransactionManagerLookup</code></td>
						<td>JBoss AS</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.WeblogicTransactionManagerLookup</code></td>
						<td>Weblogic</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.WebSphereTransactionManagerLookup</code></td>
						<td>WebSphere</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.WebSphereExtendedJTATransactionLookup</code></td>
						<td>WebSphere 6</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.OrionTransactionManagerLookup</code></td>
						<td>Orion</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.ResinTransactionManagerLookup</code></td>
						<td>Resin</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.JOTMTransactionManagerLookup</code></td>
						<td>JOTM</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.JOnASTransactionManagerLookup</code></td>
						<td>JOnAS</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.JRun4TransactionManagerLookup</code></td>
						<td>JRun4</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.BESTransactionManagerLookup</code></td>
						<td>Borland ES</td>
					</tr>
					<tr>
						<td><code>org.hibernate.transaction.JBossTSStandaloneTransactionManagerLookup</code></td>
						<td>JBoss TS used standalone (ie. outside JBoss AS and a JNDI environment generally). Known to work for org.jboss.jbossts:jbossjta:4.11.0.Final</td>
					</tr>
				</tbody>
			</table>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-9-2
		**********************************************************************************************************
		 -->
		 <div>
		 	<h3 id="c3-9-2"><s:text name="title3-9-2" /></h3>
		 	<p><s:text name="p3-9-2-1" /></p>
		 	<p><s:text name="p3-9-2-2" /></p>
		 	<p><s:text name="p3-9-2-3" /></p>
		 	<p><s:text name="p3-9-2-4" /></p>
		 	<p><s:text name="p3-9-2-5" /></p>
		 	<p><s:text name="p3-9-2-6" /></p>
		 </div>
		 <!--
		**********************************************************************************************************
		title3-9-3
		**********************************************************************************************************
		 -->
		<div>
		 	<h3 id="c3-9-3"><s:text name="title3-9-3" /></h3>
		 	<p><s:text name="p3-9-3-1" /></p>
		 </div>
	</s:i18n>
</div>