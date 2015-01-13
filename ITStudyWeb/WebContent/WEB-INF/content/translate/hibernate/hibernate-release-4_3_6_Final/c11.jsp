<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c11">
		<div>
			<h1 id="c11"><s:text name="title11" /></h1>
			<p><s:text name="p11-1" /></p>
			<p><s:text name="p11-2" /></p>
		</div>
		<div>
			<h2 id="c11-1"><s:text name="title11-1" /></h2>
			<p><s:text name="p11-1-1" /></p>
			<ul>
				<li><s:text name="li11-1-1-1" /></li>
				<li><s:text name="li11-1-1-2" /></li>
				<li><s:text name="li11-1-1-3" /></li>
			</ul>
			<p><s:text name="p11-1-2" /></p>
		</div>
		<div>
			<h2 id="c11-2"><s:text name="title11-2" /></h2>
			<p><s:text name="p11-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
DomesticCat fritz = new DomesticCat();
fritz.setColor(Color.GINGER);
fritz.setSex('M');
fritz.setName("Fritz");
Long generatedId = (Long) sess.save(fritz);</pre>
			<p><s:text name="p11-2-2" /></p>
			<ul>
				<li><s:text name="li11-2-1-1" /></li>
				<li><s:text name="li11-2-1-2" /></li>
			</ul>
			<p><s:text name="p11-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
DomesticCat pk = new DomesticCat();
pk.setColor(Color.TABBY);
pk.setSex('F');
pk.setName("PK");
pk.setKittens( new HashSet() );
pk.addKitten(fritz);
sess.save( pk, new Long(1234) );</pre>
			<p><s:text name="p11-2-4" /></p>
			<p><s:text name="p11-2-5" /></p>
		</div>
		<div>
			<h2 id="c11-3"><s:text name="title11-3" /></h2>
			<p><s:text name="p11-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat fritz = (Cat) sess.load(Cat.class, generatedId);</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// you need to wrap primitive identifiers
long id = 1234;
DomesticCat pk = (DomesticCat) sess.load( DomesticCat.class, new Long(id) );</pre>
			<p><s:text name="p11-3-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat cat = new DomesticCat();
// load pk's state into cat
sess.load( cat, new Long(pkId) );
Set kittens = cat.getKittens();</pre>
			<p><s:text name="p11-3-3" /></p>
			<p><s:text name="p11-3-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat cat = (Cat) sess.get(Cat.class, id);
if (cat==null) {
    cat = new Cat();
    sess.save(cat, id);
}
return cat;</pre>
			<p><s:text name="p11-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat cat = (Cat) sess.get(Cat.class, id, LockMode.UPGRADE);</pre>
			<p><s:text name="p11-3-6" /></p>
			<p><s:text name="p11-3-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.save(cat);
sess.flush(); //force the SQL INSERT
sess.refresh(cat); //re-read the state (after the trigger executes)</pre>
			<p><s:text name="p11-3-8" /></p>
		</div>
		<div>
			<h2 id="c11-4"><s:text name="title11-4" /></h2>
			<p><s:text name="p11-4-1" /></p>
		</div>
		<div>
			<h3 id="c11-4-1"><s:text name="title11-4-1" /></h3>
			<p><s:text name="p11-4-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
List cats = session.createQuery(
    "from Cat as cat where cat.birthdate &lt; ?")
    .setDate(0, date)
    .list();

List mothers = session.createQuery(
    "select mother from Cat as cat join cat.mother as mother where cat.name = ?")
    .setString(0, name)
    .list();

List kittens = session.createQuery(
    "from Cat as cat where cat.mother = ?")
    .setEntity(0, pk)
    .list();

Cat mother = (Cat) session.createQuery(
    "select cat.mother from Cat as cat where cat = ?")
    .setEntity(0, izi)
    .uniqueResult();]]

Query mothersWithKittens = (Cat) session.createQuery(
    "select mother from Cat as mother left join fetch mother.kittens");
Set uniqueMothers = new HashSet(mothersWithKittens.list());</pre>
			<p><s:text name="p11-4-1-2" /></p>
		</div>
		<div>
			<h4 id="c11-4-1-1"><s:text name="title11-4-1-1" /></h4>
			<p><s:text name="p11-4-1-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// fetch ids
