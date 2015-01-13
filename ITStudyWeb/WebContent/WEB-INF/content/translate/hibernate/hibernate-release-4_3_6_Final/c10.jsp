<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c10">
		<div>
			<h1 id="c10"><s:text name="title10" /></h1>
		</div>
		<div>
			<h2 id="c10-1"><s:text name="title10-1" /></h2>
			<p><s:text name="p10-1-1" /></p>
			<ul>
				<li><s:text name="li10-1-1-1" /></li>
				<li><s:text name="li10-1-1-2" /></li>
				<li><s:text name="li10-1-1-3" /></li>
			</ul>
			<p><s:text name="p10-1-2" /></p>
			<ul>
				<li><s:text name="li10-1-2-1" /></li>
			</ul>
			<p><s:text name="p10-1-3" /></p>
			<p><s:text name="p10-1-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
 &lt;hibernate-mapping&gt;
     &lt;subclass name="DomesticCat" extends="Cat" discriminator-value="D"&gt;
          &lt;property name="name" type="string"/&gt;
     &lt;/subclass&gt;
 &lt;/hibernate-mapping&gt;</pre>
		</div>
		<div>
			<h3 id="c10-1-1"><s:text name="title10-1-1" /></h3>
			<p><s:text name="p10-1-1-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Payment" table="PAYMENT"&gt;
    &lt;id name="id" type="long" column="PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;discriminator column="PAYMENT_TYPE" type="string"/&gt;
    &lt;property name="amount" column="AMOUNT"/&gt;
    ...
    &lt;subclass name="CreditCardPayment" discriminator-value="CREDIT"&gt;
        &lt;property name="creditCardType" column="CCTYPE"/&gt;
        ...
    &lt;/subclass&gt;
    &lt;subclass name="CashPayment" discriminator-value="CASH"&gt;
        ...
    &lt;/subclass&gt;
    &lt;subclass name="ChequePayment" discriminator-value="CHEQUE"&gt;
        ...
    &lt;/subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p10-1-1-2" /></p>
		</div>
		<div>
			<h3 id="c10-1-2"><s:text name="title10-1-2" /></h3>
			<p><s:text name="p10-1-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Payment" table="PAYMENT"&gt;
    &lt;id name="id" type="long" column="PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;property name="amount" column="AMOUNT"/&gt;
    ...
    &lt;joined-subclass name="CreditCardPayment" table="CREDIT_PAYMENT"&gt;
        &lt;key column="PAYMENT_ID"/&gt;
        &lt;property name="creditCardType" column="CCTYPE"/&gt;
        ...
    &lt;/joined-subclass&gt;
    &lt;joined-subclass name="CashPayment" table="CASH_PAYMENT"&gt;
        &lt;key column="PAYMENT_ID"/&gt;
        ...
    &lt;/joined-subclass&gt;
    &lt;joined-subclass name="ChequePayment" table="CHEQUE_PAYMENT"&gt;
        &lt;key column="PAYMENT_ID"/&gt;
        ...
    &lt;/joined-subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p10-1-2-2" /></p>
		</div>
		<div>
			<h3 id="c10-1-3"><s:text name="title10-1-3" /></h3>
			<p><s:text name="p10-1-3-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Payment" table="PAYMENT"&gt;
    &lt;id name="id" type="long" column="PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;discriminator column="PAYMENT_TYPE" type="string"/&gt;
    &lt;property name="amount" column="AMOUNT"/&gt;
    ...
    &lt;subclass name="CreditCardPayment" discriminator-value="CREDIT"&gt;
        &lt;join table="CREDIT_PAYMENT"&gt;
            &lt;key column="PAYMENT_ID"/&gt;
            &lt;property name="creditCardType" column="CCTYPE"/&gt;
            ...
        &lt;/join&gt;
    &lt;/subclass&gt;
    &lt;subclass name="CashPayment" discriminator-value="CASH"&gt;
        &lt;join table="CASH_PAYMENT"&gt;
            &lt;key column="PAYMENT_ID"/&gt;
            ...
        &lt;/join&gt;
    &lt;/subclass&gt;
    &lt;subclass name="ChequePayment" discriminator-value="CHEQUE"&gt;
        &lt;join table="CHEQUE_PAYMENT" fetch="select"&gt;
            &lt;key column="PAYMENT_ID"/&gt;
            ...
        &lt;/join&gt;
    &lt;/subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p10-1-3-2" /></p>
		</div>
		<div>
			<h3 id="c10-1-4"><s:text name="title10-1-4" /></h3>
			<p><s:text name="p10-1-4-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Payment" table="PAYMENT"&gt;
    &lt;id name="id" type="long" column="PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;discriminator column="PAYMENT_TYPE" type="string"/&gt;
    &lt;property name="amount" column="AMOUNT"/&gt;
    ...
    &lt;subclass name="CreditCardPayment" discriminator-value="CREDIT"&gt;
        &lt;join table="CREDIT_PAYMENT"&gt;
            &lt;property name="creditCardType" column="CCTYPE"/&gt;
            ...
        &lt;/join&gt;
    &lt;/subclass&gt;
    &lt;subclass name="CashPayment" discriminator-value="CASH"&gt;
        ...
    &lt;/subclass&gt;
    &lt;subclass name="ChequePayment" discriminator-value="CHEQUE"&gt;
        ...
    &lt;/subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p10-1-4-2" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;many-to-one name="payment" column="PAYMENT_ID" class="Payment"/&gt;</pre>
		</div>
		<div>
			<h3 id="c10-1-5"><s:text name="title10-1-5" /></h3>
			<p><s:text name="p10-1-5-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="Payment"&gt;
    &lt;id name="id" type="long" column="PAYMENT_ID"&gt;
        &lt;generator class="sequence"/&gt;
    &lt;/id&gt;
    &lt;property name="amount" column="AMOUNT"/&gt;
    ...
    &lt;union-subclass name="CreditCardPayment" table="CREDIT_PAYMENT"&gt;
        &lt;property name="creditCardType" column="CCTYPE"/&gt;
        ...
    &lt;/union-subclass&gt;
    &lt;union-subclass name="CashPayment" table="CASH_PAYMENT"&gt;
        ...
    &lt;/union-subclass&gt;
    &lt;union-subclass name="ChequePayment" table="CHEQUE_PAYMENT"&gt;
        ...
    &lt;/union-subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p10-1-5-2" /></p>
			<p><s:text name="p10-1-5-3" /></p>
			<p><s:text name="p10-1-5-4" /></p>
		</div>
		<div>
			<h3 id="c10-1-6"><s:text name="title10-1-6" /></h3>
			<p><s:text name="p10-1-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="CreditCardPayment" table="CREDIT_PAYMENT"&gt;
    &lt;id name="id" type="long" column="CREDIT_PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;property name="amount" column="CREDIT_AMOUNT"/&gt;
    ...
