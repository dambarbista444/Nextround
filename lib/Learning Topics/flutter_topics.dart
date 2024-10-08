import '../../Model/learning_topics.dart';
import 'package:next_round/Common Components/learner_type.dart';

class FlutterTopics {
  static List<LearningDetail> learningDetails = [
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is Flutter and how does it work?",
  answer: "Flutter is an open-source UI toolkit created by Google for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart language and compiles into ARM or x86 native code.",
  example: """// Basic Flutter app example
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello Flutter')),
        body: Center(child: Text('Welcome to Flutter')),
      ),
    );
  }
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What language does Flutter use, and what are its key features?",
  answer: "Flutter uses Dart as its programming language. Dart is optimized for fast apps on any platform, offering features like just-in-time (JIT) and ahead-of-time (AOT) compilation, garbage collection, async/await, and a rich set of built-in libraries.",
  example: """// Dart example with async/await
Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched');
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is a Widget in Flutter?",
  answer: "In Flutter, everything is a Widget. Widgets are the basic building blocks of a Flutter app's user interface. A Widget can define the structure (like a button or text), behavior (like gestures), or appearance (like padding or background color).",
  example: """// Example of a simple widget
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.blue,
      child: Text('This is a widget', style: TextStyle(color: Colors.white)),
    );
  }
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are Stateful and Stateless widgets in Flutter?",
  answer: "Stateless widgets are immutable, meaning their properties can’t change after being created. Stateful widgets, on the other hand, maintain a mutable state and can be updated over time.",
  example: """// Example of a Stateful widget
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateful Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter: ＄counter'),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How does Flutter manage state?",
  answer: "Flutter manages state using various techniques like `setState()`, `InheritedWidget`, `Provider`, `Riverpod`, and `Bloc`. `setState()` is the simplest, but more complex state management solutions are better for large-scale apps.",
  example: """// Using setState for state management
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Count: ＄counter'),
        ElevatedButton(
          onPressed: increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is hot reload in Flutter?",
  answer: "Hot reload allows developers to inject updated source code into a running Dart Virtual Machine (VM), enabling instant updates without losing the current state of the app.",
  example: """// Hot reload: Make changes to this widget, save the file, and see updates instantly.
class HotReloadExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello, Hot Reload!'),
      ),
    );
  }
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is a Future in Dart, and how does it handle asynchronous programming?",
  answer: "A `Future` represents an asynchronous operation that may complete with a value or an error. Futures are used to handle non-blocking tasks like HTTP requests or reading files.",
  example: """// Example of Future in Dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data fetched';
}

void main() async {
  print(await fetchData());
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you handle errors in Dart?",
  answer: "Errors in Dart are handled using `try`, `catch`, and `finally` blocks. You can catch synchronous and asynchronous errors with these constructs.",
  example: """// Example of error handling
