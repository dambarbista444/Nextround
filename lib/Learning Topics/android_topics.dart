import '../../Model/learning_topics.dart';
import 'package:next_round/Common Components/learner_type.dart';

class AndroidTopics {
  static List<LearningDetail> learningDetails = [
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the Android UI framework?",
        answer: "The Android UI framework consists of Views and ViewGroups that help developers build user interfaces. Common layout types include LinearLayout, RelativeLayout, and ConstraintLayout.",
        example: """
// Example of a simple layout using ConstraintLayout
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello, World!"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintStart_toStartOf="parent"/>
</androidx.constraintlayout.widget.ConstraintLayout>
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What language is primarily used for Android development?",
        answer: "The primary languages for Android development are Java and Kotlin, with Kotlin being the recommended language by Google.",
        example: """// Example in Kotlin
val name: String = "Android"
val age: Int = 10

// Example in Java
String name = "Android";
int age = 10;
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a RecyclerView?",
        answer: "RecyclerView is a more advanced and flexible version of ListView, used for displaying large data sets by recycling views for performance.",
        example: """// Setting up a RecyclerView with an Adapter
class MyAdapter(private val itemList: List<String>) : RecyclerView.Adapter<MyAdapter.MyViewHolder>() {
    class MyViewHolder(val textView: TextView) : RecyclerView.ViewHolder(textView)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder {
        val textView = LayoutInflater.from(parent.context)
            .inflate(android.R.layout.simple_list_item_1, parent, false) as TextView
        return MyViewHolder(textView)
    }

    override fun onBindViewHolder(holder: MyViewHolder, position: Int) {
        holder.textView.text = itemList[position]
    }

    override fun getItemCount() = itemList.size
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is an Activity in Android?",
        answer: "An Activity represents a single screen in an Android application and is responsible for handling user interactions.",
        example: """// Basic structure of an Activity
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a Fragment in Android?",
        answer: "A Fragment is a reusable component of an Activity that can display a user interface and respond to user input.",
        example: """// Example of a Fragment
class MyFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_my, container, false)
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle configuration changes in Android?",
        answer: "To handle configuration changes like screen rotations, you can override onSaveInstanceState() to save the state or specify android:configChanges in the manifest.",
        example: """// Example of saving state
override fun onSaveInstanceState(outState: Bundle) {
    super.onSaveInstanceState(outState)
    outState.putString("key", "value")
}

// Example in AndroidManifest.xml
<activity android:name=".MainActivity"
    android:configChanges="orientation|screenSize">
</activity>
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are Intents in Android?",
        answer: "Intents are messaging objects used to request an action from another app component, such as starting a new Activity.",
        example: """// Starting a new Activity using Intent
val intent = Intent(this, SecondActivity::class.java)
startActivity(intent)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are the different types of Services in Android?",
        answer: "There are three types of services in Android: Foreground Services (perform operations in the foreground), Background Services (perform operations in the background), and Bound Services (allow binding to UI components).",
        example: """// Starting a Foreground Service
class MyService : Service() {
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        startForeground(1, createNotification())
        return START_STICKY
    }

    // Create a notification for foreground service
    private fun createNotification(): Notification {
        // Implement notification creation
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the ViewModel in Android?",
        answer: "The ViewModel is a class that holds UI-related data and survives configuration changes such as screen rotations, ensuring data is retained.",
        example: """// ViewModel example
class MyViewModel : ViewModel() {
    var name: MutableLiveData<String> = MutableLiveData()
}

// Observing LiveData in an Activity
viewModel.name.observe(this, Observer { newName ->
    textView.text = newName
})
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is LiveData in Android?",
        answer: "LiveData is an observable data holder that is lifecycle-aware, meaning it only updates UI components that are in an active lifecycle state.",
        example: """// Example of using LiveData
val liveData: LiveData<String> = MutableLiveData("Initial Value")
liveData.observe(this, Observer { value ->
    textView.text = value // Update UI when LiveData changes
})
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are Kotlin coroutines?",
        answer: "Kotlin coroutines are a way to handle asynchronous programming, allowing code to be written in a sequential manner while still being non-blocking.",
        example: """// Using Kotlin coroutines
GlobalScope.launch {
    val data = fetchData() // Assume fetchData() is a suspend function
    withContext(Dispatchers.Main) {
        updateUI(data)
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a ListView in Android?",
        answer: "ListView is a UI component that displays a scrollable list of items. It is less efficient than RecyclerView for large datasets due to view recycling.",
        example: """// Basic ListView example
val listView: ListView = findViewById(R.id.listView)
val items = listOf("Item 1", "Item 2", "Item 3")
val adapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, items)
listView.adapter = adapter
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is SharedPreferences in Android?",
        answer: "SharedPreferences is used for storing simple key-value pairs in persistent storage, useful for saving user settings or preferences.",
        example: """// Example of using SharedPreferences
val sharedPreferences = getSharedPreferences("MyPrefs", MODE_PRIVATE)
val editor = sharedPreferences.edit()
editor.putString("key", "value")
editor.apply() // or commit()
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you store data in SQLite on Android?",
        answer: "SQLite is a lightweight database used in Android for storing structured data locally, typically accessed through SQLiteOpenHelper.",
        example: """// Using SQLiteOpenHelper to create a database
class MyDatabaseHelper(context: Context) : SQLiteOpenHelper(context, "MyDatabase", null, 1) {
    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL("CREATE TABLE myTable (id INTEGER PRIMARY KEY, name TEXT)")
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        db.execSQL("DROP TABLE IF EXISTS myTable")
        onCreate(db)
    }
}
"""
    ),

      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is a Context in Android?",
          answer: "Context is an interface that provides access to application-specific resources and classes, and it is often used for accessing services and resources.",
          example: """// Accessing resources using Context
val myString = context.getString(R.string.my_string)
val sharedPreferences = context.getSharedPreferences("MyPrefs", Context.MODE_PRIVATE)
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is the difference between a Service and an IntentService?",
          answer: "A Service runs in the main thread and does not have a user interface, while an IntentService is a subclass of Service that handles asynchronous requests (expressed as Intents) on demand.",
          example: """// Starting an IntentService
class MyIntentService : IntentService("MyIntentService") {
    override fun onHandleIntent(intent: Intent?) {
        // Handle the intent here
    }
}

// Starting the service
val intent = Intent(this, MyIntentService::class.java)
startService(intent)
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is a BroadcastReceiver in Android?",
          answer: "BroadcastReceiver is a component that listens for and responds to broadcast messages from other applications or from the system.",
          example: """// Example of a BroadcastReceiver
class MyBroadcastReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        // Handle the received broadcast
    }
}

