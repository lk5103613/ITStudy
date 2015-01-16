<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ taglib prefix='s' uri='/struts-tags'%>
<s:i18n name='translate/android/training/c2'>
	<h1 id='c2'>
		<s:text name='title2' />
	</h1>
	<p>
		<s:text name='p2-1' />
	</p>
	<h2 id='c2-1'>
		<s:text name='title2-1' />
	</h2>
	<p>
		<s:text name='p2-1-1' />
	</p>
	<p>
		<s:text name='p2-1-2' />
	</p>
	<h3>
		<s:text name='sub_title2-1-1' />
	</h3>
	<dl>
		<dt>
			<s:text name='dt2-1-1-1' />
		</dt>
		<dd>
			<s:text name='dd2-1-1-1' />
		</dd>
		<dt>
			<s:text name='dt2-1-1-2' />
		</dt>
		<dd>
			<s:text name='dd2-1-1-2' />
		</dd>
		<dt>
			<s:text name='dt2-1-1-3' />
		</dt>
		<dd>
			<s:text name='dd2-1-1-3' />
		</dd>
	</dl>
	<h3 id='c2-1-1'>
		<s:text name='title2-1-1' />
	</h3>
	<p>
		<s:text name='p2-1-1-1' />
	</p>
	<p>
		<s:text name='p2-1-1-2' />
	</p>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-1-1-1' />
		</p>
	</div>
	<h4>
		<s:text name='sub_title2-1-1-1' />
	</h4>
	<img src='../imgs/translate/android/share-text-screenshot.png' />
	<p>
		<s:text name='p2-1-1-1-1' />
	</p>
	<pre>
Intent sendIntent = new Intent();
sendIntent.setAction(Intent.ACTION_SEND);
sendIntent.putExtra(Intent.EXTRA_TEXT, "This is my text to send.");
sendIntent.setType("text/plain");
startActivity(sendIntent);
</pre>
	<p>
		<s:text name='p2-1-1-1-2' />
	</p>
	<p>
		<s:text name='p2-1-1-1-3' />
	</p>
	<ul>
		<li><s:text name='li2-1-1-1-1' /></li>
		<li><s:text name='li2-1-1-1-2' /></li>
		<li><s:text name='li2-1-1-1-3' /></li>
	</ul>
	<pre>
Intent sendIntent = new Intent();
sendIntent.setAction(Intent.ACTION_SEND);
sendIntent.putExtra(Intent.EXTRA_TEXT, "This is my text to send.");
sendIntent.setType("text/plain");
startActivity(<strong>Intent.createChooser(sendIntent, getResources().getText(R.string.send_to))</strong>);
</pre>
	<p>
		<s:text name='p2-1-1-1-5' />
	</p>
	<p>
		<s:text name='p2-1-1-1-6' />
	</p>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-1-1-1-1' />
		</p>
	</div>
	<h4>
		<s:text name='sub_title2-1-1-2' />
	</h4>
	<p>
		<s:text name='p2-1-1-2-1' />
	</p>
	<pre>
Intent shareIntent = new Intent();
shareIntent.setAction(Intent.ACTION_SEND);
shareIntent.putExtra(Intent.EXTRA_STREAM, uriToImage);
shareIntent.setType("image/jpeg");
startActivity(Intent.createChooser(shareIntent, getResources().getText(R.string.send_to)));
</pre>
	<p>
		<s:text name='p2-1-1-2-2' />
	</p>
	<ul>
		<li><s:text name='li2-1-1-2-1' /></li>
		<li><s:text name='li2-1-1-2-2' /></li>
		<ul>
			<li><s:text name='li2-1-1-2-3' /></li>
			<li><s:text name='li2-1-1-2-4' /></li>
		</ul>
	</ul>
	<p>
		<s:text name='p2-1-1-3-1' />
	</p>
	<pre>
ArrayList&lt;Uri&gt; imageUris = new ArrayList&lt;Uri&gt;();
imageUris.add(imageUri1); // Add your image URIs here
imageUris.add(imageUri2);

Intent shareIntent = new Intent();
shareIntent.setAction(Intent.ACTION_SEND_MULTIPLE);
shareIntent.putParcelableArrayListExtra(Intent.EXTRA_STREAM, imageUris);
shareIntent.setType("image/*");
startActivity(Intent.createChooser(shareIntent, "Share images to.."));
</pre>
	<p>
		<s:text name='p2-1-1-3-2' />
	</p>
	<h3 id='c2-1-2'>
		<s:text name='title2-1-2' />
	</h3>
	<p>
		<s:text name='p2-1-2-1' />
	</p>
	<h4>
		<s:text name='sub_title2-1-2-1' />
	</h4>
	<p>
		<s:text name='p2-1-2-1-1' />
	</p>
	<pre>
