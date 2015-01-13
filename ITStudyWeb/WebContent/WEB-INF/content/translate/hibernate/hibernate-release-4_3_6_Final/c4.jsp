<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div>
	<s:i18n name="translate/hibernate/hibernate-release-4_3_6_Final/c4">
		<div>
			<h1 id="c4"><s:text name="title4" /></h1>
			<p><s:text name="p4-1" /></p>
			<p><s:text name="p4-2" /></p>
		</div>
		<div>
			<h2 id="c4-1"><s:text name="title4-1" /></h2>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package eg;
import java.util.Set;
import java.util.Date;

public class Cat {
    private Long id; // identifier

    private Date birthdate;
    private Color color;
    private char sex;
    private float weight;
    private int litterId;

    private Cat mother;
    private Set kittens = new HashSet();

    private void setId(Long id) {
        this.xml:id=id;
    }
    public Long getId() {
        return id;
    }

    void setBirthdate(Date date) {
        birthdate = date;
    }
    public Date getBirthdate() {
        return birthdate;
    }

    void setWeight(float weight) {
        this.weight = weight;
    }
    public float getWeight() {
        return weight;
    }

    public Color getColor() {
        return color;
    }
    void setColor(Color color) {
        this.color = color;
    }

    void setSex(char sex) {
        this.sex=sex;
    }
    public char getSex() {
        return sex;
    }

    void setLitterId(int id) {
        this.litterId = id;
    }
    public int getLitterId() {
        return litterId;
    }

    void setMother(Cat mother) {
        this.mother = mother;
    }
    public Cat getMother() {
        return mother;
    }
    void setKittens(Set kittens) {
        this.kittens = kittens;
    }
    public Set getKittens() {
        return kittens;
    }

    // addKitten not needed by Hibernate
    public void addKitten(Cat kitten) {
        kitten.setMother(this);
    kitten.setLitterId( kittens.size() );
        kittens.add(kitten);
    }
}</pre>
			<p><s:text name="p4-1-1" /></p>
		</div>
		<div>
			<h3 id="c4-1-1"><s:text name="title4-1-1" /></h3>
			<p><s:text name="p4-1-1-1" /></p>
		</div>
		<div>
			<h3 id="c4-1-2"><s:text name="title4-1-2" /></h3>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc4-1-2-1" /></p>
			</div>
			<p><s:text name="p4-1-2-1" /></p>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc4-1-2-2" /></p>
			</div>
			<p><s:text name="p4-1-2-2" /></p>
		</div>
		<div>
			<h3 id="c4-1-3"><s:text name="title4-1-3" /></h3>
			<p><s:text name="p4-1-3-1" /></p>
			<div class="example"><a id="persistent-classes-pojo-final-example-disable-proxies-xml"><p class="title"><strong>Example&nbsp;4.2.&nbsp;Disabling proxies in <code class="literal">hbm.xml</code></strong></p><div class="example-contents">
                <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;class name="Cat" lazy="false"...&gt;...&lt;/class&gt;</pre>
            </div></a></div>
            <div class="example"><a id="persistent-classes-pojo-final-example-disable-proxies-xml"></a><a id="persistent-classes-pojo-final-example-disable-proxies-ann"><p class="title"><strong>Example&nbsp;4.3.&nbsp;Disabling proxies in annotations</strong></p><div class="example-contents">
                <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">@Entity @Proxy(lazy=false) public class Cat { ... }</pre>
            </div></a></div>
            <p><s:text name="p4-1-3-2" /></p>
            <div class="example"><a id="persistent-classes-pojo-final-example-proxy-interface-xml"><p class="title"><strong>Example&nbsp;4.4.&nbsp;Proxying an interface in <code class="literal">hbm.xml</code></strong></p><div class="example-contents">
                <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">&lt;class name="Cat" proxy="ICat"...&gt;...&lt;/class&gt;</pre>
            </div></a></div>
            <div class="example"><a id="persistent-classes-pojo-final-example-proxy-interface-xml"></a><a id="persistent-classes-pojo-final-example-proxy-interface-ann"><p class="title"><strong>Example&nbsp;4.5.&nbsp;Proxying an interface in annotations</strong></p><div class="example-contents">
                <pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">@Entity @Proxy(proxyClass=ICat.class) public class Cat implements ICat { ... }</pre>
            </div></a></div>
            <p><s:text name="p4-1-3-3" /></p>
		</div>
		<div>
			<h3 id="c4-1-4"><s:text name="title4-1-4" /></h3>
			<p><s:text name="p4-1-4-1" /></p>
			<p><s:text name="p4-1-4-2" /></p>
		</div>
		<div>
			<h2 id="c4-2"><s:text name="title4-2" /></h2>
			<p><s:text name="p4-2-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