// Registering the receiver in the manifest
<receiver android:name=".MyBroadcastReceiver">
    <intent-filter>
        <action android:name="MY_ACTION"/>
    </intent-filter>
</receiver>
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is a Toast in Android?",
          answer: "Toast is a short message that appears on the screen for a brief period, used to provide feedback to the user.",
          example: """// Displaying a Toast message
Toast.makeText(context, "This is a Toast message", Toast.LENGTH_SHORT).show()
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is Dependency Injection in Android?",
          answer: "Dependency Injection (DI) is a design pattern used to reduce coupling between classes by providing dependencies from external sources rather than creating them within the class.",
          example: """// Using Dagger for Dependency Injection
class MyActivity : AppCompatActivity() {
    @Inject lateinit var myDependency: MyDependency

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Inject dependencies
        DaggerAppComponent.create().inject(this)
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is the purpose of the AndroidManifest.xml file?",
          answer: "The AndroidManifest.xml file is a crucial part of an Android app that provides essential information about the app to the Android system, including components, permissions, and other configurations.",
          example: """// Basic structure of AndroidManifest.xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.myapp">
    
    <application android:label="MyApp" android:icon="@mipmap/ic_launcher">
        <activity android:name=".MainActivity">
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
    </application>
</manifest>
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is the difference between onCreate() and onStart() methods in an Activity?",
          answer: "onCreate() is called when the Activity is first created, and it is where initialization code should go, while onStart() is called just before the Activity becomes visible to the user.",
          example: """// Example of onCreate() and onStart() in an Activity
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        // Initialization code
    }

    override fun onStart() {
        super.onStart()
        // Code to execute when the Activity becomes visible
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What are the four main components of an Android application?",
          answer: "The four main components are Activities, Services, Broadcast Receivers, and Content Providers, each serving different purposes in app functionality.",
          example: """// Example of declaring components in AndroidManifest.xml
<application>
    <activity android:name=".MainActivity"/>
    <service android:name=".MyService"/>
    <receiver android:name=".MyBroadcastReceiver"/>
    <provider android:name=".MyContentProvider"/>
</application>
"""
      ),

      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is an AsyncTask in Android?",
          answer: "AsyncTask is a class that allows you to perform background operations and publish results on the UI thread without having to manipulate threads directly.",
          example: """// Example of using AsyncTask
class MyAsyncTask : AsyncTask<Void, Void, String>() {
    override fun doInBackground(vararg params: Void?): String {
        // Perform background operation
        return "Result"
    }

    override fun onPostExecute(result: String) {
        // Update UI with the result
        textView.text = result
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is a Splash Screen in Android?",
          answer: "A Splash Screen is an introductory screen that appears when an app is launched, often used to display branding or a loading indicator.",
          example: """// Example of implementing a Splash Screen
class SplashActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)

        // Redirect to MainActivity after a delay
        Handler(Looper.getMainLooper()).postDelayed({
            startActivity(Intent(this, MainActivity::class.java))
            finish()
        }, 2000) // 2 seconds delay
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is the use of the `findViewById()` method?",
          answer: "The `findViewById()` method is used to retrieve a reference to a View in your layout, allowing you to manipulate it programmatically.",
          example: """// Example of using findViewById
val button: Button = findViewById(R.id.my_button)
button.setOnClickListener {
    Toast.makeText(this, "Button clicked", Toast.LENGTH_SHORT).show()
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What are data classes in Kotlin?",
          answer: "Data classes are classes in Kotlin that are primarily used to hold data, automatically providing equals(), hashCode(), and toString() methods.",
          example: """// Example of a data class
data class User(val id: Int, val name: String)

// Creating an instance of the data class
val user = User(1, "Alice")
println(user) // Output: User(id=1, name=Alice)
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is a Navigation Component in Android?",
          answer: "The Navigation Component is part of the Jetpack libraries, providing a framework for navigating between app destinations and managing the back stack.",
          example: """// Example of setting up a navigation graph in XML
<navigation xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    app:startDestination="@id/firstFragment">
    
    <fragment
        android:id="@+id/firstFragment"
        android:name="com.example.FirstFragment"
        android:label="First Fragment"/>
    
    <fragment
        android:id="@+id/secondFragment"
        android:name="com.example.SecondFragment"
        android:label="Second Fragment"/>
</navigation>
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is View Binding in Android?",
          answer: "View Binding is a feature that allows you to easily interact with views in your layout files, generating binding classes for each XML layout.",
          example: """// Example of using View Binding
class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.myButton.setOnClickListener {
            Toast.makeText(this, "Button clicked", Toast.LENGTH_SHORT).show()
        }
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What are the permissions in Android?",
          answer: "Permissions in Android are used to grant or restrict access to sensitive data or system features, such as camera, contacts, and location.",
          example: """// Example of requesting permissions in Android
if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA)
    != PackageManager.PERMISSION_GRANTED) {
    ActivityCompat.requestPermissions(this, arrayOf(Manifest.permission.CAMERA), 100)
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.beginner,
          question: "What is an Emulator in Android development?",
          answer: "An Emulator is a software application that simulates Android devices on your computer, allowing developers to test their applications without needing physical devices.",
          example: """// Example of using the Emulator
// Run your app in the Emulator via Android Studio's run configurations.
// Select an AVD (Android Virtual Device) to test your application.
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the difference between Serializable and Parcelable in Android?",
          answer: "Serializable is a standard Java interface for object serialization, while Parcelable is Android's efficient serialization mechanism designed specifically for inter-process communication.",
          example: """// Example of Parcelable implementation
data class User(val id: Int, val name: String) : Parcelable {
    constructor(parcel: Parcel) : this(parcel.readInt(), parcel.readString()!!)
    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeInt(id)
        parcel.writeString(name)
    }

    override fun describeContents(): Int {
        return 0
    }

    companion object CREATOR : Parcelable.Creator<User> {
        override fun createFromParcel(parcel: Parcel): User {
            return User(parcel)
        }

        override fun newArray(size: Int): Array<User?> {
            return arrayOfNulls(size)
        }
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is Dependency Injection and how does it work in Android?",
          answer: "Dependency Injection (DI) is a design pattern that allows an object to receive its dependencies from an external source rather than creating them internally. In Android, DI frameworks like Dagger and Hilt manage object creation and lifecycle.",
          example: """// Example of Dependency Injection with Hilt