&lt;activity android:name=".ui.MyActivity" &gt;
    &lt;intent-filter&gt;
        &lt;action android:name="android.intent.action.SEND" /&gt;
        &lt;category android:name="android.intent.category.DEFAULT" /&gt;
        &lt;data android:mimeType="image/*" /&gt;
    &lt;/intent-filter&gt;
    &lt;intent-filter&gt;
        &lt;action android:name="android.intent.action.SEND" /&gt;
        &lt;category android:name="android.intent.category.DEFAULT" /&gt;
        &lt;data android:mimeType="text/plain" /&gt;
    &lt;/intent-filter&gt;
    &lt;intent-filter&gt;
        &lt;action android:name="android.intent.action.SEND_MULTIPLE" /&gt;
        &lt;category android:name="android.intent.category.DEFAULT" /&gt;
        &lt;data android:mimeType="image/*" /&gt;
    &lt;/intent-filter&gt;
&lt;/activity&gt;
</pre>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-1-2-1-1' />
		</p>
	</div>
	<p>
		<s:text name='p2-1-2-1-2' />
	</p>
	<h4>
		<s:text name='sub_title2-1-2-2' />
	</h4>
	<p>
		<s:text name='p2-1-2-2-1' />
	</p>
	<pre>
void onCreate (Bundle savedInstanceState) {
    ...
    // Get intent, action and MIME type
    Intent intent = getIntent();
    String action = intent.getAction();
    String type = intent.getType();

    if (Intent.ACTION_SEND.equals(action) &amp;&amp; type != null) {
        if ("text/plain".equals(type)) {
            handleSendText(intent); // Handle text being sent
        } else if (type.startsWith("image/")) {
            handleSendImage(intent); // Handle single image being sent
        }
    } else if (Intent.ACTION_SEND_MULTIPLE.equals(action) &amp;&amp; type != null) {
        if (type.startsWith("image/")) {
            handleSendMultipleImages(intent); // Handle multiple images being sent
        }
    } else {
        // Handle other intents, such as being started from the home screen
    }
    ...
}

void handleSendText(Intent intent) {
    String sharedText = intent.getStringExtra(Intent.EXTRA_TEXT);
    if (sharedText != null) {
        // Update UI to reflect text being shared
    }
}

void handleSendImage(Intent intent) {
    Uri imageUri = (Uri) intent.getParcelableExtra(Intent.EXTRA_STREAM);
    if (imageUri != null) {
        // Update UI to reflect image being shared
    }
}

void handleSendMultipleImages(Intent intent) {
    ArrayList&lt;Uri&gt; imageUris = intent.getParcelableArrayListExtra(Intent.EXTRA_STREAM);
    if (imageUris != null) {
        // Update UI to reflect multiple images being shared
    }
}
</pre>
	<div class='alert alert-danger' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-exclamation-sign'></span>
			<s:text name='caution' />
		</h5>
		<p>
			<s:text name='cc2-1-2-2-1' />
		</p>
	</div>
	<p>
		<s:text name='p2-1-2-2-2' />
	</p>
	<h3 id='c2-1-3'>
		<s:text name='title2-1-3' />
	</h3>
	<p>
		<s:text name='p2-1-3-1' />
	</p>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-1-3-1' />
		</p>
	</div>
	<img src='../imgs/translate/android/actionbar-shareaction.png' />
	<h4>
		<s:text name='sub_title2-1-3-1' />
	</h4>
	<p>
		<s:text name='p2-1-3-1-1' />
	</p>
	<pre>
&lt;menu xmlns:android="http://schemas.android.com/apk/res/android"&gt;
    &lt;item
            android:id="@+id/menu_item_share"
            android:showAsAction="ifRoom"
            android:title="Share"
            <b>android:actionProviderClass=
                "android.widget.ShareActionProvider"</b> /&gt;
    ...
&lt;/menu&gt;
</pre>
	<p>
		<s:text name='p2-1-3-1-2' />
	</p>
	<h4>
		<s:text name='sub_title2-1-3-2' />
	</h4>
	<p>
		<s:text name='p2-1-3-2-1' />
	</p>
	<pre>
private ShareActionProvider mShareActionProvider;
...

