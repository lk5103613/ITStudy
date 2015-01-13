<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c16">
		<div>
			<h1 id="c16"><s:text name="title16" /></h1>
			<p><s:text name="p16-1" /></p>
		</div>
		<div>
			<h2 id="c16-1"><s:text name="title16-1" /></h2>
			<p><s:text name="p16-1-1" /></p>
			<p><s:text name="p16-1-2" /></p>
		</div>
		<div>
			<h2 id="c16-2"><s:text name="title16-2" /></h2>
			<p><s:text name="p16-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from eg.Cat</pre>
			<p><s:text name="p16-2-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat</pre>
			<p><s:text name="p16-2-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Formula, Parameter</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Formula as form, Parameter as param</pre>
			<p><s:text name="p16-2-4" /></p>
		</div>
		<div>
			<h2 id="c16-3"><s:text name="title16-3" /></h2>
			<p><s:text name="p16-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat
    inner join cat.mate as mate
    left outer join cat.kittens as kitten</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat left join cat.mate.kittens as kittens</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Formula form full join form.parameter param</pre>
			<p><s:text name="p16-3-2" /></p>
			<ul>
				<li><s:text name="li16-3-1-1" /></li>
				<li><s:text name="li16-3-1-2" /></li>
				<li><s:text name="li16-3-1-3" /></li>
				<li><s:text name="li16-3-1-4" /></li>
			</ul>
			<p><s:text name="p16-3-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat
    join cat.mate as mate
    left join cat.kittens as kitten</pre>
			<p><s:text name="p16-3-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat
    left join cat.kittens as kitten
        with kitten.bodyWeight &gt; 10.0</pre>
			<p><s:text name="p16-3-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat
    inner join fetch cat.mate
    left join fetch cat.kittens</pre>
			<p><s:text name="p16-3-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat
    inner join fetch cat.mate
    left join fetch cat.kittens child
    left join fetch child.kittens</pre>
			<p><s:text name="p16-3-7" /></p>
			<p><s:text name="p16-3-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Document fetch all properties order by name</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Document doc fetch all properties where lower(doc.name) like '%cats%'</pre>			
		</div>
		<div>
			<h2 id="c16-4"><s:text name="title16-4" /></h2>
			<p><s:text name="p16-4-1" /></p>
			<p><s:text name="p16-4-2" /></p>
			<p><s:text name="p16-4-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat where cat.mate.name like '%s%'</pre>
		</div>
		<div>
			<h2 id="c16-5"><s:text name="title16-5" /></h2>
			<p><s:text name="p16-5-1" /></p>
			<ul>
				<li><s:text name="li16-5-1-1" /></li>
				<li><s:text name="li16-5-1-2" /></li>
			</ul>
			<p><s:text name="p16-5-2" /></p>
			<div class="alert alert-warning" role="alert">
				<h5 class="lead"><span class="glyphicon glyphicon-warning-sign"></span> <s:text name="important" /></h5>
				<p><s:text name="ic16-5-1" /></p>
			</div>
		</div>
		<div>
			<h2 id="c16-6"><s:text name="title16-6" /></h2>
			<p><s:text name="p16-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select mate
from Cat as cat
    inner join cat.mate as mate</pre>
			<p><s:text name="p16-6-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat.mate from Cat cat</pre>
			<p><s:text name="p16-6-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat.name from DomesticCat cat
where cat.name like 'fri%'</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cust.name.firstName from Customer as cust</pre>
			<p><s:text name="p16-6-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select mother, offspr, mate.name
from DomesticCat as mother
    inner join mother.mate as mate
    left outer join mother.kittens as offspr</pre>
			<p><s:text name="p16-6-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select new list(mother, offspr, mate.name)
from DomesticCat as mother
    inner join mother.mate as mate
    left outer join mother.kittens as offspr</pre>
			<p><s:text name="p16-6-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select new Family(mother, mate, offspr)