@HiltAndroidApp
class MyApplication : Application()

@AndroidEntryPoint
class MainActivity : AppCompatActivity() {
    @Inject lateinit var repository: UserRepository

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What are Coroutines in Kotlin and how do they work?",
          answer: "Coroutines are lightweight threads in Kotlin that simplify asynchronous programming by allowing you to write non-blocking code that is easy to read and maintain.",
          example: """// Example of using Coroutines
fun fetchData() {
    GlobalScope.launch(Dispatchers.Main) {
        val data = withContext(Dispatchers.IO) {
            // Simulating network call
            delay(1000)
            "Fetched Data"
        }
        // Update UI with fetched data
        textView.text = data
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is LiveData and how is it used in Android?",
          answer: "LiveData is a lifecycle-aware data holder class that allows you to observe changes in data and update the UI automatically, making it easier to manage UI updates in response to data changes.",
          example: """// Example of using LiveData
class MyViewModel : ViewModel() {
    private val _userData = MutableLiveData<User>()
    val userData: LiveData<User> get() = _userData

    fun fetchUser() {
        // Fetch user data and update LiveData
        _userData.value = User(1, "Alice")
    }
}

// In Activity or Fragment
viewModel.userData.observe(this, Observer { user ->
    // Update UI with user data
    textView.text = user.name
})
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the purpose of a Content Provider in Android?",
          answer: "A Content Provider manages access to a structured set of data, allowing different applications to share and manage data in a secure way.",
          example: """// Example of defining a Content Provider
class MyContentProvider : ContentProvider() {
    override fun query(uri: Uri, projection: Array<String>?, selection: String?, selectionArgs: Array<String>?, sortOrder: String?): Cursor? {
        // Query data from the database
    }

    override fun insert(uri: Uri, values: ContentValues?): Uri? {
        // Insert data into the database
    }

    // Other required methods: update, delete, getType
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the Room Persistence Library?",
          answer: "Room is a part of the Android Architecture Components, providing an abstraction layer over SQLite to simplify database management and provide compile-time checks for SQL queries.",
          example: """// Example of Room setup
@Entity(tableName = "user")
data class User(@PrimaryKey val id: Int, val name: String)

@Dao
interface UserDao {
    @Insert
    suspend fun insert(user: User)

    @Query("SELECT * FROM user")
    suspend fun getAllUsers(): List<User>
}

@Database(entities = [User::class], version = 1)
abstract class AppDatabase : RoomDatabase() {
    abstract fun userDao(): UserDao
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is a Fragment and how does it differ from an Activity?",
          answer: "A Fragment represents a portion of the user interface in an Activity, and it can be reused in different Activities. Unlike Activities, Fragments can exist within a single Activity and have their own lifecycle.",
          example: """// Example of using a Fragment
class MyFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_my, container, false)
    }
}

// Adding a Fragment to an Activity
supportFragmentManager.beginTransaction()
    .replace(R.id.fragment_container, MyFragment())
    .commit()
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What are RecyclerView and its advantages over ListView?",
          answer: "RecyclerView is an advanced version of ListView that provides more flexibility and efficiency in displaying large datasets by reusing item views and supporting layout managers.",
          example: """// Example of setting up RecyclerView
class MyAdapter(private val itemList: List<String>) : RecyclerView.Adapter<MyAdapter.ViewHolder>() {
    class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val textView: TextView = view.findViewById(R.id.text_view)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_layout, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.textView.text = itemList[position]
    }