@Override
public boolean onCreateOptionsMenu(Menu menu) {
    // Inflate menu resource file.
    getMenuInflater().inflate(R.menu.share_menu, menu);

    // Locate MenuItem with ShareActionProvider
    MenuItem item = menu.findItem(R.id.menu_item_share);

    // Fetch and store ShareActionProvider
    mShareActionProvider = (ShareActionProvider) item.getActionProvider();

    // Return true to display menu
    return true;
}

// Call to update the share intent
private void setShareIntent(Intent shareIntent) {
    if (mShareActionProvider != null) {
        mShareActionProvider.setShareIntent(shareIntent);
    }
}
</pre>
	<p>
		<s:text name='p2-1-3-2-2' />
	</p>
	<p>
		<s:text name='p2-1-3-2-3' />
	</p>
	<h2 id='c2-2'>
		<s:text name='title2-2' />
	</h2>
	<p>
		<s:text name='p2-2-1' />
	</p>
	<p>
		<s:text name='p2-2-2' />
	</p>
	<p>
		<s:text name='p2-2-3' />
	</p>
	<p>
		<s:text name='p2-2-4' />
	</p>
	<h3>
		<s:text name='sub_title2-2-1' />
	</h3>
	<dl>
		<dt>
			<s:text name='dt2-2-1-1' />
		</dt>
		<dd>
			<s:text name='dd2-2-1-1' />
		</dd>
		<dt>
			<s:text name='dt2-2-1-2' />
		</dt>
		<dd>
			<s:text name='dd2-2-1-2' />
		</dd>
		<dt>
			<s:text name='dt2-2-1-3' />
		</dt>
		<dd>
			<s:text name='dd2-2-1-3' />
		</dd>
		<dt>
			<s:text name='dt2-2-1-4' />
		</dt>
		<dd>
			<s:text name='dd2-2-1-4' />
		</dd>
	</dl>
	<h3 id='c2-2-1'>
		<s:text name='title2-2-1' />
	</h3>
	<p>
		<s:text name='p2-2-1-1' />
	</p>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-2-1-1' />
		</p>
	</div>
	<h4>
		<s:text name='sub_title2-2-1-1' />
	</h4>
	<p>
		<s:text name='p2-2-1-1-1' />
	</p>
	<p>
		<s:text name='p2-2-1-1-2' />
	</p>
	<pre>
&lt;manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.myapp"&gt;
    &lt;application
        ...&gt;
        &lt;provider
            android:name="android.support.v4.content.FileProvider"
            android:authorities="com.example.myapp.fileprovider"
            android:grantUriPermissions="true"
            android:exported="false"&gt;
            &lt;meta-data
                android:name="android.support.FILE_PROVIDER_PATHS"
                android:resource="@xml/filepaths" /&gt;
        &lt;/provider&gt;
        ...
    &lt;/application&gt;
&lt;/manifest&gt;</pre>
	<p>
		<s:text name='p2-2-1-1-3' />
	</p>
	<p>
		<s:text name='p2-2-1-1-4' />
	</p>
	<h4>
		<s:text name='sub_title2-2-1-2' />
	</h4>
	<p>
		<s:text name='p2-2-1-2-1' />
	</p>
	<pre>
&lt;paths&gt;
    &lt;files-path path="images/" name="myimages" /&gt;
&lt;/paths&gt;</pre>
	<p>
		<s:text name='p2-2-1-2-2' />
	</p>
	<p>
		<s:text name='p2-2-1-2-3' />
	</p>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-2-1-2-1' />
		</p>
	</div>
	<p>
		<s:text name='p2-2-1-2-4' />
	</p>
	<p>
		<s:text name='p2-2-1-2-5' />
	</p>
	<pre>
content://com.example.myapp.fileprovider/myimages/default_image.jpg</pre>
	<h3 id='c2-2-2'>
		<s:text name='title2-2-2' />
	</h3>
	<p>
		<s:text name='p2-2-2-1' />
	</p>
	<p>
		<s:text name='p2-2-2-2' />
	</p>
	<h4>
		<s:text name='sub_title2-2-2-1' />
	</h4>
	<p>
		<s:text name='p2-2-2-1-1' />
	</p>
	<p>
		<s:text name='p2-2-2-1-2' />
	</p>
	<h4>
		<s:text name='sub_title2-2-2-2' />
	</h4>
	<p>
		<s:text name='p2-2-2-2-1' />
	</p>
	<pre>