from DomesticCat as mother
    join mother.mate as mate
    left join mother.kittens as offspr</pre>
			<p><s:text name="p16-6-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select max(bodyWeight) as max, min(bodyWeight) as min, count(*) as n
from Cat cat</pre>
			<p><s:text name="p16-6-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select new map( max(bodyWeight) as max, min(bodyWeight) as min, count(*) as n )
from Cat cat</pre>
			<p><s:text name="p16-6-9" /></p>
		</div>
		<div>
			<h2 id="c16-7"><s:text name="title16-7" /></h2>
			<p><s:text name="p16-7-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select avg(cat.weight), sum(cat.weight), max(cat.weight), count(cat)
from Cat cat</pre>
			<p><s:text name="p16-7-2" /></p>
			<ul>
				<li><s:text name="li16-7-1-1" /></li>
				<li><s:text name="li16-7-1-2" /></li>
				<li><s:text name="li16-7-1-3" /></li>
			</ul>
			<p><s:text name="p16-7-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat.weight + sum(kitten.weight)
from Cat cat
    join cat.kittens kitten
group by cat.id, cat.weight</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select firstName||' '||initial||' '||upper(lastName) from Person</pre>
			<p><s:text name="p16-7-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select distinct cat.name from Cat cat

select count(distinct cat.name), count(cat) from Cat cat</pre>
		</div>
		<div>
			<h2 id="c16-8"><s:text name="title16-8" /></h2>
			<p><s:text name="p16-8-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat</pre>
			<p><s:text name="p16-8-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from java.lang.Object o</pre>
			<p><s:text name="p16-8-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Named n, Named m where n.name = m.name</pre>
			<p><s:text name="p16-8-4" /></p>
		</div>
		<div>
			<h2 id="c16-9"><s:text name="title16-9" /></h2>
			<p><s:text name="p16-9-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat where name='Fritz'</pre>
			<p><s:text name="p16-9-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat where cat.name='Fritz'</pre>
			<p><s:text name="p16-9-3" /></p>
			<p><s:text name="p16-9-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select foo
from Foo foo, Bar bar
where foo.startDate = bar.date</pre>
			<p><s:text name="p16-9-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat cat where cat.mate.name is not null</pre>
			<p><s:text name="p16-9-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Foo foo
where foo.bar.baz.customer.address.city is not null</pre>
			<p><s:text name="p16-9-7" /></p>
			<p><s:text name="p16-9-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat cat, Cat rival where cat.mate = rival.mate</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat, mate
from Cat cat, Cat mate
where cat.mate = mate</pre>
			<p><s:text name="p16-9-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat where cat.id = 123

from Cat as cat where cat.mate.id = 69</pre>
			<p><s:text name="p16-9-10" /></p>
			<p><s:text name="p16-9-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from bank.Person person
where person.id.country = 'AU'
    and person.id.medicareNumber = 123456</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from bank.Account account
where account.owner.id.country = 'AU'
    and account.owner.id.medicareNumber = 123456</pre>
			<p><s:text name="p16-9-12" /></p>
			<p><s:text name="p16-9-13" /></p>
			<p><s:text name="p16-9-14" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat cat where cat.class = DomesticCat</pre>
			<p><s:text name="p16-9-15" /></p>
			<p><s:text name="p16-9-16" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from AuditLog log, Payment payment