    override fun getItemCount() = itemList.size
}

// In Activity or Fragment
val recyclerView: RecyclerView = findViewById(R.id.recycler_view)
recyclerView.layoutManager = LinearLayoutManager(this)
recyclerView.adapter = MyAdapter(listOf("Item 1", "Item 2", "Item 3"))
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the purpose of the ViewModel class in Android Architecture Components?",
          answer: "ViewModel is designed to store and manage UI-related data in a lifecycle-conscious way. It allows data to survive configuration changes like screen rotations.",
          example: """// Example of ViewModel usage
class MyViewModel : ViewModel() {
    private val _count = MutableLiveData<Int>()
    val count: LiveData<Int> get() = _count

    fun increment() {
        _count.value = (_count.value ?: 0) + 1
    }
}

// In Activity or Fragment
val viewModel = ViewModelProvider(this).get(MyViewModel::class.java)
viewModel.count.observe(this, Observer { count ->
    textView.text = count.toString()
})
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the difference between MutableLiveData and LiveData?",
          answer: "LiveData is an observable data holder class that is lifecycle-aware, while MutableLiveData is a subclass of LiveData that allows you to change its value.",
          example: """// Example of using MutableLiveData
val mutableLiveData = MutableLiveData<String>()
mutableLiveData.value = "New Value"

// Observing changes
mutableLiveData.observe(this, Observer { value ->
    textView.text = value
})
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What are Kotlin Sealed Classes and how are they used?",
          answer: "Sealed classes are used to represent restricted class hierarchies, allowing you to define a type that can hold a specific set of types, making it easier to handle complex state management.",
          example: """// Example of a sealed class
sealed class Result {
    data class Success(val data: String) : Result()
    data class Error(val exception: Exception) : Result()
}

// Using sealed class
fun handleResult(result: Result) {
    when (result) {
        is Result.Success -> textView.text = result.data
        is Result.Error -> textView.text = result.exception.message
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the use of the @BindingAdapter annotation in Android?",
          answer: "The @BindingAdapter annotation is used in data binding to create custom binding methods for specific attributes in your XML layouts.",
          example: """// Example of using @BindingAdapter
@BindingAdapter("app:loadImage")
fun loadImage(view: ImageView, url: String?) {
    Glide.with(view.context).load(url).into(view)
}

// In XML layout
<ImageView
    android:id="@+id/imageView"
    app:loadImage="@{viewModel.imageUrl}"/>
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is Retrofit and how does it work?",
          answer: "Retrofit is a type-safe HTTP client for Android and Java, used to simplify network calls and handle API responses through annotations.",
          example: """// Example of Retrofit setup
interface ApiService {
    @GET("users")
    suspend fun getUsers(): List<User>
}

val retrofit = Retrofit.Builder()
    .baseUrl("https://api.example.com/")
    .addConverterFactory(GsonConverterFactory.create())
    .build()

val apiService = retrofit.create(ApiService::class.java)
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is an ANR in Android and how can it be avoided?",
          answer: "ANR (Application Not Responding) occurs when an application is unresponsive for more than 5 seconds. It can be avoided by performing long-running tasks on a background thread.",
          example: """// Example of avoiding ANR using Coroutines
fun fetchData() {
    GlobalScope.launch(Dispatchers.Main) {
        val result = withContext(Dispatchers.IO) {
            // Simulate network call
            delay(2000)
            "Fetched Data"
        }
        textView.text = result
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the role of ProGuard in Android development?",
          answer: "ProGuard is a tool that shrinks, optimizes, and obfuscates Java code, helping to reduce the size of the APK and making it harder to reverse-engineer.",
          example: """// Example of ProGuard configuration in build.gradle
android {
    buildTypes {
        release {
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is a Broadcast and how is it different from a LocalBroadcast?",
          answer: "A Broadcast is a message sent by an application to inform other applications about an event, while LocalBroadcast is used to send messages within the same application, ensuring better performance and security.",
          example: """// Example of sending a LocalBroadcast
val intent = Intent("MY_ACTION")
LocalBroadcastManager.getInstance(this).sendBroadcast(intent)

// Receiving the LocalBroadcast
val receiver = object : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        // Handle the broadcast
    }
}
LocalBroadcastManager.getInstance(this).registerReceiver(receiver, IntentFilter("MY_ACTION"))
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is a Loader in Android?",
          answer: "A Loader is an interface for asynchronously loading data in an Activity or Fragment. It manages data loading across configuration changes and provides data in a lifecycle-aware manner.",
          example: """// Example of using a Loader
class MyLoader : AsyncTaskLoader<List<User>>(context) {
    override fun loadInBackground(): List<User>? {
        // Load data from database or network
    }

    override fun deliverResult(data: List<User>?) {
        // Deliver the loaded data to the UI
        super.deliverResult(data)
    }
}
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the significance of the `@SerializedName` annotation in Retrofit?",
          answer: "The `@SerializedName` annotation is used in Retrofit to map JSON keys to Kotlin properties, allowing for flexibility in handling API responses.",
          example: """// Example of using @SerializedName
data class User(
    @SerializedName("user_id") val id: Int,
    @SerializedName("user_name") val name: String
)
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "How can you handle configuration changes in Android?",
          answer: "You can handle configuration changes by using ViewModel to retain data across configuration changes, or by specifying configuration changes in the AndroidManifest file to prevent the activity from restarting.",
          example: """// Example of handling configuration changes with ViewModel
class MainActivity : AppCompatActivity() {
    private val viewModel: MyViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }
}
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the Repository pattern in Android development?",
          answer: "The Repository pattern is used to abstract data sources and provide a clean API for data access to the rest of the application. It can manage data from multiple sources, such as databases and network.",
          example: """// Example of Repository pattern
class UserRepository(private val userDao: UserDao, private val apiService: ApiService) {
    suspend fun getUser(userId: Int): User {
        return userDao.getUser(userId) ?: apiService.getUser(userId)
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is Dependency Inversion Principle and how does it relate to Android?",
          answer: "The Dependency Inversion Principle states that high-level modules should not depend on low-level modules, but both should depend on abstractions. In Android, it encourages using interfaces and dependency injection to reduce coupling.",
          example: """// Example of Dependency Inversion
interface UserService {
    fun getUser(): User
}

class UserRepository(private val userService: UserService) {
    fun fetchUser() {
        val user = userService.getUser()
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "How can you implement a custom View in Android?",
          answer: "A custom View can be implemented by extending the View class and overriding the onDraw method to define how the view should be rendered.",
          example: """// Example of a custom View
class MyCustomView(context: Context, attrs: AttributeSet) : View(context, attrs) {
    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        // Custom drawing code
        canvas.drawColor(Color.RED)
    }
}
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the role of the ViewBinding feature in Android?",
          answer: "ViewBinding is a feature that allows you to more easily write code that interacts with views by generating a binding class for each XML layout file. It eliminates the need for `findViewById()`.",
          example: """// Example of ViewBinding
class MainActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.textView.text = "Hello, ViewBinding!"
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is a JobScheduler in Android, and how does it differ from WorkManager?",
          answer: "JobScheduler is an API for scheduling background tasks based on conditions like network availability or device charging state. WorkManager is more flexible and is backward-compatible with older Android versions.",
          example: """// Example of using JobScheduler
val componentName = ComponentName(this, MyJobService::class.java)
val jobInfo = JobInfo.Builder(123, componentName)
    .setRequiredNetworkType(JobInfo.NETWORK_TYPE_UNMETERED)
    .setRequiresCharging(true)
    .build()

val jobScheduler = getSystemService(JOB_SCHEDULER_SERVICE) as JobScheduler
jobScheduler.schedule(jobInfo)
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "How can you implement pagination in RecyclerView?",
          answer: "Pagination in RecyclerView can be implemented using `Paging 3` library, which loads data in chunks and reduces memory overhead by loading only what's necessary.",
          example: """// Example of setting up Paging 3
class UserPagingSource(private val apiService: ApiService) : PagingSource<Int, User>() {
    override suspend fun load(params: LoadParams<Int>): LoadResult<Int, User> {
        val page = params.key ?: 1
        return try {
            val response = apiService.getUsers(page)
            LoadResult.Page(
                data = response,
                prevKey = if (page == 1) null else page - 1,
                nextKey = if (response.isEmpty()) null else page + 1
            )
        } catch (e: Exception) {
            LoadResult.Error(e)
        }
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is a ContentProvider in Android, and when would you use it?",
          answer: "A ContentProvider is used to share data between applications. It acts as an abstraction layer for different data sources, allowing applications to securely access and modify shared data.",
          example: """// Example of a simple ContentProvider
class MyContentProvider : ContentProvider() {
    override fun query(uri: Uri, projection: Array<String>?, selection: String?, selectionArgs: Array<String>?, sortOrder: String?): Cursor? {
        // Query logic for retrieving data
    }