&lt;manifest xmlns:android="http://schemas.android.com/apk/res/android"&gt;
    ...
        &lt;application&gt;
        ...
            &lt;activity
                android:name=".FileSelectActivity"
                android:label="@"File Selector" &gt;
                &lt;intent-filter&gt;
                    &lt;action
                        android:name="android.intent.action.PICK"/&gt;
                    &lt;category
                        android:name="android.intent.category.DEFAULT"/&gt;
                    &lt;category
                        android:name="android.intent.category.OPENABLE"/&gt;
                    &lt;data android:mimeType="text/plain"/&gt;
                    &lt;data android:mimeType="image/*"/&gt;
                &lt;/intent-filter&gt;
            &lt;/activity&gt;</pre>
	<p class='lead'>
		<s:text name='lead2-2-2-2-1' />
	</p>
	<p>
		<s:text name='p2-2-2-2-2' />
	</p>
	<pre>
public class MainActivity extends Activity {
    // The path to the root of this app's internal storage
    private File mPrivateRootDir;
    // The path to the "images" subdirectory
    private File mImagesDir;
    // Array of files in the images subdirectory
    File[] mImageFiles;
    // Array of filenames corresponding to mImageFiles
    String[] mImageFilenames;
    // Initialize the Activity
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        ...
        // Set up an Intent to send back to apps that request a file
        mResultIntent =
                new Intent("com.example.myapp.ACTION_RETURN_FILE");
        // Get the files/ subdirectory of internal storage
        mPrivateRootDir = getFilesDir();
        // Get the files/images subdirectory;
        mImagesDir = new File(mPrivateRootDir, "images");
        // Get the files in the images subdirectory
        mImageFiles = mImagesDir.listFiles();
        // Set the Activity's result to null to begin with
        setResult(Activity.RESULT_CANCELED, null);
        /*
         * Display the file names in the ListView mFileListView.
         * Back the ListView with the array mImageFilenames, which
         * you can create by iterating through mImageFiles and
         * calling File.getAbsolutePath() for each File
         */
         ...
    }
    ...
}</pre>
	<h4>
		<s:text name='sub_title2-2-2-3' />
	</h4>
	<p>
		<s:text name='p2-2-2-3-1' />
	</p>
	<p>
		<s:text name='p2-2-2-3-2' />
	</p>
	<p>
		<s:text name='p2-2-2-3-3' />
	</p>
	<pre>
    protected void onCreate(Bundle savedInstanceState) {
        ...
        // Define a listener that responds to clicks on a file in the ListView
        mFileListView.setOnItemClickListener(
                new AdapterView.OnItemClickListener() {
            @Override
            /*
             * When a filename in the ListView is clicked, get its
             * content URI and send it to the requesting app
             */
            public void onItemClick(AdapterView&lt;?&gt; adapterView,
                    View view,
                    int position,
                    long rowId) {
                /*
                 * Get a File for the selected file name.
                 * Assume that the file names are in the
                 * mImageFilename array.
                 */
                File requestFile = new File(mImageFilename[position]);
                /*
                 * Most file-related method calls need to be in
                 * try-catch blocks.
                 */
                // Use the FileProvider to get a content URI
                try {
                    fileUri = FileProvider.getUriForFile(
                            MainActivity.this,
                            "com.example.myapp.fileprovider",
                            requestFile);
                } catch (IllegalArgumentException e) {
                    Log.e("File Selector",
                          "The selected file can't be shared: " +
                          clickedFilename);
                }
                ...
            }
        });
        ...
    }</pre>
	<p>
		<s:text name='p2-2-2-3-4' />
	</p>
	<h4>
		<s:text name='sub_title2-2-2-4' />
	</h4>
	<p>
		<s:text name='p2-2-2-4-1' />
	</p>
	<p>
		<s:text name='p2-2-2-4-2' />
	</p>
	<pre>
    protected void onCreate(Bundle savedInstanceState) {
        ...
        // Define a listener that responds to clicks in the ListView
        mFileListView.setOnItemClickListener(
                new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView&lt;?&gt; adapterView,
                    View view,
                    int position,
                    long rowId) {
                ...
                if (fileUri != null) {
                    // Grant temporary read permission to the content URI
                    mResultIntent.addFlags(
                        Intent.FLAG_GRANT_READ_URI_PERMISSION);
                }
                ...
             }
             ...
        });
    ...
    }</pre>
	<div class='alert alert-danger' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-exclamation-sign'></span>
			<s:text name='caution' />
		</h5>
		<p>
			<s:text name='cc2-2-2-4-1' />
		</p>
	</div>
	<h4>
		<s:text name='sub_title2-2-2-5' />
	</h4>
	<p>
		<s:text name='p2-2-2-5-1' />
	</p>
	<pre>
    protected void onCreate(Bundle savedInstanceState) {
        ...
        // Define a listener that responds to clicks on a file in the ListView
        mFileListView.setOnItemClickListener(
                new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView&lt;?&gt; adapterView,
                    View view,
                    int position,
                    long rowId) {
                ...
                if (fileUri != null) {
                    ...
                    // Put the Uri and MIME type in the result Intent
                    mResultIntent.setDataAndType(
                            fileUri,
                            getContentResolver().getType(fileUri));
                    // Set the result
                    MainActivity.this.setResult(Activity.RESULT_OK,
                            mResultIntent);
                    } else {
                        mResultIntent.setDataAndType(null, "");
                        MainActivity.this.setResult(RESULT_CANCELED,
                                mResultIntent);
                    }
                }
        });</pre>
	<p>
		<s:text name='p2-2-2-5-2' />
	</p>
	<pre>
    public void onDoneClick(View v) {
        // Associate a method with the Done button
        finish();
    }</pre>
	<h3 id='c2-2-3'>
		<s:text name='title2-2-3' />
	</h3>
	<p>
		<s:text name='p2-2-3-1' />
	</p>
	<p>
		<s:text name='p2-2-3-2' />
	</p>
	<h4>
		<s:text name='sub_title2-2-3-1' />
	</h4>
	<p>
		<s:text name='p2-2-3-1-1' />
	</p>
	<p>
		<s:text name='p2-2-3-1-2' />
	</p>
	<pre>