where log.item.class = 'Payment' and log.item.id = payment.id</pre>
			<p><s:text name="p16-9-17" /></p>
		</div>
		<div>
			<h2 id="c16-10"><s:text name="title16-10" /></h2>
			<p><s:text name="p16-10-1" /></p>
			<ul>
				<li><s:text name="li16-10-1-1" /></li>
				<li><s:text name="li16-10-1-2" /></li>
				<li><s:text name="li16-10-1-3" /></li>
				<li><s:text name="li16-10-1-4" /></li>
				<li><s:text name="li16-10-1-5" /></li>
				<li><s:text name="li16-10-1-6" /></li>
				<li><s:text name="li16-10-1-7" /></li>
				<li><s:text name="li16-10-1-8" /></li>
				<li><s:text name="li16-10-1-9" /></li>
				<li><s:text name="li16-10-1-10" /></li>
				<li><s:text name="li16-10-1-11" /></li>
				<li><s:text name="li16-10-1-12" /></li>
				<li><s:text name="li16-10-1-13" /></li>
				<li><s:text name="li16-10-1-14" /></li>
				<li><s:text name="li16-10-1-15" /></li>
				<li><s:text name="li16-10-1-16" /></li>
				<li><s:text name="li16-10-1-17" /></li>
				<li><s:text name="li16-10-1-18" /></li>
				<li><s:text name="li16-10-1-19" /></li>
				<li><s:text name="li16-10-1-20" /></li>
			</ul>
			<p><s:text name="p16-10-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat cat where cat.name between 'A' and 'B'</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat cat where cat.name in ( 'Foo', 'Bar', 'Baz' )</pre>
			<p><s:text name="p16-10-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat cat where cat.name not between 'A' and 'B'</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat cat where cat.name not in ( 'Foo', 'Bar', 'Baz' )</pre>
			<p><s:text name="p16-10-4" /></p>
			<p><s:text name="p16-10-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;property name="hibernate.query.substitutions"&gt;true 1, false 0&lt;/property&gt;</pre>
			<p><s:text name="p16-10-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat cat where cat.alive = true</pre>
			<p><s:text name="p16-10-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat cat where cat.kittens.size &gt; 0</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat cat where size(cat.kittens) &gt; 0</pre>
			<p><s:text name="p16-10-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Calendar cal where maxelement(cal.holidays) &gt; current_date</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Order order where maxindex(order.items) &gt; 100</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Order order where minelement(order.items) &gt; 10000</pre>
			<p><s:text name="p16-10-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select mother from Cat as mother, Cat as kit
where kit in elements(foo.kittens)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select p from NameList list, Person p
where p.name = some elements(list.names)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat cat where exists elements(cat.kittens)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Player p where 3 &gt; all elements(p.scores)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Show show where 'fizard' in indices(show.acts)</pre>
			<p><s:text name="p16-10-10" /></p>
			<p><s:text name="p16-10-11" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Order order where order.items[0].id = 1234</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select person from Person person, Calendar calendar
where calendar.holidays['national day'] = person.birthDay
    and person.nationality.calendar = calendar</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select item from Item item, Order order
where order.items[ order.deliveredItemIndices[0] ] = item and order.id = 11</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select item from Item item, Order order
where order.items[ maxindex(order.items) ] = item and order.id = 11</pre>
			<p><s:text name="p16-10-12" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select item from Item item, Order order
where order.items[ size(order.items) - 1 ] = item</pre>
			<p><s:text name="p16-10-13" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select item, index(item) from Order order
    join order.items item
where index(item) &lt; 5</pre>
			<p><s:text name="p16-10-14" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat cat where upper(cat.name) like 'FRI%'</pre>
			<p><s:text name="p16-10-15" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cust
from Product prod,
    Store store
    inner join store.customers cust
where prod.name = 'widget'
    and store.location.name in ( 'Melbourne', 'Sydney' )
    and prod = all elements(cust.currentOrder.lineItems)</pre>
			<p><s:text name="p16-10-16" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
SELECT cust.name, cust.address, cust.phone, cust.id, cust.current_order
FROM customers cust,
    stores store,
    locations loc,
    store_customers sc,
    product prod