&lt;/class&gt;

&lt;class name="CashPayment" table="CASH_PAYMENT"&gt;
    &lt;id name="id" type="long" column="CASH_PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;property name="amount" column="CASH_AMOUNT"/&gt;
    ...
&lt;/class&gt;

&lt;class name="ChequePayment" table="CHEQUE_PAYMENT"&gt;
    &lt;id name="id" type="long" column="CHEQUE_PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;property name="amount" column="CHEQUE_AMOUNT"/&gt;
    ...
&lt;/class&gt;</pre>
			<p><s:text name="p10-1-6-2" /></p>
			<p><s:text name="p10-1-6-3" /></p>
			<p><s:text name="p10-1-6-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;any name="payment" meta-type="string" id-type="long"&gt;
    &lt;meta-value value="CREDIT" class="CreditCardPayment"/&gt;
    &lt;meta-value value="CASH" class="CashPayment"/&gt;
    &lt;meta-value value="CHEQUE" class="ChequePayment"/&gt;
    &lt;column name="PAYMENT_CLASS"/&gt;
    &lt;column name="PAYMENT_ID"/&gt;
&lt;/any&gt;</pre>
		</div>
		<div>
			<h3 id="c10-1-7"><s:text name="title10-1-7" /></h3>
			<p><s:text name="p10-1-7-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;class name="CreditCardPayment" table="CREDIT_PAYMENT"&gt;
    &lt;id name="id" type="long" column="CREDIT_PAYMENT_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    &lt;discriminator column="CREDIT_CARD" type="string"/&gt;
    &lt;property name="amount" column="CREDIT_AMOUNT"/&gt;
    ...
    &lt;subclass name="MasterCardPayment" discriminator-value="MDC"/&gt;
    &lt;subclass name="VisaPayment" discriminator-value="VISA"/&gt;