Iterator iter = sess.createQuery("from eg.Qux q order by q.likeliness").iterate();
while ( iter.hasNext() ) {
    Qux qux = (Qux) iter.next();  // fetch the object
    // something we couldnt express in the query
    if ( qux.calculateComplicatedAlgorithm() ) {
        // delete the current instance
        iter.remove();
        // dont need to process the rest
        break;
    }
}</pre>
		</div>
		<div>
			<h4 id="c11-4-1-2"><s:text name="title11-4-1-2" /></h4>
			<p><s:text name="p11-4-1-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Iterator kittensAndMothers = sess.createQuery(
            "select kitten, mother from Cat kitten join kitten.mother mother")
            .list()
            .iterator();

while ( kittensAndMothers.hasNext() ) {
    Object[] tuple = (Object[]) kittensAndMothers.next();
    Cat kitten = (Cat) tuple[0];
    Cat mother = (Cat) tuple[1];
    ....
}</pre>
		</div>
		<div>
			<h4 id="c11-4-1-3"><s:text name="title11-4-1-3" /></h4>
			<p><s:text name="p11-4-1-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Iterator results = sess.createQuery(
        "select cat.color, min(cat.birthdate), count(cat) from Cat cat " +
        "group by cat.color")
        .list()
        .iterator();

while ( results.hasNext() ) {
    Object[] row = (Object[]) results.next();
    Color type = (Color) row[0];
    Date oldest = (Date) row[1];
    Integer count = (Integer) row[2];
    .....
}</pre>
		</div>
		<div>
			<h4 id="c11-4-1-4"><s:text name="title11-4-1-4" /></h4>
			<p><s:text name="p11-4-1-4-1" /></p>
			<ul>
				<li><s:text name="li11-4-1-4-1-1" /></li>
				<li><s:text name="li11-4-1-4-1-2" /></li>
				<li><s:text name="li11-4-1-4-1-3" /></li>
			</ul>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
//named parameter (preferred)
Query q = sess.createQuery("from DomesticCat cat where cat.name = :name");
q.setString("name", "Fritz");
Iterator cats = q.iterate();</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
//positional parameter
Query q = sess.createQuery("from DomesticCat cat where cat.name = ?");
q.setString(0, "Izi");
Iterator cats = q.iterate();</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
//named parameter list
List names = new ArrayList();
names.add("Izi");
names.add("Fritz");
Query q = sess.createQuery("from DomesticCat cat where cat.name in (:namesList)");
q.setParameterList("namesList", names);
List cats = q.list();</pre>
		</div>
		<div>
			<h4 id="c11-4-1-5"><s:text name="title11-4-1-5" /></h4>
			<p><s:text name="p11-4-1-5-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Query q = sess.createQuery("from DomesticCat cat");
q.setFirstResult(20);
q.setMaxResults(10);
List cats = q.list();</pre>
			<p><s:text name="p11-4-1-5-2" /></p>
		</div>
		<div>
			<h4 id="c11-4-1-6"><s:text name="title11-4-1-6" /></h4>
			<p><s:text name="p11-4-1-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Query q = sess.createQuery("select cat.name, cat from DomesticCat cat " +
                            "order by cat.name");
ScrollableResults cats = q.scroll();
if ( cats.first() ) {

    // find the first name on each page of an alphabetical list of cats by name
    firstNamesOfPages = new ArrayList();
    do {
        String name = cats.getString(0);
        firstNamesOfPages.add(name);
    }
    while ( cats.scroll(PAGE_SIZE) );

    // Now get the first page of cats
    pageOfCats = new ArrayList();
    cats.beforeFirst();
    int i=0;
    while( ( PAGE_SIZE &gt; i++ ) &amp;&amp; cats.next() ) pageOfCats.add( cats.get(1) );

}
cats.close()</pre>
			<p><s:text name="p11-4-1-6-2" /></p>
		</div>
		<div>
			<h4 id="c11-4-1-7"><s:text name="title11-4-1-7" /></h4>
			<p><s:text name="p11-4-1-7-1" /></p>
			<div class="example"><a id="example-named-query-annotation"><p class="title"><strong>Example&nbsp;11.1.&nbsp;Defining a named query using
          <code class="classname">@NamedQuery</code></strong></p><div class="example-contents">
          

          <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span>