WHERE prod.name = 'widget'
    AND store.loc_id = loc.id
    AND loc.name IN ( 'Melbourne', 'Sydney' )
    AND sc.store_id = store.id
    AND sc.cust_id = cust.id
    AND prod.id = ALL(
        SELECT item.prod_id
        FROM line_items item, orders o
        WHERE item.order_id = o.id
            AND cust.current_order = o.id
    )</pre>
		</div>
		<div>
			<h2 id="c16-11"><s:text name="title16-11" /></h2>
			<p><s:text name="p16-11-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat cat
order by cat.name asc, cat.weight desc nulls first, cat.birthdate</pre>
			<p><s:text name="p16-11-2" /></p>
			<p><s:text name="p16-11-3" /></p>
		</div>
		<div>
			<h2 id="c16-12"><s:text name="title16-12" /></h2>
			<p><s:text name="p16-12-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat.color, sum(cat.weight), count(cat)
from Cat cat
group by cat.color</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select foo.id, avg(name), max(name)
from Foo foo join foo.names name
group by foo.id</pre>
			<p><s:text name="p16-12-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat.color, sum(cat.weight), count(cat)
from Cat cat
group by cat.color
having cat.color in (eg.Color.TABBY, eg.Color.BLACK)</pre>
			<p><s:text name="p16-12-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat
from Cat cat
    join cat.kittens kitten
group by cat.id, cat.name, cat.other, cat.properties
having avg(kitten.weight) &gt; 100
order by count(kitten) asc, sum(kitten.weight) desc</pre>
			<p><s:text name="p16-12-4" /></p>
		</div>
		<div>
			<h2 id="c16-13"><s:text name="title16-13" /></h2>
			<p><s:text name="p16-13-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as fatcat
where fatcat.weight &gt; (
    select avg(cat.weight) from DomesticCat cat
)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat as cat
where cat.name = some (
    select name.nickName from Name as name
)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat
where not exists (
    from Cat as mate where mate.mate = cat
)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from DomesticCat as cat
where cat.name not in (
    select name.nickName from Name as name
)</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select cat.id, (select max(kit.weight) from cat.kitten kit)
from Cat as cat</pre>
			<p><s:text name="p16-13-2" /></p>
			<p><s:text name="p16-13-3" /></p>
		</div>
		<div>
			<h2 id="c16-14"><s:text name="title16-14" /></h2>
			<p><s:text name="p16-14-1" /></p>
			<p><s:text name="p16-14-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select order.id, sum(price.amount), count(item)
from Order as order
    join order.lineItems as item
    join item.product as product,
    Catalog as catalog
    join catalog.prices as price
where order.paid = false
    and order.customer = :customer
    and price.product = product
    and catalog.effectiveDate &lt; sysdate
    and catalog.effectiveDate &gt;= all (
        select cat.effectiveDate
        from Catalog as cat
        where cat.effectiveDate &lt; sysdate
    )
group by order
having sum(price.amount) &gt; :minAmount
order by sum(price.amount) desc</pre>
			<p><s:text name="p16-14-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select order.id, sum(price.amount), count(item)
from Order as order
    join order.lineItems as item
    join item.product as product,
    Catalog as catalog
    join catalog.prices as price
where order.paid = false
    and order.customer = :customer
    and price.product = product
    and catalog = :currentCatalog
group by order
having sum(price.amount) &gt; :minAmount
order by sum(price.amount) desc</pre>
			<p><s:text name="p16-14-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select count(payment), status.name
from Payment as payment
    join payment.currentStatus as status
    join payment.statusChanges as statusChange
where payment.status.name &lt;&gt; PaymentStatus.AWAITING_APPROVAL
    or (
        statusChange.timeStamp = (
            select max(change.timeStamp)
            from PaymentStatusChange change
            where change.payment = payment
        )
        and statusChange.user &lt;&gt; :currentUser
    )
group by status.name, status.sortOrder
order by status.sortOrder</pre>
			<p><s:text name="p16-14-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select count(payment), status.name
from Payment as payment
    join payment.currentStatus as status