public class MainActivity extends Activity {
    private Intent mRequestFileIntent;
    private ParcelFileDescriptor mInputPFD;
    ...
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mRequestFileIntent = new Intent(Intent.ACTION_PICK);
        mRequestFileIntent.setType("image/jpg");
        ...
    }
    ...
    protected void requestFile() {
        /**
         * When the user requests a file, send an Intent to the
         * server app.
         * files.
         */
            startActivityForResult(mRequestFileIntent, 0);
        ...
    }
    ...
}
</pre>
	<h4>
		<s:text name='sub_title2-2-3-2' />
	</h4>
	<p>
		<s:text name='p2-2-3-2-1' />
	</p>
	<p>
		<s:text name='p2-2-3-2-2' />
	</p>
	<p>
		<s:text name='p2-2-3-2-3' />
	</p>
	<pre>
    /*
     * When the Activity of the app that hosts files sets a result and calls
     * finish(), this method is invoked. The returned Intent contains the
     * content URI of a selected file. The result code indicates if the
     * selection worked or not.
     */
    @Override
    public void onActivityResult(int requestCode, int resultCode,
            Intent returnIntent) {
        // If the selection didn't work
        if (resultCode != RESULT_OK) {
            // Exit without doing anything else
            return;
        } else {
            // Get the file's content URI from the incoming Intent
            Uri returnUri = returnIntent.getData();
            /*
             * Try to open the file for "read" access using the
             * returned URI. If the file isn't found, write to the
             * error log and return.
             */
            try {
                /*
                 * Get the content resolver instance for this context, and use it
                 * to get a ParcelFileDescriptor for the file.
                 */
                mInputPFD = getContentResolver().openFileDescriptor(returnUri, "r");
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                Log.e("MainActivity", "File not found.");
                return;
            }
            // Get a regular file descriptor for the file
            FileDescriptor fd = mInputPFD.getFileDescriptor();
            ...
        }
    }
</pre>
	<p>
		<s:text name='p2-2-3-2-4' />
	</p>
	<h3 id='c2-2-4'>
		<s:text name='title2-2-4' />
	</h3>
	<p>
		<s:text name='p2-2-4-1' />
	</p>
	<p>
		<s:text name='p2-2-4-2' />
	</p>
	<h4>
		<s:text name='sub_title2-2-4-1' />
	</h4>
	<p>
		<s:text name='p2-2-4-1-1' />
	</p>
	<p>
		<s:text name='p2-2-4-1-2' />
	</p>
	<pre>
    ...
    /*
     * Get the file's content URI from the incoming Intent, then
     * get the file's MIME type
     */
    Uri returnUri = returnIntent.getData();
    String mimeType = getContentResolver().getType(returnUri);
    ...