    override fun insert(uri: Uri, values: ContentValues?): Uri? {
        // Insert data logic
    }

    // Implement other required methods like update, delete, getType
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "How does the Navigation component handle safe arguments in Android?",
          answer: "Safe Args is a Gradle plugin for Android's Navigation component that provides type-safe access to arguments when navigating between fragments, eliminating the risk of invalid arguments.",
          example: """// Example of Safe Args in Navigation Component
// Define argument in navigation XML
<fragment
    android:id="@+id/detailFragment"
    android:name="com.example.DetailFragment"
    tools:layout="@layout/fragment_detail">
    <argument
        android:name="userId"
        app:argType="int" />
</fragment>

// Passing argument in code
val action = ListFragmentDirections.actionToDetailFragment(userId = 5)
findNavController().navigate(action)

// Receiving argument in fragment
val userId = DetailFragmentArgs.fromBundle(requireArguments()).userId
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the difference between ConstraintLayout and LinearLayout?",
          answer: "ConstraintLayout is a more flexible and efficient layout compared to LinearLayout. It allows you to position elements relative to other elements or the parent layout, reducing nested layouts and improving performance.",
          example: """// Example of ConstraintLayout usage
<androidx.constraintlayout.widget.ConstraintLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello, World!"
        app:layout_constraintTop_toTopOf="parent"
        app:layout_constraintStart_toStartOf="parent"/>

    <Button
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Click Me"
        app:layout_constraintTop_toBottomOf="@id/textView"
        app:layout_constraintStart_toStartOf="parent"/>
</androidx.constraintlayout.widget.ConstraintLayout>
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "How does Android Jetpack’s DataStore replace SharedPreferences?",
          answer: "DataStore is part of Android Jetpack and is a more efficient alternative to SharedPreferences for storing key-value pairs. It uses Kotlin coroutines and Flow for asynchronous and transactional operations.",
          example: """// Example of DataStore setup
val dataStore: DataStore<Preferences> = createDataStore(name = "settings")

// Saving data
val EXAMPLE_KEY = preferencesKey<String>("example_key")
runBlocking {
    dataStore.edit { settings ->
        settings[EXAMPLE_KEY] = "Example Value"
    }
}

// Reading data
val exampleFlow: Flow<String> = dataStore.data.map { preferences ->
    preferences[EXAMPLE_KEY] ?: "Default Value"
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is a CoroutineScope and how is it used in Android?",
          answer: "A CoroutineScope defines the lifecycle of coroutines. In Android, a CoroutineScope is typically tied to a lifecycle component (like ViewModel) and ensures coroutines are properly canceled to avoid memory leaks.",
          example: """// Example of CoroutineScope usage
class MyViewModel : ViewModel() {
    private val viewModelScope = CoroutineScope(Dispatchers.Main)

    fun fetchData() {
        viewModelScope.launch {
            val data = repository.getData()
            // Update UI with data
        }
    }