package eg;
 
public class DomesticCat extends Cat {
        private String name;
 
        public String getName() {
                return name;
        }
        protected void setName(String name) {
                this.name=name;
        }
}</pre>
		</div>
		<div>
			<h2 id="c4-3"><s:text name="title4-3" /></h2>
			<p><s:text name="p4-3-1" /></p>
			<ul>
				<li><s:text name="li4-3-1" /></li>
				<li><s:text name="li4-3-2" /></li>
			</ul>
			<p><s:text name="p4-3-2" /></p>
			<p><s:text name="p4-3-3" /></p>
			<p><s:text name="p4-3-4" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
public class Cat {

    ...
    public boolean equals(Object other) {
        if (this == other) return true;
        if ( !(other instanceof Cat) ) return false;

        final Cat cat = (Cat) other;

        if ( !cat.getLitterId().equals( getLitterId() ) ) return false;
        if ( !cat.getMother().equals( getMother() ) ) return false;

        return true;
    }

    public int hashCode() {
        int result;
        result = getMother().hashCode();
        result = 29 * result + getLitterId();
        return result;
    }

}</pre>
			<p><s:text name="p4-3-5" /></p>
		</div>
		<div>
			<h2 id="c4-4"><s:text name="title4-4" /></h2>
			<div class="alert alert-info" role="alert">
			    <h5 class="lead"><span class="glyphicon glyphicon-info-sign"></span> <s:text name="note" /></h5>
			    <p><s:text name="nc4-4-1" /></p>
			</div>
			<p><s:text name="p4-4-1" /></p>
			<p><s:text name="p4-4-2" /></p>
			<p><s:text name="p4-4-3" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;

    &lt;class entity-name="Customer"&gt;

        &lt;id name="id"
            type="long"
            column="ID"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;

        &lt;property name="name"
            column="NAME"
            type="string"/&gt;

        &lt;property name="address"
            column="ADDRESS"
            type="string"/&gt;

        &lt;many-to-one name="organization"
            column="ORGANIZATION_ID"
            class="Organization"/&gt;

        &lt;bag name="orders"
            inverse="true"
            lazy="false"
            cascade="all"&gt;
            &lt;key column="CUSTOMER_ID"/&gt;
            &lt;one-to-many class="Order"/&gt;
        &lt;/bag&gt;

    &lt;/class&gt;
    
&lt;/hibernate-mapping&gt;</pre>
			<p><s:text name="p4-4-4" /></p>
			<p><s:text name="p4-4-5" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session s = openSession();
Transaction tx = s.beginTransaction();

// Create a customer
Map david = new HashMap();
david.put("name", "David");

// Create an organization
Map foobar = new HashMap();
foobar.put("name", "Foobar Inc.");

// Link both
david.put("organization", foobar);

// Save both
s.save("Customer", david);
s.save("Organization", foobar);

tx.commit();
s.close();</pre>
			<p><s:text name="p4-4-6" /></p>
			<p><s:text name="p4-4-7" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
Session dynamicSession = pojoSession.getSession(EntityMode.MAP);

// Create a customer
Map david = new HashMap();
david.put("name", "David");
dynamicSession.save("Customer", david);
...
dynamicSession.flush();
dynamicSession.close()
...
// Continue on pojoSession
</pre>
			<p><s:text name="p4-4-8" /></p>
		</div>
		<div>
			<h2 id="c4-5"><s:text name="title4-5" /></h2>
			<p><s:text name="p4-5-1" /></p>
			<p><s:text name="p4-5-2" /></p>
			<ul>
				<li><s:text name="li4-5-1" /></li>
				<li><s:text name="li4-5-2" /></li>
			</ul>
			<p><s:text name="p4-5-3" /></p>
			<div class="example"><a id="example-specify-custom-tuplizer-ann"><p class="title"><strong>Example&nbsp;4.6.&nbsp;Specify custom tuplizers in annotations</strong></p><div class="example-contents">
<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
@Entity
@Tuplizer(impl = DynamicEntityTuplizer.class)
public interface Cuisine {
    @Id
    @GeneratedValue
    public Long getId();
    public void setId(Long id);

    public String getName();
    public void setName(String name);

    @Tuplizer(impl = DynamicComponentTuplizer.class)
    public Country getCountry();
    public void setCountry(Country country);
}</pre>
        </div></a></div>
			<div class="example"><a id="example-specify-custom-tuplizer-ann"></a><a id="example-specify-custom-tuplizer-xml"><p class="title"><strong>Example&nbsp;4.7.&nbsp;Specify custom tuplizers in <code class="literal">hbm.xml</code></strong></p><div class="example-contents">