void main() {
  try {
    int result = 100 ~/ 0;
  } catch (e) {
    print('Caught an error: ＄e');
  } finally {
    print('Cleanup code');
  }
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is Dart’s `async` and `await`, and how are they used?",
  answer: "`async` and `await` are used in Dart to simplify handling Futures. An `async` function returns a Future, and `await` pauses the execution until the Future completes.",
  example: """// Example of async and await
Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  print('Data fetched');
}

void main() async {
  await fetchData();
  print('Operation complete');
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the difference between synchronous and asynchronous operations in Dart?",
  answer: "Synchronous operations block the current thread until the operation completes, while asynchronous operations allow other operations to run while waiting for a result, avoiding blocking.",
  example: """// Example of synchronous vs asynchronous code
void main() {
  print('Synchronous operation');
  Future.delayed(Duration(seconds: 1), () => print('Asynchronous operation'));
  print('End of main');
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are the data types available in Dart?",
  answer: "Dart supports various data types, including numbers (`int`, `double`), strings (`String`), booleans (`bool`), lists (`List`), sets (`Set`), maps (`Map`), and more.",
  example: """// Example of different data types in Dart
void main() {
  int age = 30;
  double pi = 3.14;
  String name = 'Flutter Dev';
  bool isLoggedIn = true;
  List<int> numbers = [1, 2, 3];
  Map<String, dynamic> user = {'name': 'John', 'age': 30};
  print(name);
}
""",
  ),
  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you work with Lists in Dart?",
  answer: "A `List` is an ordered collection of items in Dart. You can create, manipulate, and iterate over lists using Dart’s rich set of methods.",
  example: """// Example of working with lists
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  fruits.add('Orange');
  print(fruits);  // ['Apple', 'Banana', 'Mango', 'Orange']

  fruits.remove('Banana');
  print(fruits);  // ['Apple', 'Mango', 'Orange']
}
""",
  ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a Map in Dart, and how do you use it?",
        answer: "A `Map` is a collection of key-value pairs. Keys are unique, and each key maps to a value. Maps are commonly used to store and retrieve data based on a unique key.",
        example: """// Example of using a Map in Dart
void main() {
  Map<String, int> ages = {'John': 30, 'Jane': 28, 'Paul': 25};
  ages['Anna'] = 22;  // Adding a new entry
  print(ages);  // {John: 30, Jane: 28, Paul: 25, Anna: 22}

  // Accessing a value by key
  print('John\'s age is: ＄{ages['John']}');
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a Set in Dart, and how does it differ from a List?",
        answer: "A `Set` is an unordered collection of unique elements, whereas a `List` is an ordered collection of elements that can contain duplicates.",
        example: """// Example of using a Set in Dart
void main() {
  Set<String> names = {'Alice', 'Bob', 'Charlie'};
  names.add('Alice');  // Duplicate, won't be added
  print(names);  // {Alice, Bob, Charlie}

  // Check if a Set contains an element
  print(names.contains('Bob'));  // true
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a Stream in Dart, and how is it used for handling asynchronous data?",
        answer: "A `Stream` in Dart is used to asynchronously deliver a sequence of data, like handling events or receiving data over time. It’s commonly used for tasks like handling user input or real-time data streams.",
        example: """// Example of using a Stream in Dart
void main() async {
  Stream<int> numberStream = Stream<int>.periodic(Duration(seconds: 1), (x) => x).take(5);
  await for (var number in numberStream) {
    print(number);  // Prints numbers 0 to 4, one per second
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Flutter's Pubspec.yaml file used for?",
        answer: "The `pubspec.yaml` file is used to configure your Flutter project’s dependencies, assets, and metadata such as the app name, version, and description.",
        example: """// Example of pubspec.yaml configuration
name: my_flutter_app
description: A simple Flutter app
version: 1.0.0+1

dependencies:
  flutter:
    sdk: flutter
  provider: ^5.0.0  // Adding a third-party package

flutter:
  assets:
    - assets/images/
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle user input in Flutter?",
        answer: "In Flutter, user input can be handled using widgets like `TextField`, `GestureDetector`, and `Form` widgets. You can manage the input values by using controllers or handling onChanged events.",
        example: """// Example of handling user input with TextField
class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (text) {
            setState(() {
              inputText = text;
            });
          },
        ),
        Text('You typed: ＄inputText'),
      ],
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are keys in Flutter, and why are they important?",
        answer: "Keys in Flutter are used to preserve the state of widgets when they are moved in the widget tree. They are essential for managing the lifecycle of stateful widgets in lists or during reordering.",
        example: """// Example of using a Key in a Flutter widget
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          key: ValueKey('myKey'),
          child: Text('This widget has a key'),
        ),
      ],
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How does Flutter handle concurrency?",
        answer: "Flutter uses Dart’s `async`, `await`, and `Future` constructs to handle concurrency. This allows for non-blocking code execution, making it possible to run long-running operations without freezing the UI.",
        example: """// Example of handling concurrency with async/await
Future<void> performTask() async {
  print('Task started');
  await Future.delayed(Duration(seconds: 2));
  print('Task completed');
}

void main() async {
  await performTask();
  print('Main method continues');
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Provider, and how is it used for state management in Flutter?",
        answer: "Provider is a popular state management solution in Flutter. It makes it easy to propagate changes from a data model to the UI by using context to provide and listen to changes in the widget tree.",
        example: """// Example of using Provider for state management
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

// Providing the state in main.dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