    override fun onCleared() {
        super.onCleared()
        viewModelScope.cancel()  // Cancels coroutines when ViewModel is cleared
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "How do you handle exceptions in Kotlin coroutines?",
          answer: "Exceptions in Kotlin coroutines can be handled using `try-catch` blocks within coroutine scopes, or by defining a CoroutineExceptionHandler that handles uncaught exceptions globally for a specific coroutine scope.",
          example: """// Example of handling exceptions in coroutines
val handler = CoroutineExceptionHandler { _, exception ->
    Log.e("CoroutineException", "Caught: ＄{exception.message}")
}

viewModelScope.launch(handler) {
    try {
        val data = repository.getData()
        // Process data
    } catch (e: IOException) {
        // Handle specific exceptions
        Log.e("IOException", "Network error")
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What are Android architecture components, and how do they help in app development?",
          answer: "Android architecture components are a collection of libraries that help developers design robust, maintainable, and testable applications. They include components like ViewModel, LiveData, Room, and WorkManager, which simplify common tasks.",
          example: """// Example of architecture components
class MyViewModel(private val repository: UserRepository) : ViewModel() {
    val userLiveData: LiveData<User> = liveData {
        val data = repository.getUserData()
        emit(data)
    }
}
"""
      ),

      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What is the purpose of the `sealed class` in Kotlin and how does it help in Android development?",
          answer: "A `sealed class` in Kotlin restricts the inheritance hierarchy, meaning all possible subclasses are known at compile time. This makes it ideal for handling states or events in Android, especially in ViewModels.",
          example: """// Example of a sealed class for handling UI state
sealed class UiState {
    object Loading : UiState()
    data class Success(val data: String) : UiState()
    data class Error(val exception: Throwable) : UiState()
}

fun handleState(state: UiState) {
    when (state) {
        is UiState.Loading -> showLoading()
        is UiState.Success -> showData(state.data)
        is UiState.Error -> showError(state.exception.message)
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "How do you handle memory leaks in Android, particularly in activities and fragments?",
          answer: "Memory leaks can occur if long-running operations or references to views are not cleaned up. Leaks can be avoided by using weak references, nullifying references in `onDestroy`, and using lifecycle-aware components such as ViewModel.",
          example: """// Example of avoiding memory leaks in Fragment
class MyFragment : Fragment() {
    private var _binding: FragmentBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null // Clear reference to avoid memory leaks
    }
}
"""
      ),
      LearningDetail(
          learnerType: LearnerType.intermediate,
          question: "What are the different types of Launch Modes in Android, and when would you use them?",
          answer: "Android provides four launch modes: `standard`, `singleTop`, `singleTask`, and `singleInstance`. These modes control how activities are instantiated and placed in the activity stack.",
          example: """// Example of setting launch mode in AndroidManifest.xml
<activity android:name=".MainActivity"
    android:launchMode="singleTop">
</activity>

// Explanation:
// - `standard`: Creates a new instance every time.
// - `singleTop`: Reuses the existing activity at the top of the stack if it is already running.
// - `singleTask`: Reuses the existing instance and clears any activities on top of it in the task stack.
// - `singleInstance`: Similar to `singleTask` but ensures no other activities are in the same task.
"""
      ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Dagger Hilt and how is it different from Dagger in Android?",
        answer: "Dagger Hilt is a simplified version of Dagger designed specifically for Android. It provides a standardized way to incorporate Dependency Injection into an Android app, reducing boilerplate code by integrating with Android components like Activities and Fragments.",
        example: """// Example of using Hilt in Android
@HiltAndroidApp
class MyApplication : Application()

@AndroidEntryPoint
class MainActivity : AppCompatActivity() {
    @Inject lateinit var repository: UserRepository

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are content URIs and how do you use them in Content Providers?",
        answer: "A Content URI identifies the data in a ContentProvider, enabling other apps to access it using a URI. They are used to query, insert, update, or delete data.",
        example: """// Example of using Content URI in a ContentProvider
val contentUri = Uri.parse("content://com.example.provider/contacts")
val cursor: Cursor? = contentResolver.query(contentUri, null, null, null, null)

override fun query(uri: Uri, projection: Array<out String>?, selection: String?, selectionArgs: Array<out String>?, sortOrder: String?): Cursor? {
    // Query the database and return the results
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the Jetpack Navigation component, and how do you implement deep linking?",
        answer: "The Navigation component helps you implement navigation between fragments, activities, and deep links using a navigation graph. Deep linking allows an app to open a specific destination or content when launched from an external URL.",
        example: """// Example of deep linking in Navigation component
// In nav_graph.xml
<deepLink
    app:uri="https://www.example.com/user/{userId}" />

// Handling deep link in activity
val navController = findNavController(R.id.nav_host_fragment)
navController.handleDeepLink(intent)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does WorkManager handle guaranteed background tasks in Android?",
        answer: "WorkManager allows you to schedule and manage deferrable, guaranteed background tasks, even if the app is closed or the device restarts. It works with constraints like network availability, charging status, etc.",
        example: """// Example of WorkManager for background tasks
val uploadWorkRequest = OneTimeWorkRequestBuilder<UploadWorker>()
    .setConstraints(
        Constraints.Builder()
            .setRequiredNetworkType(NetworkType.CONNECTED)
            .build())
    .build()

WorkManager.getInstance(context).enqueue(uploadWorkRequest)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Scoped Storage, and how does it improve privacy in Android?",
        answer: "Scoped Storage restricts direct access to the shared storage by apps, improving privacy. Apps can access only their own data and must use specific APIs to access shared storage.",
        example: """// Example of accessing files in Scoped Storage
val resolver: ContentResolver = context.contentResolver
val inputStream = resolver.openInputStream(Uri.parse("content://com.example.provider/document/1"))
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement bi-directional data binding in Android?",
        answer: "Bi-directional data binding allows changes in the UI to update the underlying data model and vice versa using the `@=` syntax in XML.",
        example: """// Example of bi-directional data binding
<EditText
    android:text="@={viewModel.userName}" />

// In ViewModel
val userName = MutableLiveData<String>()
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a BroadcastReceiver and how do you register it dynamically?",
        answer: "A BroadcastReceiver responds to system-wide broadcast announcements like battery level changes. It can be registered either statically in the manifest or dynamically in code.",
        example: """// Example of dynamically registering a BroadcastReceiver
val receiver = object : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        // Handle the broadcast
    }
}

val intentFilter = IntentFilter(Intent.ACTION_BATTERY_CHANGED)
registerReceiver(receiver, intentFilter)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between LiveData and StateFlow?",
        answer: "LiveData is lifecycle-aware and is typically used for UI-related data. StateFlow is a part of Kotlin's Flow API, providing a more modern and functional approach to handle state and data flows.",
        example: """// Example of StateFlow
class MyViewModel : ViewModel() {
    private val _uiState = MutableStateFlow("Initial State")
    val uiState: StateFlow<String> = _uiState

    fun updateState(newState: String) {
        _uiState.value = newState
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is an ActivityManager and how do you use it?",
        answer: "ActivityManager is a system service in Android used to manage the application's tasks, activities, and memory. It provides access to information about running tasks and services.",
        example: """// Example of using ActivityManager
val activityManager = getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
val runningTasks = activityManager.getRunningTasks(10)
runningTasks.forEach { task ->
    Log.d("TaskInfo", task.baseActivity?.className ?: "Unknown")
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Kotlin inline functions and how do they improve performance?",
        answer: "Inline functions in Kotlin reduce the overhead of function calls by inserting the function's body directly into the call site. This avoids creating an additional call stack and improves performance, especially with lambdas.",
        example: """// Example of inline function in Kotlin
inline fun <T> execute(block: () -> T): T {
    return block()
}

// Usage
execute {
    println("This code is inlined")
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are App Bundles and how do they improve Android app delivery?",
        answer: "App Bundles allow dynamic delivery of app features and resources, optimizing APK size for different device configurations (screen size, architecture, etc.). This reduces download size and speeds up installation.",
        example: """// Example of enabling App Bundles in Gradle
android {
    bundle {
        language {
            enableSplit = true // Language splits enabled
        }
    }
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Android’s WorkManager ensure task execution, even after the app is killed?",
        answer: "WorkManager is designed to ensure task execution by using a combination of JobScheduler, Firebase JobDispatcher, and AlarmManager. It persists tasks in a local database, ensuring they are completed even if the app or device is restarted.",
        example: """// Example of WorkManager configuration
val workRequest = OneTimeWorkRequestBuilder<SyncWorker>()
    .setConstraints(Constraints.Builder()
        .setRequiresBatteryNotLow(true)
        .build())
    .build()

WorkManager.getInstance(context).enqueue(workRequest)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you use the Android Jetpack Navigation component to manage fragment transitions?",
        answer: "The Navigation component simplifies navigation by providing a centralized graph to handle fragment transitions, deep links, and back-stack management.",
        example: """// Example of navigation between fragments
val action = FirstFragmentDirections.actionToSecondFragment()
findNavController().navigate(action)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a JobIntentService, and how does it differ from IntentService?",
        answer: "JobIntentService is a backward-compatible version of IntentService that ensures tasks are completed, even on newer Android versions. It enqueues work to JobScheduler on API 26+ devices and runs the same service on older devices.",
        example: """// Example of using JobIntentService
class MyJobIntentService : JobIntentService() {
    override fun onHandleWork(intent: Intent) {
        // Handle the background task here
    }
}

// Enqueueing work
MyJobIntentService.enqueueWork(context, MyJobIntentService::class.java, JOB_ID, intent)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are RenderScript and how do they help in Android development?",
        answer: "RenderScript is a framework for running computationally intensive tasks, such as image processing, on Android devices' GPU or multi-core CPUs. It's used for performance-sensitive tasks like image blurring, encryption, or scientific computation.",
        example: """// Example of RenderScript for blurring an image
val renderScript = RenderScript.create(context)
val input = Allocation.createFromBitmap(renderScript, bitmap)
val output = Allocation.createTyped(renderScript, input.type)
val script = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript))
script.setRadius(10f)
script.setInput(input)
script.forEach(output)
output.copyTo(bitmap)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement dependency injection (DI) with Dagger in Android?",
        answer: "Dagger is a dependency injection framework for Java and Android. It automatically generates the necessary code to provide dependencies, reducing boilerplate code and improving testability.",
        example: """// Example of Dagger setup
@Module
class NetworkModule {
    @Provides
    fun provideRetrofit(): Retrofit {
        return Retrofit.Builder()
            .baseUrl("https://api.example.com")
            .build()
    }
}

@Component(modules = [NetworkModule::class])
interface AppComponent {
    fun inject(activity: MainActivity)
}

// Injecting the dependency in an activity
class MainActivity : AppCompatActivity() {
    @Inject lateinit var retrofit: Retrofit

    override fun onCreate(savedInstanceState: Bundle?) {
        (application as MyApplication).appComponent.inject(this)
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Android App Links, and how do they improve deep linking?",
        answer: "Android App Links allow your app to handle URLs that would otherwise open a browser. They ensure your app is the default handler for specific URLs without requiring user confirmation.",
        example: """// Example of setting up Android App Links in manifest
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="https"
          android:host="www.example.com"
          android:pathPrefix="/path" />
</intent-filter>
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the Android Profiler and how is it used to identify performance issues?",
        answer: "The Android Profiler is a tool in Android Studio that helps monitor app performance, including CPU, memory, network, and energy usage. It helps identify bottlenecks, memory leaks, and inefficient resource usage.",
        example: """// Steps to use Android Profiler:
1. Open the Profiler tab in Android Studio.
2. Select the app process you want to profile.
3. View CPU, memory, and network activity to identify performance issues.
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a Kotlin Flow, and how does it differ from RxJava?",
        answer: "Kotlin Flow is a reactive stream that is part of Kotlin Coroutines. It is a simpler, more lightweight alternative to RxJava for handling asynchronous data streams. Flow is cold by default, meaning it doesn’t emit data until it’s collected.",
        example: """// Example of Kotlin Flow
fun fetchData(): Flow<String> = flow {
    emit("Data Loaded")
}

viewModelScope.launch {
    fetchData().collect { data ->
        textView.text = data
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Instant Apps, and how do you configure your app to support them?",
        answer: "Android Instant Apps allow users to use your app without installing it. You can configure your app to support Instant Apps by modularizing your app and creating URL intents that point to specific features.",
        example: """// Example of configuring Instant Apps
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.instantapp">
    <module android:title="My Module"
        android:installable="false">
        <intent-filter>
            <action android:name="android.intent.action.VIEW" />
            <category android:name="android.intent.category.DEFAULT" />
            <category android:name="android.intent.category.BROWSABLE" />
            <data android:scheme="https" android:host="www.example.com" />
        </intent-filter>
    </module>
</manifest>
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does the Android ART (Android Runtime) work, and what improvements does it bring over Dalvik?",
        answer: "Android ART (Android Runtime) is the default runtime used by Android since version 5.0 (Lollipop). ART uses Ahead-of-Time (AOT) compilation, improving app performance, memory management, and battery efficiency over Dalvik, which used Just-in-Time (JIT) compilation.",
        example: """// ART improvements:
- Faster app startup times due to AOT compilation.
- Reduced CPU usage, leading to better battery life.
- Improved garbage collection mechanisms.
"""
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Android Fragments and how do you handle their lifecycle in complex navigation scenarios?",
        answer: "Fragments represent a portion of the UI in an Activity. Their lifecycle is tied to the host Activity, but complex navigation between fragments requires careful lifecycle handling, especially when using ViewModels, back-stack management, and configuration changes.",
        example: """// Example of handling fragment lifecycle
override fun onCreateView(
    inflater: LayoutInflater, container: ViewGroup?,
    savedInstanceState: Bundle?
): View? {
    return inflater.inflate(R.layout.fragment_example, container, false)
}

override fun onPause() {
    super.onPause()
    // Handle any changes before the fragment is paused
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Android Multidex and when is it necessary to use it?",
        answer: "Multidex is necessary when your app exceeds the 65K method limit imposed by the DEX file format. Multidex splits your app into multiple DEX files to avoid hitting this method limit.",
        example: """// Example of enabling multidex in build.gradle
android {
    defaultConfig {
        multiDexEnabled true
    }
}

// In Application class
class MyApplication : MultiDexApplication() {
    override fun onCreate() {
        super.onCreate()
        MultiDex.install(this)
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you use Android’s Room Persistence Library to handle complex database relations?",
        answer: "Room allows handling one-to-many and many-to-many relationships between entities using @Relation annotation. This simplifies querying relational data in SQLite using Room's abstraction.",
        example: """// Example of one-to-many relationship in Room
@Entity
data class User(
    @PrimaryKey val userId: Long,
    val userName: String
)

@Entity
data class Book(
    @PrimaryKey val bookId: Long,
    val bookTitle: String,
    val userOwnerId: Long
)

data class UserWithBooks(
    @Embedded val user: User,
    @Relation(
        parentColumn = "userId",
        entityColumn = "userOwnerId"
    )
    val books: List<Book>
)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Memory Profiler in Android Studio and how do you use it to track memory leaks?",
        answer: "Memory Profiler is a tool in Android Studio that helps track memory usage and identify memory leaks in real time. It provides a detailed view of allocated objects, heap size, and garbage collection events.",
        example: """// Steps to use Memory Profiler:
1. Open Android Studio and run the app.
2. Navigate to View > Tool Windows > Profiler.
3. Select the Memory tab to start profiling.
4. Use the 'Record' button to capture memory allocations and analyze heap dumps.
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle database migrations in Room?",
        answer: "Room provides a migration API to handle schema changes without wiping the database. You define migration strategies using the Migration class and pass them to the Room database builder.",
        example: """// Example of Room database migration
val MIGRATION_1_2 = object : Migration(1, 2) {
    override fun migrate(database: SupportSQLiteDatabase) {
        // SQL query to alter table or modify schema
        database.execSQL("ALTER TABLE User ADD COLUMN age INTEGER")
    }
}

val db = Room.databaseBuilder(
    applicationContext,
    MyDatabase::class.java, "my-database"
).addMigrations(MIGRATION_1_2).build()
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Android handle cold starts and what optimizations can be made to reduce cold start times?",
        answer: "Cold starts happen when the app is launched from a completely terminated state, leading to significant startup overhead. Optimizations include reducing the app's onCreate() workload, lazy loading resources, and using a Splash Screen to give feedback during startup.",
        example: """// Example of optimizing cold start with a lightweight SplashScreen
class SplashScreenActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.splash_screen)
        
        Handler(Looper.getMainLooper()).postDelayed({
            startActivity(Intent(this, MainActivity::class.java))
            finish()
        }, 2000)  // Delay for 2 seconds
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is StrictMode in Android, and how can it help you find performance bottlenecks?",
        answer: "StrictMode is a developer tool that helps detect and report potentially harmful actions like disk or network access on the main thread. It helps find performance bottlenecks during development.",
        example: """// Example of enabling StrictMode
StrictMode.setThreadPolicy(
    StrictMode.ThreadPolicy.Builder()
        .detectAll()
        .penaltyLog()
        .penaltyDeath()
        .build()
)

StrictMode.setVmPolicy(
    StrictMode.VmPolicy.Builder()
        .detectLeakedSqlLiteObjects()
        .detectLeakedClosableObjects()
        .penaltyLog()
        .build()
)
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Android handle background execution limits in API 26 and above?",
        answer: "Starting from API 26 (Oreo), Android introduced strict background execution limits to improve battery life. Apps cannot run background services indefinitely and should use foreground services or JobScheduler/WorkManager for background tasks.",
        example: """// Example of starting a foreground service
val intent = Intent(this, MyForegroundService::class.java)
ContextCompat.startForegroundService(this, intent)

// In MyForegroundService class
override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
    val notification = createNotification()
    startForeground(NOTIFICATION_ID, notification)
    // Continue background task
    return START_NOT_STICKY
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you manage API versioning in Android applications?",
        answer: "API versioning allows you to manage changes in your backend or external API while ensuring backward compatibility. This can be achieved using versioned endpoints, feature flags, or supporting multiple API versions concurrently.",
        example: """// Example of using Retrofit for API versioning
interface ApiServiceV1 {
    @GET("v1/users")
    suspend fun getUsersV1(): List<User>
}

interface ApiServiceV2 {
    @GET("v2/users")
    suspend fun getUsersV2(): List<User>
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the role of JNI (Java Native Interface) in Android development?",
        answer: "JNI allows Android apps to invoke native C/C++ code for tasks that require higher performance or system-level access. It provides a bridge between Java/Kotlin code and native libraries.",
        example: """// Example of using JNI in Android
// In C/C++ code
JNIEXPORT jstring JNICALL Java_com_example_app_MainActivity_stringFromJNI(JNIEnv *env, jobject) {
    return (*env)->NewStringUTF(env, "Hello from C/C++");
}

// In Java/Kotlin code
System.loadLibrary("native-lib")
native fun stringFromJNI(): String
"""
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is AOT (Ahead of Time) compilation in Android, and how does it improve performance?",
        answer: "AOT (Ahead of Time) compilation compiles the application’s bytecode into native code before the app is run, reducing startup time and improving runtime performance. It is used by the Android Runtime (ART) to speed up app execution compared to Just-In-Time (JIT) compilation.",
        example: """// Example:
Android Runtime (ART) uses AOT compilation, which converts the app's bytecode into native code during installation. This improves app performance by reducing the amount of work the runtime needs to do when the app is started.
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are ANR (Application Not Responding) errors and how do you handle them?",
        answer: "ANR errors occur when the main thread of an application is blocked for too long, usually when performing network operations or heavy computations. To avoid ANR, time-consuming tasks should be moved to background threads using tools like Coroutines, AsyncTask, or WorkManager.",
        example: """// Example of handling long-running tasks in a background thread
GlobalScope.launch(Dispatchers.IO) {
    val data = fetchDataFromNetwork()
    withContext(Dispatchers.Main) {
        // Update UI after the background task is complete
        textView.text = data
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle large datasets efficiently in RecyclerView?",
        answer: "For large datasets, you should use features like RecyclerView’s `DiffUtil`, `ListAdapter`, and paging techniques from the Paging library to improve performance and memory efficiency.",
        example: """// Example of using DiffUtil with RecyclerView
class UserDiffCallback : DiffUtil.ItemCallback<User>() {
    override fun areItemsTheSame(oldItem: User, newItem: User): Boolean {
        return oldItem.id == newItem.id
    }

    override fun areContentsTheSame(oldItem: User, newItem: User): Boolean {
        return oldItem == newItem
    }
}

val adapter = UserAdapter(UserDiffCallback())
recyclerView.adapter = adapter
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is ProGuard, and how do you optimize your APK size with it?",
        answer: "ProGuard is a tool used to shrink, obfuscate, and optimize your APK. It removes unused code and resources, renames classes and methods to reduce APK size and makes reverse engineering more difficult.",
        example: """// Example of enabling ProGuard in build.gradle
android {
    buildTypes {
        release {
            minifyEnabled true
            shrinkResources true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is VectorDrawable, and how does it improve Android UI performance?",
        answer: "VectorDrawable is a type of drawable that allows you to define vector graphics in XML format. Since vector graphics can scale without loss of quality, they reduce the need for multiple raster images at different resolutions, improving app size and performance.",
        example: """// Example of a VectorDrawable in XML
<vector xmlns:android="http://schemas.android.com/apk/res/android"
    android:width="24dp"
    android:height="24dp"
    android:viewportWidth="24"
    android:viewportHeight="24">
    <path
        android:fillColor="#FF000000"
        android:pathData="M12,2L2,22h20z" />
</vector>
"""
    ),
  ];
}