<!--  --><br><span class="java_plain">@</span><span class="java_type">NamedQuery</span><span class="java_separator">(</span><span class="java_plain">name</span><span class="java_operator">=</span><span class="java_literal">"night.moreRecentThan"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;query</span><span class="java_operator">=</span><span class="java_literal">"select&nbsp;n&nbsp;from&nbsp;Night&nbsp;n&nbsp;where&nbsp;n.date&nbsp;&gt;=&nbsp;:date"</span><span class="java_separator">)</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Night</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">MyDao</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;doStuff</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">Query</span><span class="java_plain">&nbsp;q&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;s</span><span class="java_separator">.</span><span class="java_plain">getNamedQuery</span><span class="java_separator">(</span><span class="java_literal">"night.moreRecentThan"</span><span class="java_separator">);</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q</span><span class="java_separator">.</span><span class="java_plain">setDate</span><span class="java_separator">(</span><span class="java_plain">&nbsp;</span><span class="java_literal">"date"</span><span class="java_separator">,</span><span class="java_plain">&nbsp;aMonthAgo&nbsp;</span><span class="java_separator">);</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_type">List</span><span class="java_plain">&nbsp;results&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;q</span><span class="java_separator">.</span><span class="java_plain">list</span><span class="java_separator">();</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">}</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="java_separator">...</span>
<!--  --><br><span class="java_separator">}</span><span class="java_plain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></pre>
        </div></a></div>
			<p><s:text name="p11-4-1-7-2" /></p>
			<div class="example"><a id="example-named-query-annotation"></a><a id="d5e6392"><p class="title"><strong>Example&nbsp;11.2.&nbsp;Defining a named query using
          <code class="literal">&lt;query&gt;</code></strong></p><div class="example-contents">
          

          <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;query name="ByNameAndMaximumWeight"&gt;&lt;![CDATA[
    from eg.DomesticCat as cat
        where cat.name = ?
        and cat.weight &gt; ?
] ]&gt;&lt;/query&gt;</pre>
        </div></a></div>
			<p><s:text name="p11-4-1-7-3" /></p>
			<div class="example"><a id="example-parameter-binding-named-query"><p class="title"><strong>Example&nbsp;11.3.&nbsp;Parameter binding of a named query</strong></p><div class="example-contents">
          

          <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Query q = sess.getNamedQuery("ByNameAndMaximumWeight");
q.setString(0, name);
q.setInt(1, minWeight);
List cats = q.list();</pre>
        </div></a></div>
			<p><s:text name="p11-4-1-7-4" /></p>
			<p><s:text name="p11-4-1-7-5" /></p>
		</div>
		<div>
			<h3 id="c11-4-2"><s:text name="title11-4-2" /></h3>
			<p><s:text name="p11-4-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Collection blackKittens = session.createFilter(
    pk.getKittens(), 
    "where this.color = ?")
    .setParameter( Color.BLACK, Hibernate.custom(ColorUserType.class) )
    .list()
);</pre>
			<p><s:text name="p11-4-2-2" /></p>
			<p><s:text name="p11-4-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Collection blackKittenMates = session.createFilter(
    pk.getKittens(), 
    "select this.mate where this.color = eg.Color.BLACK.intValue")
    .list();</pre>
			<p><s:text name="p11-4-2-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Collection tenKittens = session.createFilter(
    mother.getKittens(), "")
    .setFirstResult(0).setMaxResults(10)
    .list();</pre>
		</div>
		<div>
			<h3 id="c11-4-3"><s:text name="title11-4-3" /></h3>
			<p><s:text name="p11-4-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Criteria crit = session.createCriteria(Cat.class);
crit.add( Restrictions.eq( "color", eg.Color.BLACK ) );
crit.setMaxResults(10);
List cats = crit.list();</pre>
			<p><s:text name="p11-4-3-2" /></p>
		</div>
		<div>
			<h3 id="c11-4-4"><s:text name="title11-4-4" /></h3>
			<p><s:text name="p11-4-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