</pre>
	<h4>
		<s:text name='sub_title2-2-4-2' />
	</h4>
	<p>
		<s:text name='p2-2-4-2-1' />
	</p>
	<dl>
		<dt>
			<s:text name='dt2-2-4-2-1' />
		</dt>
		<dd>
			<s:text name='dd2-2-4-2-1' />
		</dd>
		<dt>
			<s:text name='dt2-2-4-2-2' />
		</dt>
		<dd>
			<s:text name='dd2-2-4-2-2' />
		</dd>
	</dl>
	<p>
		<s:text name='p2-2-4-2-2' />
	</p>
	<pre>
    ...
    /*
     * Get the file's content URI from the incoming Intent,
     * then query the server app to get the file's display name
     * and size.
     */
    Uri returnUri = returnIntent.getData();
    Cursor returnCursor =
            getContentResolver().query(returnUri, null, null, null, null);
    /*
     * Get the column indexes of the data in the Cursor,
     * move to the first row in the Cursor, get the data,
     * and display it.
     */
    int nameIndex = returnCursor.getColumnIndex(OpenableColumns.DISPLAY_NAME);
    int sizeIndex = returnCursor.getColumnIndex(OpenableColumns.SIZE);
    returnCursor.moveToFirst();
    TextView nameView = (TextView) findViewById(R.id.filename_text);
    TextView sizeView = (TextView) findViewById(R.id.filesize_text);
    nameView.setText(returnCursor.getString(nameIndex));
    sizeView.setText(Long.toString(returnCursor.getLong(sizeIndex)));
    ...
</pre>
	<h2 id='c2-3'>
		<s:text name='title2-3' />
	</h2>
	<p>
		<s:text name='p2-3-1' />
	</p>
	<p>
		<s:text name='p2-3-2' />
	</p>
	<h3>
		<s:text name='sub_title2-3-1' />
	</h3>
	<dl>
		<dt>
			<s:text name='dt2-3-1-1' />
		</dt>
		<dd>
			<s:text name='dd2-3-1-1' />
		</dd>
		<dt>
			<s:text name='dt2-3-1-2' />
		</dt>
		<dd>
			<s:text name='dd2-3-1-2' />
		</dd>
	</dl>
	<h3 id='c2-3-1'>
		<s:text name='title2-3-1' />
	</h3>
	<p>
		<s:text name='p2-3-1-1' />
	</p>
	<p>
		<s:text name='p2-3-1-2' />
	</p>
	<ol>
		<li><s:text name='li2-3-1-1' /></li>
		<li><s:text name='li2-3-1-2' /></li>
		<li><s:text name='li2-3-1-3' /></li>
		<li><s:text name='li2-3-1-4' /></li>
	</ol>
	<p>
		<s:text name='p2-3-1-1-1' />
	</p>
	<p class='lead'>
		<s:text name='lead2-3-1-1-1' />
	</p>
	<p>
		<s:text name='p2-3-1-1-2' />
	</p>
	<dl>
		<dt>
			<s:text name='dt2-3-1-1-1' />
		</dt>
		<dd>
			<s:text name='dd2-3-1-1-1' />
		</dd>
		<dt>
			<s:text name='dt2-3-1-1-2' />
		</dt>
		<dd>
			<s:text name='dd2-3-1-1-2' />
		</dd>
	</dl>
	<p class='lead'>
		<s:text name='lead2-3-1-1-2' />
	</p>
	<p>
		<s:text name='p2-3-1-1-3' />
	</p>
	<p>
		<s:text name='p2-3-1-1-4' />
	</p>
	<pre>
&lt;uses-feature
    android:name="android.hardware.nfc"
    android:required="true" /&gt;</pre>
	<p>
		<s:text name='p2-3-1-1-5' />
	</p>
	<p class='lead'>
		<s:text name='lead2-3-1-1-3' />
	</p>
	<p>
		<s:text name='p2-3-1-1-6' />
	</p>
	<h4>
		<s:text name='sub_title2-3-1-2' />
	</h4>
	<p>
		<s:text name='p2-3-1-2-1' />
	</p>
	<pre>
&lt;uses-feature android:name="android.hardware.nfc" android:required="false" /&gt;</pre>
	<p>
		<s:text name='p2-3-1-2-2' />
	</p>
	<p>
		<s:text name='p2-3-1-2-3' />
	</p>
	<pre>