<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
&lt;hibernate-mapping&gt;
    &lt;class entity-name="Customer"&gt;
        &lt;!--
            Override the dynamic-map entity-mode
            tuplizer for the customer entity
        --&gt;
        &lt;tuplizer entity-mode="dynamic-map"
                class="CustomMapTuplizerImpl"/&gt;

        &lt;id name="id" type="long" column="ID"&gt;
            &lt;generator class="sequence"/&gt;
        &lt;/id&gt;

        &lt;!-- other properties --&gt;
        ...
    &lt;/class&gt;
&lt;/hibernate-mapping&gt;</pre>
        </div></a></div>
		</div>
		<div>
			<h2 id="c4-6"><s:text name="title4-6" /></h2>
			<p><s:text name="p4-6-1" /></p>
			<pre xmlns="" xmlns:d="http://docbook.org/ns/docbook" xmlns:rf="java:org.jboss.highlight.XhtmlRendererFactory" class="">
/**
 * A very trivial JDK Proxy InvocationHandler implementation where we proxy an
 * interface as the domain model and simply store persistent state in an internal
 * Map.  This is an extremely trivial example meant only for illustration.
 */
public final class DataProxyHandler implements InvocationHandler {
	private String entityName;
	private HashMap data = new HashMap();

	public DataProxyHandler(String entityName, Serializable id) {
		this.entityName = entityName;
		data.put( "Id", id );
	}

	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		String methodName = method.getName();
		if ( methodName.startsWith( "set" ) ) {
			String propertyName = methodName.substring( 3 );
			data.put( propertyName, args[0] );
		}
		else if ( methodName.startsWith( "get" ) ) {
			String propertyName = methodName.substring( 3 );
			return data.get( propertyName );
		}
		else if ( "toString".equals( methodName ) ) {
			return entityName + "#" + data.get( "Id" );
		}
		else if ( "hashCode".equals( methodName ) ) {
			return new Integer( this.hashCode() );
		}
		return null;
	}

	public String getEntityName() {
		return entityName;
	}

	public HashMap getData() {
		return data;
	}
}

public class ProxyHelper {
    public static String extractEntityName(Object object) {
        // Our custom java.lang.reflect.Proxy instances actually bundle
        // their appropriate entity name, so we simply extract it from there
        // if this represents one of our proxies; otherwise, we return null
        if ( Proxy.isProxyClass( object.getClass() ) ) {
            InvocationHandler handler = Proxy.getInvocationHandler( object );
            if ( DataProxyHandler.class.isAssignableFrom( handler.getClass() ) ) {
                DataProxyHandler myHandler = ( DataProxyHandler ) handler;
                return myHandler.getEntityName();
            }
        }
        return null;
    }

    // various other utility methods ....

}

/**
 * The EntityNameResolver implementation.
 *
 * IMPL NOTE : An EntityNameResolver really defines a strategy for how entity names
 * should be resolved.  Since this particular impl can handle resolution for all of our
 * entities we want to take advantage of the fact that SessionFactoryImpl keeps these
 * in a Set so that we only ever have one instance registered.  Why?  Well, when it
 * comes time to resolve an entity name, Hibernate must iterate over all the registered
 * resolvers.  So keeping that number down helps that process be as speedy as possible.
 * Hence the equals and hashCode implementations as is
 */
public class MyEntityNameResolver implements EntityNameResolver {
    public static final MyEntityNameResolver INSTANCE = new MyEntityNameResolver();

    public String resolveEntityName(Object entity) {
        return ProxyHelper.extractEntityName( entity );
    }

    public boolean equals(Object obj) {
        return getClass().equals( obj.getClass() );
    }

    public int hashCode() {
        return getClass().hashCode();
    }
}

public class MyEntityTuplizer extends PojoEntityTuplizer {
	public MyEntityTuplizer(EntityMetamodel entityMetamodel, PersistentClass mappedEntity) {
		super( entityMetamodel, mappedEntity );
	}

	public EntityNameResolver[] getEntityNameResolvers() {
		return new EntityNameResolver[] { MyEntityNameResolver.INSTANCE };
	}

    public String determineConcreteSubclassEntityName(Object entityInstance, SessionFactoryImplementor factory) {
        String entityName = ProxyHelper.extractEntityName( entityInstance );
        if ( entityName == null ) {
            entityName = super.determineConcreteSubclassEntityName( entityInstance, factory );
        }
        return entityName;
    }

    ...
</pre>
			<p><s:text name="p4-6-2" /></p>
			<ol>
				<li><s:text name="li4-6-1" /></li>
				<li><s:text name="li4-6-2" /></li>
			</ol>
		</div>
	</s:i18n>
</div>