List cats = session.createSQLQuery("SELECT {cat.*} FROM CAT {cat} WHERE ROWNUM&lt;10")
    .addEntity("cat", Cat.class)
.list();</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
List cats = session.createSQLQuery(
    "SELECT {cat}.ID AS {cat.id}, {cat}.SEX AS {cat.sex}, " +
           "{cat}.MATE AS {cat.mate}, {cat}.SUBCLASS AS {cat.class}, ... " +
    "FROM CAT {cat} WHERE ROWNUM&lt;10")
    .addEntity("cat", Cat.class)
.list()</pre>
			<p><s:text name="p11-4-4-2" /></p>
		</div>
		<div>
			<h2 id="c11-5"><s:text name="title11-5" /></h2>
			<p><s:text name="p11-5-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
DomesticCat cat = (DomesticCat) sess.load( Cat.class, new Long(69) );
cat.setName("PK");
sess.flush();  // changes to cat are automatically detected and persisted</pre>
			<p><s:text name="p11-5-2" /></p>
		</div>
		<div>
			<h2 id="c11-6"><s:text name="title11-6" /></h2>
			<p><s:text name="p11-6-1" /></p>
			<p><s:text name="p11-6-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// in the first session
Cat cat = (Cat) firstSession.load(Cat.class, catId);
Cat potentialMate = new Cat();
firstSession.save(potentialMate);

// in a higher layer of the application
cat.setMate(potentialMate);

// later, in a new session
secondSession.update(cat);  // update cat
secondSession.update(mate); // update mate</pre>
			<p><s:text name="p11-6-3" /></p>
			<p><s:text name="p11-6-4" /></p>
			<p><s:text name="p11-6-5" /></p>
			<p><s:text name="p11-6-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
//just reassociate:
sess.lock(fritz, LockMode.NONE);
//do a version check, then reassociate:
sess.lock(izi, LockMode.READ);
//do a version check, using SELECT ... FOR UPDATE, then reassociate:
sess.lock(pk, LockMode.UPGRADE);</pre>
			<p><s:text name="p11-6-7" /></p>
			<p><s:text name="p11-6-8" /></p>
		</div>
		<div>
			<h2 id="c11-7"><s:text name="title11-7" /></h2>
			<p><s:text name="p11-7-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
// in the first session
Cat cat = (Cat) firstSession.load(Cat.class, catID);

// in a higher tier of the application
Cat mate = new Cat();
cat.setMate(mate);

// later, in a new session
secondSession.saveOrUpdate(cat);   // update existing state (cat has a non-null id)
secondSession.saveOrUpdate(mate);  // save the new instance (mate has a null id)</pre>
			<p><s:text name="p11-7-2" /></p>
			<p><s:text name="p11-7-3" /></p>
			<ul>
				<li><s:text name="li11-7-1-1" /></li>
				<li><s:text name="li11-7-1-2" /></li>
				<li><s:text name="li11-7-1-3" /></li>
				<li><s:text name="li11-7-1-4" /></li>
				<li><s:text name="li11-7-1-5" /></li>
			</ul>
			<p><s:text name="p11-7-4" /></p>
			<ul>
				<li><s:text name="li11-7-2-1" /></li>
				<li><s:text name="li11-7-2-2" /></li>
				<li><s:text name="li11-7-2-3" /></li>
				<li><s:text name="li11-7-2-4" /></li>
				<li><s:text name="li11-7-2-5" /></li>
				<li><s:text name="li11-7-2-6" /></li>
			</ul>
			<p><s:text name="p11-7-5" /></p>
			<ul>
				<li><s:text name="li11-7-3-1" /></li>
				<li><s:text name="li11-7-3-2" /></li>
				<li><s:text name="li11-7-3-3" /></li>
				<li><s:text name="li11-7-3-4" /></li>
			</ul>
		</div>
		<div>
			<h2 id="c11-8"><s:text name="title11-8" /></h2>
			<p><s:text name="p11-8-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess.delete(cat);</pre>
			<p><s:text name="p11-8-2" /></p>
		</div>
		<div>
			<h2 id="c11-9"><s:text name="title11-9" /></h2>
			<p><s:text name="p11-9-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