public class MainActivity extends Activity {
    ...
    NfcAdapter mNfcAdapter;
    // Flag to indicate that Android Beam is available
    boolean mAndroidBeamAvailable  = false;
    ...
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        ...
        // NFC isn't available on the device
        if (!PackageManager.hasSystemFeature(PackageManager.FEATURE_NFC)) {
            /*
             * Disable NFC features here.
             * For example, disable menu items or buttons that activate
             * NFC-related features
             */
            ...
        // Android Beam file transfer isn't supported
        } else if (Build.VERSION.SDK_INT &lt;
                Build.VERSION_CODES.JELLY_BEAN_MR1) {
            // If Android Beam isn't available, don't continue.
            mAndroidBeamAvailable = false;
            /*
             * Disable Android Beam file transfer features here.
             */
            ...
        // Android Beam file transfer is available, continue
        } else {
        mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
        ...
        }
    }
    ...
}</pre>
	<h4>
		<s:text name='sub_title2-3-1-3' />
	</h4>
	<p>
		<s:text name='p2-3-1-3-1' />
	</p>
	<p>
		<s:text name='p2-3-1-3-2' />
	</p>
	<pre>
public class MainActivity extends Activity {
    ...
    // List of URIs to provide to Android Beam
    private Uri[] mFileUris = new Uri[10];
    ...
    /**
     * Callback that Android Beam file transfer calls to get
     * files to share
     */
    private class FileUriCallback implements
            NfcAdapter.CreateBeamUrisCallback {
        public FileUriCallback() {
        }
        /**
         * Create content URIs as needed to share with another device
         */
        @Override
        public Uri[] createBeamUris(NfcEvent event) {
            return mFileUris;
        }
    }
    ...
}
</pre>
	<p>
		<s:text name='p2-3-1-3-3' />
	</p>
	<pre>
public class MainActivity extends Activity {
    ...
    // Instance that returns available files from this app
    private FileUriCallback mFileUriCallback;
    ...
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        ...
        // Android Beam file transfer is available, continue
        ...
        mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
        /*
         * Instantiate a new FileUriCallback to handle requests for
         * URIs
         */
        mFileUriCallback = new FileUriCallback();
        // Set the dynamic callback for URI requests.
        mNfcAdapter.setBeamPushUrisCallback(mFileUriCallback,this);
        ...
    }
    ...
}
</pre>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-3-1-3-1' />
		</p>
	</div>
	<h4>
		<s:text name='sub_title2-3-1-4' />
	</h4>
	<p>
		<s:text name='p2-3-1-4-1' />
	</p>
	<pre>
        /*
         * Create a list of URIs, get a File,
         * and set its permissions
         */
        private Uri[] mFileUris = new Uri[10];
        String transferFile = "transferimage.jpg";
        File extDir = getExternalFilesDir(null);
        File requestFile = new File(extDir, transferFile);
        requestFile.setReadable(true, false);
        // Get a URI for the File and add it to the list of URIs
        fileUri = Uri.fromFile(requestFile);
        if (fileUri != null) {
            mFileUris[0] = fileUri;
        } else {
            Log.e("My Activity", "No File URI available for file.");
        }
</pre>
	<h3 id='c2-3-2'>
		<s:text name='title2-3-2' />
	</h3>
	<p>
		<s:text name='p2-3-2-1' />
	</p>
	<h4>
		<s:text name='sub_title2-3-2-1' />
	</h4>
	<p>
		<s:text name='p2-3-2-1-1' />
	</p>
	<dl>
		<dt>
			<s:text name='dt2-3-2-1-1' />
		</dt>
		<dd>
			<s:text name='dd2-3-2-1-1' />
		</dd>
		<dt>
			<s:text name='dt2-3-2-1-2' />
		</dt>
		<dd>
			<s:text name='dd2-3-2-1-2' />
		</dd>
		<dt>
			<s:text name='dt2-3-2-1-3' />
		</dt>
		<dd>
			<s:text name='dd2-3-2-1-3' />
		</dd>
	</dl>
	<p>
		<s:text name='p2-3-2-1-2' />
	</p>
	<pre>
    &lt;activity
        android:name="com.example.android.nfctransfer.ViewActivity"
        android:label="Android Beam Viewer" &gt;
        ...
        &lt;intent-filter&gt;
            &lt;action android:name="android.intent.action.VIEW"/&gt;
            &lt;category android:name="android.intent.category.DEFAULT"/&gt;
            ...
        &lt;/intent-filter&gt;
    &lt;/activity&gt;
</pre>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-3-2-1-1' />
		</p>
	</div>
	<h4>
		<s:text name='sub_title2-3-2-2' />
	</h4>
	<p>
		<s:text name='p2-3-2-2-1' />
	</p>
	<pre>
    &lt;uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" /&gt;</pre>
	<p>
		<s:text name='p2-3-2-2-2' />
	</p>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-3-2-2-1' />
		</p>
	</div>
	<p>
		<s:text name='p2-3-2-2-3' />
	</p>
	<h4>
		<s:text name='sub_title2-3-2-3' />
	</h4>
	<p>
		<s:text name='p2-3-2-3-1' />
	</p>
	<p>
		<s:text name='p2-3-2-3-2' />
	</p>
	<pre>