&lt;/class&gt;

&lt;class name="NonelectronicTransaction" table="NONELECTRONIC_TXN"&gt;
    &lt;id name="id" type="long" column="TXN_ID"&gt;
        &lt;generator class="native"/&gt;
    &lt;/id&gt;
    ...
    &lt;joined-subclass name="CashPayment" table="CASH_PAYMENT"&gt;
        &lt;key column="PAYMENT_ID"/&gt;
        &lt;property name="amount" column="CASH_AMOUNT"/&gt;
        ...
    &lt;/joined-subclass&gt;
    &lt;joined-subclass name="ChequePayment" table="CHEQUE_PAYMENT"&gt;
        &lt;key column="PAYMENT_ID"/&gt;
        &lt;property name="amount" column="CHEQUE_AMOUNT"/&gt;
        ...
    &lt;/joined-subclass&gt;
&lt;/class&gt;</pre>
			<p><s:text name="p10-1-7-2" /></p>
		</div>
		<div>
			<h2 id="c10-2"><s:text name="title10-2" /></h2>
			<p><s:text name="p10-2-1" /></p>
			<p><s:text name="p10-2-2" /></p>
			<p><s:text name="p10-2-3" /></p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th><s:text name="th10-2-1-1" /></th>
						<th><s:text name="th10-2-1-2" /></th>
						<th><s:text name="th10-2-1-3" /></th>
						<th><s:text name="th10-2-1-4" /></th>
						<th><s:text name="th10-2-1-5" /></th>
						<th><s:text name="th10-2-1-6" /></th>
						<th><s:text name="th10-2-1-7" /></th>
						<th><s:text name="th10-2-1-8" /></th>
						<th><s:text name="th10-2-1-9" /></th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td><s:text name="td10-2-1-1" /></td>
						<td><s:text name="td10-2-1-2" /></td>
						<td><s:text name="td10-2-1-3" /></td>
						<td><s:text name="td10-2-1-4" /></td>
						<td><s:text name="td10-2-1-5" /></td>
						<td><s:text name="td10-2-1-6" /></td>
						<td><s:text name="td10-2-1-7" /></td>
						<td><s:text name="td10-2-1-8" /></td>
						<td><s:text name="td10-2-1-9" /></td>
					</tr>
					<tr>
						<td><s:text name="td10-2-1-10" /></td>
						<td><s:text name="td10-2-1-11" /></td>
						<td><s:text name="td10-2-1-12" /></td>
						<td><s:text name="td10-2-1-13" /></td>
						<td><s:text name="td10-2-1-14" /></td>
						<td><s:text name="td10-2-1-15" /></td>
						<td><s:text name="td10-2-1-16" /></td>
						<td><s:text name="td10-2-1-17" /></td>
						<td><s:text name="td10-2-1-18" /></td>
					</tr>
					<tr>
						<td><s:text name="td10-2-1-19" /></td>
						<td><s:text name="td10-2-1-20" /></td>
						<td><s:text name="td10-2-1-21" /></td>
						<td><s:text name="td10-2-1-22" /></td>
						<td><s:text name="td10-2-1-23" /></td>
						<td><s:text name="td10-2-1-24" /></td>
						<td><s:text name="td10-2-1-25" /></td>
						<td><s:text name="td10-2-1-26" /></td>
						<td><s:text name="td10-2-1-27" /></td>
					</tr>
				</tbody>
			</table>
		</div>
	</s:i18n>
</div>