// Consuming the state in the UI
class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Column(
      children: [
        Text('Count: ＄{counter.count}'),
        ElevatedButton(
          onPressed: counter.increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you work with HTTP requests in Flutter?",
        answer: "Flutter provides the `http` package to easily make HTTP requests like GET, POST, PUT, and DELETE. It allows fetching data from APIs or submitting data to a backend.",
        example: """// Example of making an HTTP GET request
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if (response.statusCode == 200) {
    print(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is SharedPreferences in Flutter, and how do you use it?",
        answer: "SharedPreferences is a plugin that allows you to persist simple data such as key-value pairs locally on the device. It's useful for storing user preferences or app settings.",
        example: """// Example of using SharedPreferences to save and retrieve data
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('username', 'FlutterDev');
}

Future<void> getData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? username = prefs.getString('username');
  print('Username: ＄username');
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Flutter's Navigator, and how does it handle navigation?",
        answer: "The `Navigator` is used in Flutter to manage a stack of routes (pages). You can use `Navigator.push()` to navigate to a new route and `Navigator.pop()` to return to the previous one.",
        example: """// Example of navigation between pages in Flutter
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);

// Returning to the previous page
Navigator.pop(context);
"""
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How does Flutter handle asset management?",
        answer: "Flutter allows you to include static assets, such as images, in your app using the `pubspec.yaml` file. These assets are then loaded at runtime and displayed in your app.",
        example: """// pubspec.yaml configuration
flutter:
  assets:
    - assets/images/flutter.png

// Loading an image asset in a widget
Image.asset('assets/images/flutter.png');
"""
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between Hot Reload and Hot Restart in Flutter?",
        answer: "Hot Reload allows you to quickly inject updated code into the running app without losing the current state, making it useful for UI updates. Hot Restart, on the other hand, fully restarts the app and resets the app state.",
        example: """// Hot Reload: Only injects updated code
class HotReloadExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hot Reload updates UI without losing state'),
      ),
    );
  }
}

// Hot Restart: Completely restarts the app, resetting the state
class HotRestartExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hot Restart resets the state and UI'),
      ),
    );
  }
}
"""
    ),

    LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is Flutter's build method, and how does it work?",
  answer: "The `build()` method in Flutter is used to create a widget's UI. It is called every time a widget’s state changes or its dependencies update. The build method must return a widget or a widget tree.",
  example: """// Example of a build method in a StatefulWidget
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Build Method Example')),
      body: Center(child: Text('This is built in build() method.')),
    );
  }
}
"""
  ),
  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is the difference between mainAxisAlignment and crossAxisAlignment in Flutter?",
  answer: "`mainAxisAlignment` controls how children are aligned along the main axis (horizontal in a Row, vertical in a Column), while `crossAxisAlignment` aligns children along the cross axis.",
  example: """// Example of mainAxisAlignment and crossAxisAlignment in a Row
Row(
  mainAxisAlignment: MainAxisAlignment.center,  // Center along the main axis
  crossAxisAlignment: CrossAxisAlignment.start, // Align to the start on the cross axis
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
);
"""
  ),
  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you persist data in Flutter using SQLite?",
  answer: "In Flutter, you can persist data using the `sqflite` package, which is a plugin for SQLite databases. You can create tables, insert data, and perform queries using SQLite.",
  example: """// Example of persisting data using SQLite in Flutter
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> initializeDB() async {
  return openDatabase(
    join(await getDatabasesPath(), 'my_database.db'),
    onCreate: (db, version) {
      return db.execute('CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT)');
    },
    version: 1,
  );
}

Future<void> insertUser(String name) async {
  final db = await initializeDB();
  await db.insert('users', {'name': name});
}
"""
  ),
  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is the purpose of using `InheritedWidget` in Flutter?",
  answer: "`InheritedWidget` allows you to propagate state down the widget tree efficiently. It enables child widgets to access data or state from a higher ancestor without passing it manually through constructors.",
  example: """// Example of using InheritedWidget
class MyInheritedWidget extends InheritedWidget {
  final int data;

  MyInheritedWidget({required Widget child, required this.data}) : super(child: child);

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.data != data;
  }

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }
}
"""
  ),
  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How does Flutter handle animations?",
  answer: "Flutter uses `Animation` objects and `AnimationController` to manage animations. Widgets like `AnimatedContainer` and `FadeTransition` allow you to animate changes without manually creating complex animation logic.",
  example: """// Example of using AnimationController and Animation
class AnimationExample extends StatefulWidget {
  @override
  _AnimationExampleState createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _controller,
          child: FlutterLogo(size: 100),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
"""
  ),
  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you implement a custom painter in Flutter?",
  answer: "Flutter’s `CustomPainter` allows you to draw custom shapes, lines, or any complex UI element on the canvas using the `paint()` method.",
  example: """// Example of implementing a CustomPainter
class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final path = Path()
      ..moveTo(50, 100)
      ..lineTo(200, 200)
      ..lineTo(100, 300);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CustomPaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Painter')),
      body: CustomPaint(
        painter: MyCustomPainter(),
        child: Container(),
      ),
    );
  }
}
"""
  ),
  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is `FutureBuilder` in Flutter, and how does it work?",
  answer: "`FutureBuilder` is a widget that builds itself based on the latest snapshot of interaction with a `Future`. It is used to display asynchronous data like API calls.",
  example: """// Example of using FutureBuilder to display data from a Future
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Hello, Flutter!';
}

class FutureBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FutureBuilder Example')),
      body: FutureBuilder<String>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ＄{snapshot.error}');
          } else {
            return Text('Data: ＄{snapshot.data}');
          }
        },
      ),
    );
  }
}
"""
  ),
  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is the difference between `Stream` and `Future` in Dart?",
  answer: "`Future` represents a single asynchronous value, while `Stream` represents a sequence of asynchronous data events that can be multiple values emitted over time.",
  example: """// Example of a Stream that emits values over time
Stream<int> numberStream() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

class StreamExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stream Example')),
      body: StreamBuilder<int>(
        stream: numberStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ＄{snapshot.error}');
          } else if (snapshot.hasData) {
            return Text('Number: ＄{snapshot.data}');
          } else {
            return Text('No data');
          }
        },
      ),
    );
  }
}
"""
  ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does the `ListView.builder` work in Flutter?",
        answer: "`ListView.builder` is a constructor in `ListView` that builds the items lazily as they scroll into view. It's highly efficient for long or infinite lists.",
        example: """// Example of ListView.builder in Flutter
class ListViewBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.builder Example')),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item \$index'),
          );
        },
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are keys in Flutter and when would you use them?",
        answer: "Keys are used in Flutter to control the uniqueness of widgets in the widget tree, especially when dealing with stateful widgets or list items.",
        example: """// Example of using keys for a list of items
class KeyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(key: ValueKey('Item 1'), color: Colors.red, height: 100),
        Container(key: ValueKey('Item 2'), color: Colors.green, height: 100),
        Container(key: ValueKey('Item 3'), color: Colors.blue, height: 100),
      ],
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between `Navigator.push` and `Navigator.pushReplacement`?",
        answer: "`Navigator.push` adds a new route to the stack, while `Navigator.pushReplacement` removes the current route before adding the new one, effectively replacing the existing route.",
        example: """// Example of Navigator.push and Navigator.pushReplacement
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);

// Replacing the current page with a new one
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you handle gestures in Flutter?",
        answer: "Flutter provides `GestureDetector` to detect various user gestures like taps, swipes, and long presses. You can wrap any widget inside a `GestureDetector` to handle these events.",
        example: """// Example of handling tap gesture in Flutter
class GestureExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print('Tapped!');
        },
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 200,
          child: Center(child: Text('Tap me')),
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you manage multiple navigation stacks in Flutter?",
        answer: "To manage multiple navigation stacks in Flutter, you can use a `Navigator` inside each section of your app (such as tabs) to create independent navigation stacks.",
        example: """// Example of multiple navigation stacks in a TabBar
class TabBarNavigationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Stacks Example'),
          bottom: TabBar(
            tabs: [Tab(text: 'Tab 1'), Tab(text: 'Tab 2')],
          ),
        ),
        body: TabBarView(
          children: [
            Navigator(onGenerateRoute: (route) => MaterialPageRoute(builder: (context) => Page1())),
            Navigator(onGenerateRoute: (route) => MaterialPageRoute(builder: (context) => Page2())),
          ],
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a `GlobalKey` in Flutter, and how is it used?",
        answer: "`GlobalKey` is used to access the state of a widget across the entire widget tree. It allows you to interact with a widget from anywhere in the app.",
        example: """// Example of using GlobalKey to interact with a form
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class GlobalKeyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GlobalKey Example')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Validate form
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you handle authentication in a Flutter app?",
        answer: "Authentication in a Flutter app can be managed using Firebase Authentication, OAuth, or third-party libraries like `flutter_login` and `firebase_auth`.",
        example: """// Example of using Firebase Authentication in Flutter
import 'package:firebase_auth/firebase_auth.dart';

Future<UserCredential> signInWithEmailPassword(String email, String password) async {
  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
  return userCredential;
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a `RenderObject` in Flutter, and how does it differ from widgets?",
        answer: "`RenderObject` represents the low-level rendering and layout logic of a widget. Widgets describe the configuration, but the `RenderObject` does the actual layout and painting.",
        example: """// Example of creating a custom RenderObject
class MyRenderObject extends RenderBox {
  @override
  void performLayout() {
    size = constraints.biggest; // Set the size based on constraints
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    context.canvas.drawRect(offset & size, Paint()..color = Colors.blue);
  }
}

class MyRenderObjectWidget extends LeafRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    return MyRenderObject();
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between `InheritedWidget` and `Provider`?",
        answer: "`InheritedWidget` is a low-level widget used to propagate state down the widget tree. `Provider` is built on top of `InheritedWidget`, offering a more convenient API for managing state.",
        example: """// Example of using Provider instead of InheritedWidget
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class ProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Counter(),
      child: Scaffold(
        appBar: AppBar(title: Text('Provider Example')),
        body: Consumer<Counter>(
          builder: (context, counter, child) => Text('Count: ＄{counter.count}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Provider.of<Counter>(context, listen: false).increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you handle WebSockets in Flutter?",
        answer: "Flutter provides WebSocket support via the `web_socket_channel` package, which allows you to connect to a WebSocket server and send or receive messages asynchronously.",
        example: """// Example of using WebSocket in Flutter
import 'package:web_socket_channel/web_socket_channel.dart';

final channel = WebSocketChannel.connect(Uri.parse('wss://echo.websocket.org'));

class WebSocketExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WebSocket Example')),
      body: StreamBuilder(
        stream: channel.stream,
        builder: (context, snapshot) {
          return Center(
            child: Text(snapshot.hasData ? '＄{snapshot.data}' : 'No data yet'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => channel.sink.add('Hello WebSocket'),
        child: Icon(Icons.send),
      ),
    );
  }
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you manage form validation in Flutter?",
        answer: "Form validation in Flutter can be managed using the `Form` widget and `TextFormField` widgets with validation logic. You can use validators to check user input and display error messages if the input is invalid.",
        example: """// Example of form validation in Flutter
class FormValidationExample extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Validation Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Form is valid')));
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does `StreamController` work in Flutter?",
        answer: "`StreamController` is used to create a stream that can be listened to and updated with new data. It's useful for broadcasting data changes to multiple listeners.",
        example: """// Example of using StreamController in Flutter
class StreamControllerExample extends StatelessWidget {
  final StreamController<int> _controller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamController Example')),
      body: StreamBuilder<int>(
        stream: _controller.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return Center(child: Text('Current value: ＄{snapshot.data}'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.add(DateTime.now().millisecondsSinceEpoch),
        child: Icon(Icons.add),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you implement dependency injection in Flutter using `get_it`?",
        answer: "`get_it` is a simple dependency injection library for Flutter that allows you to register and retrieve services across your app, making it easy to manage dependencies.",
        example: """// Example of dependency injection using get_it
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService());
}

class ApiService {
  String fetchData() => 'Fetched data from API';
}

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('get_it Example')),
        body: Center(
          child: Text(getIt<ApiService>().fetchData()),
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is `FutureProvider` in Flutter, and how is it used?",
        answer: "`FutureProvider` is a type of `Provider` that listens to a `Future`. It automatically rebuilds the UI when the `Future` completes, making it easy to display asynchronous data.",
        example: """// Example of using FutureProvider in Flutter
class FutureProviderExample extends StatelessWidget {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Hello from FutureProvider';
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => fetchData(),
      child: Scaffold(
        appBar: AppBar(title: Text('FutureProvider Example')),
        body: Consumer<String>(
          builder: (context, data, child) {
            return Center(child: Text(data ?? 'Loading...'));
          },
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does Flutter handle file uploads and downloads?",
        answer: "Flutter handles file uploads and downloads using libraries like `http` for network requests and `dio` for more complex file operations like progress tracking and resumable downloads.",
        example: """// Example of using dio for file download
import 'package:dio/dio.dart';

Future<void> downloadFile(String url, String savePath) async {
  Dio dio = Dio();
  try {
    await dio.download(url, savePath, onReceiveProgress: (received, total) {
      print('Progress: ＄{(received / total * 100).toStringAsFixed(0)}%');
    });
  } catch (e) {
    print('Download error: ＄e');
  }
}

void main() {
  downloadFile('https://example.com/file.zip', '/path/to/save/file.zip');
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you handle JSON serialization in Flutter?",
        answer: "Flutter handles JSON serialization using the `dart:convert` library, which provides `jsonDecode()` and `jsonEncode()` methods to convert between JSON and Dart objects.",
        example: """// Example of serializing and deserializing JSON in Flutter
import 'dart:convert';

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}

void main() {
  String jsonString = '{"name": "John", "age": 30}';
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  User user = User.fromJson(userMap);
  print('User: ＄{user.name}, Age: ＄{user.age}');
}
"""
    ),

    LearningDetail(
    learnerType: LearnerType.intermediate,
  question: "What is the `ChangeNotifier` class in Flutter, and how is it used?",
  answer: "`ChangeNotifier` is a class that provides a way to notify listeners when there are changes in a model. It’s commonly used in combination with `Provider` for state management.",
  example: """// Example of using ChangeNotifier in Flutter
class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp( ChangeNotifierProvider(
      create: (_) => Counter(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ChangeNotifier Example')),
        body: Consumer<Counter>(
          builder: (context, counter, child) {
            return Center(child: Text('Count: ＄{counter.count}'));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Provider.of<Counter>(context, listen: false).increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does Flutter's `Hero` widget work for animations?",
        answer: "The `Hero` widget in Flutter enables smooth transitions between routes by animating the movement of a widget across screens. It’s especially useful for visual continuity when navigating.",
        example: """// Example of using Hero widget for route transitions
class HeroExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation Example')),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage()),
          );
        },
        child: Hero(
          tag: 'hero-tag',
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is `Bloc` pattern in Flutter, and how does it handle state management?",
        answer: "`Bloc` (Business Logic Component) pattern separates business logic from UI components, making it easier to manage and test state changes in Flutter apps. `Bloc` uses streams to listen to events and emit states.",
        example: """// Example of Bloc pattern in Flutter
class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield state + 1;
    }
  }
}

void main() {
  runApp(BlocProvider(
    create: (context) => CounterBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Example')),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(child: Text('Count: \$count'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => BlocProvider.of<CounterBloc>(context).add(IncrementEvent()),
        child: Icon(Icons.add),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you use `MultiProvider` in Flutter?",
        answer: "`MultiProvider` allows you to provide multiple providers in a single widget tree. It's useful when you have multiple state or dependency objects that need to be accessed in different parts of the widget tree.",
        example: """// Example of using MultiProvider in Flutter
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => AnotherModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MultiProvider Example')),
        body: Center(child: Text('Count: ＄{counter.count}')),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you implement push notifications in Flutter using Firebase?",
        answer: "Push notifications in Flutter can be implemented using Firebase Cloud Messaging (FCM). You need to configure Firebase and use the `firebase_messaging` package to handle the notifications.",
        example: """// Example of Firebase push notification implementation
import 'package:firebase_messaging/firebase_messaging.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FirebaseMessaging messaging;

  @override
  void initState() {
    super.initState();
    messaging = FirebaseMessaging.instance;

    messaging.getToken().then((value) {
      print('FCM Token: ＄value');
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print('Message received: ＄{event.notification!.body}');
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message opened: ＄{message.notification!.body}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('FCM Example')),
        body: Center(child: Text('Push Notifications')),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you integrate REST APIs in Flutter?",
        answer: "REST APIs can be integrated into Flutter apps using the `http` package. It allows you to perform HTTP requests like GET, POST, PUT, and DELETE, and handle the API response asynchronously.",
        example: """// Example of integrating REST API using http
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchUser() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print('User: ＄{data['name']}');
  } else {
    throw Exception('Failed to load user');
  }
}

void main() {
  fetchUser();
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the purpose of `isolate` in Dart, and how does it improve concurrency?",
        answer: "Dart's `Isolate` is used for parallelism. Since Dart is single-threaded, isolates are used to run multiple tasks concurrently. Each isolate has its own memory and event loop, allowing concurrent execution without shared memory.",
        example: """// Example of using Isolate in Dart
import 'dart:isolate';

void isolateTask(SendPort sendPort) {
  sendPort.send('Message from Isolate');
}

void main() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(isolateTask, receivePort.sendPort);

  receivePort.listen((message) {
    print('Received: \$message');
  });
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle state management using `Riverpod` in Flutter?",
        answer: "`Riverpod` is an improved version of `Provider` for state management. It allows for more flexibility and type safety and supports reading providers without `BuildContext`.",
        example: """// Example of using Riverpod for state management
final counterProvider = StateProvider<int>((ref) => 0);

class CounterWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final count = watch(counterProvider).state;
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Counter')),
      body: Center(child: Text('Count: \$count')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(counterProvider).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Flutter handle accessibility, and how can you improve it in your apps?",
        answer: "Flutter provides built-in support for accessibility features such as screen readers, large fonts, and high-contrast themes. You can improve accessibility by adding semantic labels and using `Semantics` widgets.",
        example: """// Example of adding semantic labels for accessibility
class AccessibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'A button to submit the form',
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Submit'),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between `buildContext` and `Element` in Flutter?",
        answer: "`buildContext` is an immutable handle to the location of a widget in the widget tree. `Element` is the mutable counterpart that Flutter uses internally to manage the widget tree. `buildContext` allows widgets to locate their position and interact with the rest of the widget tree.",
        example: """// Example of accessing BuildContext in Flutter
class ContextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Context Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Use BuildContext to navigate
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Flutter handle package size optimization for production apps?",
        answer: "Flutter provides tools like tree shaking, code splitting, and obfuscation to reduce package size. You can also optimize image assets, remove unnecessary dependencies, and enable ProGuard to further shrink the size.",
        example: """// Example of enabling code shrinking and obfuscation in Flutter
android {
    buildTypes {
        release {
            shrinkResources true
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is `FlutterEngine`, and how can you manage multiple engines in an app?",
        answer: "`FlutterEngine` is the core class responsible for managing Dart code execution and rendering in Flutter. You can manage multiple engines in scenarios where you need independent Flutter modules in an existing Android/iOS app or multi-window support.",
        example: """// Example of managing multiple Flutter engines
FlutterEngine engine1 = FlutterEngine(context);
FlutterEngine engine2 = FlutterEngine(context);

engine1.run();
engine2.run();
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Flutter handle memory management, and what are the best practices for preventing memory leaks?",
        answer: "Flutter uses Dart's garbage collection for memory management. Best practices for preventing memory leaks include canceling `StreamSubscriptions`, properly disposing of `Controllers` in `dispose()`, and using `GlobalKeys` carefully.",
        example: """// Example of disposing of controllers in Flutter
class MemoryManagementExample extends StatefulWidget {
  @override
  _MemoryManagementExampleState createState() => _MemoryManagementExampleState();
}

class _MemoryManagementExampleState extends State<MemoryManagementExample> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // Prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(controller: _controller);
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Flutter manage animations with `AnimationController` and `Tween`?",
        answer: "Flutter uses `AnimationController` to control animations and `Tween` to define how values change over time. `AnimationController` provides the frame-by-frame updates, while `Tween` interpolates between values.",
        example: """// Example of AnimationController and Tween
class AnimationExample extends StatefulWidget {
  @override
  _AnimationExampleState createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: _animation.value,
          height: _animation.value,
          color: Colors.blue,
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Flutter integrate with platform-specific code for Android and iOS?",
        answer: "Flutter allows integration with platform-specific code using platform channels. You can invoke native Android or iOS code from Flutter and vice versa via `MethodChannel`.",
        example: """// Example of using MethodChannel for platform-specific code
const platform = MethodChannel('com.example/platform');

Future<void> callNativeCode() async {
  try {
    final result = await platform.invokeMethod('getBatteryLevel');
    print('Battery level: \$result%');
  } on PlatformException catch (e) {
    print('Failed to get battery level: \$e');
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is `CustomScrollView` in Flutter, and how is it different from `ListView`?",
        answer: "`CustomScrollView` allows you to create scrollable areas with custom slivers, whereas `ListView` is used for simple linear scrolling. `CustomScrollView` provides more control over scroll behavior and layout.",
        example: """// Example of using CustomScrollView with Slivers
class CustomScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('SliverAppBar'),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('Item \$index')),
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Flutter handle background tasks, and how can you run code in the background?",
        answer: "Flutter itself doesn't directly support background tasks like Android/iOS does. However, background tasks can be handled using platform-specific code via platform channels or using plugins like `flutter_background_service` or `workmanager`.",
        example: """// Example of using WorkManager for background tasks
import 'package:workmanager/workmanager.dart';

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    print('Background task executed: \$task');
    return Future.value(true);
  });
}

void main() {
  Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
  Workmanager().registerOneOffTask('1', 'simpleTask');
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the use of `RepaintBoundary` in Flutter, and how can it improve performance?",
        answer: "`RepaintBoundary` is a widget that isolates parts of the UI from unnecessary repaints. It can improve performance in Flutter by limiting which parts of the widget tree are redrawn when state changes occur.",
        example: """// Example of using RepaintBoundary to optimize performance
class RepaintBoundaryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Text('Repaint Boundary'),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Flutter handle deep linking, and how can you configure it?",
        answer: "Flutter handles deep linking by configuring URL schemes and intent filters in Android/iOS and using `Navigator` to route the user to specific screens. Plugins like `uni_links` or `firebase_dynamic_links` are often used for deep linking.",
        example: """// Example of handling deep links in Flutter
import 'package:uni_links/uni_links.dart';

class DeepLinkingExample extends StatefulWidget {
  @override
  _DeepLinkingExampleState createState() => _DeepLinkingExampleState();
}

class _DeepLinkingExampleState extends State<DeepLinkingExample> {
  @override
  void initState() {
    super.initState();
    handleIncomingLinks();
  }

  void handleIncomingLinks() async {
    uriLinkStream.listen((Uri? uri) {
      if (uri != null) {
        print('Received deep link: \$uri');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deep Linking Example')),
      body: Center(child: Text('Waiting for deep link...')),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you optimize network performance in Flutter, especially for large data sets?",
        answer: "To optimize network performance in Flutter, you can use efficient caching strategies, pagination for large data sets, compress data, and manage connectivity using libraries like `dio` and `connectivity_plus`.",
        example: """// Example of using Dio for optimized network calls with compression
import 'package:dio/dio.dart';

Future<void> fetchData() async {
  Dio dio = Dio();
  dio.options.headers['Accept-Encoding'] = 'gzip';

  final response = await dio.get('https://api.example.com/data');
  print(response.data);
}

void main() {
  fetchData();
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are isolates in Dart, and how are they different from threads in other languages?",
        answer: "Isolates in Dart run concurrently in separate memory spaces and communicate via message passing, unlike traditional threads that share memory. This eliminates the need for locks and other synchronization mechanisms but requires careful management of communication between isolates.",
        example: """// Example of using Isolate in Flutter
import 'dart:isolate';

void longRunningTask(SendPort sendPort) {
  // Perform heavy computation here
  sendPort.send('Task Complete');
}

void main() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(longRunningTask, receivePort.sendPort);

  receivePort.listen((message) {
    print('Received: \$message');
  });
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does the `RenderObject` in Flutter work, and when would you use a custom `RenderObject`?",
        answer: "`RenderObject` in Flutter is used for low-level painting, layout, and hit-testing. You would use a custom `RenderObject` for creating highly custom widgets or for performance optimizations in complex layouts.",
        example: """// Example of creating a custom RenderObject
class CustomRenderBox extends RenderBox {
  @override
  void performLayout() {
    size = constraints.biggest; // Define the size
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    context.canvas.drawRect(offset & size, paint);
  }
}

class CustomRenderObjectWidget extends LeafRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    return CustomRenderBox();
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How can you reduce app size for production in Flutter?",
        answer: "You can reduce app size by enabling ProGuard and R8 for code shrinking and obfuscation, using `flutter build apk --split-per-abi` for APK splitting, and reducing asset sizes and third-party libraries.",
        example: """// Example of APK splitting in Flutter
flutter build apk --split-per-abi

// Example of enabling ProGuard for Android builds
android {
    buildTypes {
        release {
            shrinkResources true
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is `PlatformView`, and how do you use it in Flutter to embed native views?",
        answer: "`PlatformView` is a mechanism in Flutter that allows you to embed native Android and iOS views inside Flutter apps. It’s commonly used for integrating native components like maps, web views, or any other platform-specific views.",
        example: """// Example of embedding a native Android WebView in Flutter
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class NativeWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AndroidView(
      viewType: 'webview',
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you manage complex animations using `AnimationController`, `Tween`, and `Animation` in Flutter?",
        answer: "`AnimationController` is used to control the timing of animations, while `Tween` defines how values change over time. You can combine these to manage complex animations, and `AnimationBuilder` or `AnimatedWidget` helps in rebuilding UI frames.",
        example: """// Example of combining AnimationController and Tween for complex animation
class ComplexAnimationExample extends StatefulWidget {
  @override
  _ComplexAnimationExampleState createState() => _ComplexAnimationExampleState();
}

class _ComplexAnimationExampleState extends State<ComplexAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<double>(begin: 0, end: 200).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the purpose of the `FlutterDriver` API, and how do you use it for UI testing?",
        answer: "`FlutterDriver` is used for integration and UI testing in Flutter apps. It enables you to simulate user interactions, verify UI states, and perform automated end-to-end tests.",
        example: """// Example of using FlutterDriver for UI testing
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('App UI Tests', () {
    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver!.close();
      }
    });

    test('Check counter increments', () async {
      final incrementButton = find.byValueKey('increment');
      final counterText = find.byValueKey('counter');

      await driver!.tap(incrementButton);
      expect(await driver!.getText(counterText), '1');
    });
  });
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you optimize Flutter apps for high frame rates and smooth performance?",
        answer: "Optimizations for Flutter apps include reducing build method complexity, using const constructors, leveraging `RepaintBoundary`, avoiding large widget trees, and minimizing network and I/O delays on the main thread.",
        example: """// Example of optimizing performance with const constructors
class OptimizedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('Optimized with const'),
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between `StatefulWidget` and `InheritedWidget` in Flutter?",
        answer: "`StatefulWidget` holds mutable state within a widget, whereas `InheritedWidget` allows state to be propagated down the widget tree, making it accessible to child widgets without directly passing it.",
        example: """// Example of using InheritedWidget
class MyInheritedWidget extends InheritedWidget {
  final int counter;

  MyInheritedWidget({
    required this.counter,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a `ModalRoute` in Flutter, and how does it differ from a regular route?",
        answer: "`ModalRoute` is a special type of route in Flutter that overlays on top of other routes, typically used for modal sheets or dialogs. Regular routes are part of the app's navigation stack and don't overlay on top of others.",
        example: """// Example of showing a modal route in Flutter
void showModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 200,
        child: Center(
          child: Text('This is a modal route'),
        ),
      );
    },
  );
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle platform-specific features, like permissions, in Flutter?",
        answer: "Platform-specific features can be handled by using platform channels to communicate with native Android and iOS code. Alternatively, plugins like `permission_handler` can be used to request and manage permissions.",
        example: """// Example of using the permission_handler plugin in Flutter
import 'package:permission_handler/permission_handler.dart';

Future<void> requestPermissions() async {
  var status = await Permission.camera.status;
  if (!status.isGranted) {
    await Permission.camera.request();
  }
}

void main() {
  requestPermissions();
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the `Navigator 2.0` API in Flutter, and how does it improve routing?",
        answer: "`Navigator 2.0` provides more control over the navigation stack, enabling declarative routing. It supports dynamic routing, allowing you to build complex navigation flows like web apps or multi-window navigation.",
        example: """// Example of using Navigator 2.0 API for declarative routing
class MyRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> navigatorKey;

  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: HomePage()),
        if (showDetailsPage) MaterialPage(child: DetailsPage()),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        showDetailsPage = false;
        notifyListeners();
        return true;
      },
    );
  }

  bool showDetailsPage = false;
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does `Bloc` handle event-driven state management in Flutter?",
        answer: "`Bloc` (Business Logic Component) separates business logic from UI. It listens to events, performs business logic, and emits new states that the UI reacts to. It’s a robust solution for complex state management.",
        example: """// Example of using Bloc for state management in Flutter
class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield state + 1;
    }
  }
}

void main() {
  runApp(BlocProvider(
    create: (context) => CounterBloc(),
    child: MyApp(),
  ));
}
"""
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement lazy loading in Flutter for large datasets?",
        answer: "Lazy loading in Flutter can be implemented using `ListView.builder`, which builds items only as they scroll into view, and `ScrollController` to detect when the user reaches the end of the list to load more items.",
        example: """// Example of lazy loading using ListView.builder and ScrollController
class LazyLoadingExample extends StatefulWidget {
  @override
  _LazyLoadingExampleState createState() => _LazyLoadingExampleState();
}

class _LazyLoadingExampleState extends State<LazyLoadingExample> {
  final ScrollController _scrollController = ScrollController();
  List<int> items = List.generate(20, (index) => index);
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        loadMoreItems();
      }
    });
  }

  Future<void> loadMoreItems() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        items.addAll(List.generate(20, (index) => items.length + index));
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lazy Loading Example')),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: items.length + (isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == items.length) {
            return Center(child: CircularProgressIndicator());
          }
          return ListTile(title: Text('Item \$index'));
        },
      ),
    );
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle real-time data updates in Flutter with WebSockets?",
        answer: "Flutter handles real-time data using WebSockets. You can use the `web_socket_channel` package to establish a connection to a WebSocket server and stream updates in real-time.",
        example: """// Example of using WebSockets in Flutter for real-time updates
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketExample extends StatefulWidget {
  @override
  _WebSocketExampleState createState() => _WebSocketExampleState();
}

class _WebSocketExampleState extends State<WebSocketExample> {
  final WebSocketChannel channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.org'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WebSocket Example')),
      body: StreamBuilder(
        stream: channel.stream,
        builder: (context, snapshot) {
          return Center(
            child: Text(snapshot.hasData ? '\${snapshot.data}' : 'No data yet'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => channel.sink.add('Hello WebSocket'),
        child: Icon(Icons.send),
      ),
    );
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you secure API calls in Flutter?",
        answer: "To secure API calls in Flutter, you can use HTTPS with SSL/TLS, apply authentication mechanisms like OAuth or JWT, and avoid exposing sensitive keys directly in the app. It’s also important to validate server certificates to prevent man-in-the-middle attacks.",
        example: """// Example of securing API calls using HTTPS and OAuth
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final response = await http.get(
    Uri.parse('https://api.example.com/data'),
    headers: {'Authorization': 'Bearer YOUR_OAUTH_TOKEN'},
  );

  if (response.statusCode == 200) {
    print('Data fetched: \${response.body}');
  } else {
    throw Exception('Failed to load data');
  }
}

void main() {
  fetchData();
}
"""
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are custom hooks in Flutter, and how can you create one?",
        answer: "Custom hooks in Flutter are a feature of the `flutter_hooks` package. They allow you to extract common stateful logic into reusable functions, making your code cleaner and more maintainable.",
        example: """// Example of creating a custom hook with flutter_hooks
import 'package:flutter_hooks/flutter_hooks.dart';

T useCustomHook<T>(T initialValue) {
  final value = useState<T>(initialValue);
  useEffect(() {
    print('Hook initialized with value: \${value.value}');
    return () => print('Hook disposed');
  }, [value]);

  return value.value;
}

class CustomHookExample extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final value = useCustomHook<int>(10);
    return Scaffold(
      appBar: AppBar(title: Text('Custom Hook Example')),
      body: Center(child: Text('Value: \$value')),
    );
  }
}
"""
    )
  ];

}