public class MainActivity extends Activity {
    ...
    // A File object containing the path to the transferred files
    private File mParentPath;
    // Incoming Intent
    private Intent mIntent;
    ...
    /*
     * Called from onNewIntent() for a SINGLE_TOP Activity
     * or onCreate() for a new Activity. For onNewIntent(),
     * remember to call setIntent() to store the most
     * current Intent
     *
     */
    private void handleViewIntent() {
        ...
        // Get the Intent action
        mIntent = getIntent();
        String action = mIntent.getAction();
        /*
         * For ACTION_VIEW, the Activity is being asked to display data.
         * Get the URI.
         */
        if (TextUtils.equals(action, Intent.ACTION_VIEW)) {
            // Get the URI from the Intent
            Uri beamUri = mIntent.getData();
            /*
             * Test for the type of URI, by getting its scheme value
             */
            if (TextUtils.equals(beamUri.getScheme(), "file")) {
                mParentPath = handleFileUri(beamUri);
            } else if (TextUtils.equals(
                    beamUri.getScheme(), "content")) {
                mParentPath = handleContentUri(beamUri);
            }
        }
        ...
    }
    ...
}
</pre>
	<p class='lead'>
		<s:text name='lead2-3-2-3-1' />
	</p>
	<p>
		<s:text name='p2-3-2-3-3' />
	</p>
	<pre>
    ...
    public String handleFileUri(Uri beamUri) {
        // Get the path part of the URI
        String fileName = beamUri.getPath();
        // Create a File object for this filename
        File copiedFile = new File(fileName);
        // Get a string containing the file's parent directory
        return copiedFile.getParent();
    }
    ...
</pre>
	<p class='lead'>
		<s:text name='lead2-3-2-3-2' />
	</p>
	<p>
		<s:text name='p2-3-2-3-4' />
	</p>
	<p>
		<s:text name='p2-3-2-3-5' />
	</p>
	<div class='alert alert-info' role='alert'>
		<h5 class='lead'>
			<span class='glyphicon glyphicon-info-sign'></span>
			<s:text name='note' />
		</h5>
		<p>
			<s:text name='nc2-3-2-3-1' />
		</p>
	</div>
	<p class='lead'>
		<s:text name='lead2-3-2-3-3' />
	</p>
	<p>
		<s:text name='p2-3-2-3-6' />
	</p>
	<dl>
		<dt>
			<s:text name='dt2-3-2-3-1' />
		</dt>
		<dd>
			<s:text name='dd2-3-2-3-1' />
		</dd>
		<dt>
			<s:text name='dt2-3-2-3-2' />
		</dt>
		<dd>
			<s:text name='dd2-3-2-3-2' />
		</dd>
	</dl>
	<p>
		<s:text name='p2-3-2-3-7' />
	</p>
	<p>
		<s:text name='p2-3-2-3-8' />
	</p>
	<pre>
    ...
    public String handleContentUri(Uri beamUri) {
        // Position of the filename in the query Cursor
        int filenameIndex;
        // File object for the filename
        File copiedFile;
        // The filename stored in MediaStore
        String fileName;
        // Test the authority of the URI
        if (!TextUtils.equals(beamUri.getAuthority(), MediaStore.AUTHORITY)) {
            /*
             * Handle content URIs for other content providers
             */
        // For a MediaStore content URI
        } else {
            // Get the column that contains the file name
            String[] projection = { MediaStore.MediaColumns.DATA };
            Cursor pathCursor =
                    getContentResolver().query(beamUri, projection,
                    null, null, null);
            // Check for a valid cursor
            if (pathCursor != null &amp;&amp;
                    pathCursor.moveToFirst()) {
                // Get the column index in the Cursor
                filenameIndex = pathCursor.getColumnIndex(
                        MediaStore.MediaColumns.DATA);
                // Get the full file name including path
                fileName = pathCursor.getString(filenameIndex);
                // Create a File object for the filename
                copiedFile = new File(fileName);
                // Return the parent directory of the file
                return new File(copiedFile.getParent());
             } else {
                // The query didn't work; return null
                return null;
             }
        }
    }
    ...
</pre>
	<p>
		<s:text name='p2-3-2-3-9' />
	</p>
</s:i18n>