//retrieve a cat from one database
Session session1 = factory1.openSession();
Transaction tx1 = session1.beginTransaction();
Cat cat = session1.get(Cat.class, catId);
tx1.commit();
session1.close();

//reconcile with a second database
Session session2 = factory2.openSession();
Transaction tx2 = session2.beginTransaction();
session2.replicate(cat, ReplicationMode.LATEST_VERSION);
tx2.commit();
session2.close();</pre>
			<p><s:text name="p11-9-2" /></p>
			<ul>
				<li><s:text name="li11-9-1-1" /></li>
				<li><s:text name="li11-9-1-2" /></li>
				<li><s:text name="li11-9-1-3" /></li>
				<li><s:text name="li11-9-1-4" /></li>
			</ul>
			<p><s:text name="p11-9-3" /></p>
		</div>
		<div>
			<h2 id="c11-10"><s:text name="title11-10" /></h2>
			<p><s:text name="p11-10-1" /></p>
			<ul>
				<li><s:text name="li11-10-1-1" /></li>
				<li><s:text name="li11-10-1-2" /></li>
				<li><s:text name="li11-10-1-3" /></li>
			</ul>
			<p><s:text name="p11-10-2" /></p>
			<ol>
				<li><s:text name="li11-10-2-1" /></li>
				<li><s:text name="li11-10-2-2" /></li>
				<li><s:text name="li11-10-2-3" /></li>
				<li><s:text name="li11-10-2-4" /></li>
				<li><s:text name="li11-10-2-5" /></li>
				<li><s:text name="li11-10-2-6" /></li>
			</ol>
			<p><s:text name="p11-10-3" /></p>
			<p><s:text name="p11-10-4" /></p>
			<p><s:text name="p11-10-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
sess = sf.openSession();
Transaction tx = sess.beginTransaction();
sess.setFlushMode(FlushMode.COMMIT); // allow queries to return stale state

Cat izi = (Cat) sess.load(Cat.class, id);
izi.setName(iznizi);

// might return stale data
sess.find("from Cat as cat left outer join cat.kittens kitten");

// change to izi is not flushed!
...
tx.commit(); // flush occurs
sess.close();</pre>
			<p><s:text name="p11-10-6" /></p>			
		</div>
		<div>
			<h2 id="c11-11"><s:text name="title11-11" /></h2>
			<p><s:text name="p11-11-1" /></p>
			<p><s:text name="p11-11-2" /></p>
			<p><s:text name="p11-11-3" /></p>
			<p><s:text name="p11-11-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;one-to-one name="person" cascade="persist"/&gt;</pre>
			<p><s:text name="p11-11-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;one-to-one name="person" cascade="persist,delete,lock"/&gt;</pre>
			<p><s:text name="p11-11-6" /></p>
			<p><s:text name="p11-11-7" /></p>
			<ul>
				<li><s:text name="li11-11-1-1" /></li>
				<li><s:text name="li11-11-1-2" /></li>
				<li><s:text name="li11-11-1-3" /></li>
				<li><s:text name="li11-11-1-4" /></li>
				<li><s:text name="li11-11-1-5" /></li>
				<li><s:text name="li11-11-1-6" /></li>
			</ul>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc11-11-1" /></p>
			</div>
			<p><s:text name="p11-11-8" /></p>
			<div class="example"><a id="example-one-to-many-with-orphan-removal"><p class="title"><strong>Example&nbsp;11.4.&nbsp;<code class="literal">@OneToMany</code> with
      <code class="literal">orphanRemoval</code></strong></p><div class="example-contents">
      

      <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="JAVA">