where payment.status.name &lt;&gt; PaymentStatus.AWAITING_APPROVAL
    or payment.statusChanges[ maxIndex(payment.statusChanges) ].user &lt;&gt; :currentUser
group by status.name, status.sortOrder
order by status.sortOrder</pre>
			<p><s:text name="p16-14-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select account, payment
from Account as account
    left outer join account.payments as payment
where :currentUser in elements(account.holder.users)
    and PaymentStatus.UNPAID = isNull(payment.currentStatus.name, PaymentStatus.UNPAID)
order by account.type.sortOrder, account.accountNumber, payment.dueDate</pre>
			<p><s:text name="p16-14-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select account, payment
from Account as account
    join account.holder.users as user
    left outer join account.payments as payment
where :currentUser = user
    and PaymentStatus.UNPAID = isNull(payment.currentStatus.name, PaymentStatus.UNPAID)
order by account.type.sortOrder, account.accountNumber, payment.dueDate</pre>
		</div>
		<div>
			<h2 id="c16-15"><s:text name="title16-15" /></h2>
			<p><s:text name="p16-15-1" /></p>
		</div>
		<div>
			<h2 id="c16-16"><s:text name="title16-16" /></h2>
			<p><s:text name="p16-16-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
( (Integer) session.createQuery("select count(*) from ....").iterate().next() ).intValue()</pre>
			<p><s:text name="p16-16-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select usr.id, usr.name
from User as usr
    left join usr.messages as msg
group by usr.id, usr.name
order by count(msg)</pre>
			<p><s:text name="p16-16-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from User usr where size(usr.messages) &gt;= 1</pre>
			<p><s:text name="p16-16-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select usr.id, usr.name
from User usr
    join usr.messages msg
group by usr.id, usr.name
having count(msg) &gt;= 1</pre>
			<p><s:text name="p16-16-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select usr.id, usr.name
from User as usr
    left join usr.messages as msg
group by usr.id, usr.name
having count(msg) = 0</pre>
			<p><s:text name="p16-16-6" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Query q = s.createQuery("from foo Foo as foo where foo.name=:name and foo.size=:size");
q.setProperties(fooBean); // fooBean has getName() and getSize()
List foos = q.list();</pre>
			<p><s:text name="p16-16-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Query q = s.createFilter( collection, "" ); // the trivial filter
q.setMaxResults(PAGE_SIZE);
q.setFirstResult(PAGE_SIZE * pageNumber);
List page = q.list();</pre>
			<p><s:text name="p16-16-8" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Collection orderedCollection = s.filter( collection, "order by this.amount" );
Collection counts = s.filter( collection, "select this.type, count(this) group by this.type" );</pre>
			<p><s:text name="p16-16-9" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
( (Integer) session.createQuery("select count(*) from ....").iterate().next() ).intValue();</pre>
		</div>
		<div>
			<h2 id="c16-17"><s:text name="title16-17" /></h2>
			<p><s:text name="p16-17-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select p.name from Person p</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select p.name.first from Person p</pre>
			<p><s:text name="p16-17-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Person p where p.name = :name</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Person p where p.name.first = :firstName</pre>
			<p><s:text name="p16-17-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Person p order by p.name</pre>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Person p order by p.name.first</pre>
			<p><s:text name="p16-17-4" /></p>
		</div>
		<div>
			<h2 id="c16-18"><s:text name="title16-18" /></h2>
			<p><s:text name="p16-18-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Person p where p.name.first='John' and p.name.last='Jingleheimer-Schmidt'</pre>
			<p><s:text name="p16-18-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Person p where p.name=('John', 'Jingleheimer-Schmidt')</pre>
			<p><s:text name="p16-18-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
select p.name from Person p</pre>
			<p><s:text name="p16-18-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
from Cat as cat
where not ( cat.name, cat.color ) in (
    select cat.name, cat.color from DomesticCat cat
)</pre>
			<p><s:text name="p16-18-5" /></p>
		</div>
	</s:i18n>
</div>