<!-- <br/> --><span class="java_plain">@</span><!-- <br/> --><span class="java_type">Entity</span><!-- <br/> --><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Customer</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">private</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;@</span><span class="java_type">OneToMany</span><span class="java_separator">(</span><span class="java_plain">cascade</span><span class="java_operator">=</span><span class="java_type">CascadeType</span><span class="java_separator">.</span><span class="java_plain">ALL</span><span class="java_separator">,</span><span class="java_plain">&nbsp;orphanRemoval</span><span class="java_operator">=</span><span class="java_literal">true</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;getOrders</span><span class="java_separator">()</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">return</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_type">void</span><span class="java_plain">&nbsp;setOrders</span><span class="java_separator">(</span><span class="java_type">Set</span><span class="java_operator">&lt;</span><span class="java_type">Order</span><span class="java_operator">&gt;</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">)</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_keyword">this</span><span class="java_separator">.</span><span class="java_plain">orders&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;orders</span><span class="java_separator">;</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">&nbsp;&nbsp;&nbsp;</span><span class="java_separator">[...]</span>
<!--  --><br><span class="java_separator">}</span>

<!--  --><br><span class="java_plain">@</span><span class="java_type">Entity</span><span class="java_plain">&nbsp;</span>
<!--  --><br><span class="java_keyword">public</span><span class="java_plain">&nbsp;</span><span class="java_keyword">class</span><span class="java_plain">&nbsp;</span><span class="java_type">Order</span><span class="java_plain">&nbsp;</span><span class="java_separator">{</span><span class="java_plain">&nbsp;</span><span class="java_separator">...</span><span class="java_plain">&nbsp;</span><span class="java_separator">}</span>

<!--  --><br><span class="java_type">Customer</span><span class="java_plain">&nbsp;customer&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;em</span><span class="java_separator">.</span><span class="java_plain">find</span><span class="java_separator">(</span><span class="java_type">Customer</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_literal">1l</span><span class="java_separator">);</span>
<!--  --><br><span class="java_type">Order</span><span class="java_plain">&nbsp;order&nbsp;</span><span class="java_operator">=</span><span class="java_plain">&nbsp;em</span><span class="java_separator">.</span><span class="java_plain">find</span><span class="java_separator">(</span><span class="java_type">Order</span><span class="java_separator">.</span><span class="java_keyword">class</span><span class="java_separator">,</span><span class="java_plain">&nbsp;</span><span class="java_literal">1l</span><span class="java_separator">);</span>
<!--  --><br><span class="java_plain">customer</span><span class="java_separator">.</span><span class="java_plain">getOrders</span><span class="java_separator">().</span><span class="java_plain">remove</span><span class="java_separator">(</span><span class="java_plain">order</span><span class="java_separator">);</span><span class="java_plain">&nbsp;</span><span class="java_operator">//</span><span class="java_plain">order&nbsp;will&nbsp;be&nbsp;deleted&nbsp;by&nbsp;cascade</span></pre>
    </div></a></div>
			<p><s:text name="p11-11-9" /></p>
			<ul>
				<li><s:text name="li11-11-2-1" /></li>
				<li><s:text name="li11-11-2-2" /></li>
				<li><s:text name="li11-11-2-3" /></li>
			</ul>
			<p><s:text name="p11-11-10" /></p>
			<p><s:text name="p11-11-11" /></p>
			<ul>
				<li><s:text name="li11-11-3-1" /></li>
				<li><s:text name="li11-11-3-2" /></li>
				<li><s:text name="li11-11-3-3" /></li>
				<li><s:text name="li11-11-3-4" /></li>
				<li><s:text name="li11-11-3-5" /></li>
				<li><s:text name="li11-11-3-6" /></li>
			</ul>
			<p><s:text name="p11-11-12" /></p>
		</div>
		<div>
			<h2 id="c11-12"><s:text name="title11-12" /></h2>
			<p><s:text name="p11-12-1" /></p>
			<p><s:text name="p11-12-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Cat fritz = ......;
ClassMetadata catMeta = sessionfactory.getClassMetadata(Cat.class);

Object[] propertyValues = catMeta.getPropertyValues(fritz);
String[] propertyNames = catMeta.getPropertyNames();
Type[] propertyTypes = catMeta.getPropertyTypes();

// get a Map of all properties which are not collections or associations
Map namedValues = new HashMap();
for ( int i=0; i&lt;propertyNames.length; i++ ) {
    if ( !propertyTypes[i].isEntityType() &amp;&amp; !propertyTypes[i].isCollectionType() ) {
        namedValues.put( propertyNames[i], propertyValues[i] );
    }
}</pre>
		</div>
	</s:i18n>
</div>