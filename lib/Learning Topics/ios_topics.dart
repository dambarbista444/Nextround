
import '../../Model/learning_topics.dart';
import 'package:next_round/Common Components/learner_type.dart';


class IosTopics {
  static List<LearningDetail> learningDetails = [
    // Swift Basics

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the difference between a class and a struct in Swift?",
  answer: "The key difference is that classes are reference types and structs are value types. Classes can also inherit properties and methods from other classes, while structs cannot.",
  example: """
        // Class example (reference type)
        class Dog {
          var name: String
          init(name: String) {
            self.name = name
          }
        }
        var dog1 = Dog(name: "Buddy")
        var dog2 = dog1
        dog2.name = "Max"
        print(dog1.name) // Output: Max

        // Struct example (value type)
        struct Cat {
          var name: String
        }
        var cat1 = Cat(name: "Whiskers")
        var cat2 = cat1
        cat2.name = "Shadow"
        print(cat1.name) // Output: Whiskers
      """
  ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are optionals in Swift?",
        answer: "Optionals in Swift represent variables that may either have a value or be nil. They are declared by appending a question mark (?) to the type.",
        example: """
    var name: String? = "John"
    if let unwrappedName = name {
        print("Name is \(unwrappedName)")
    } else {
        print("Name is nil")
    }
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between 'let' and 'var' in Swift?",
        answer: "'let' declares a constant that cannot be changed after initialization, whereas 'var' declares a variable that can be modified.",
        example: """
    let constantValue = 10
    var variableValue = 20
    variableValue = 30 // allowed
    // constantValue = 15 // not allowed, this will throw an error
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is an optional binding in Swift?",
        answer: "Optional binding is a way to safely unwrap optionals using `if let` or `guard let` to check whether an optional contains a value, and if so, bind that value to a variable.",
        example: """
        var name: String? = "John"
        if let unwrappedName = name {
          print("Hello, \\(unwrappedName)") // Output: Hello, John
        } else {
          print("No name provided")
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the main thread in iOS development?",
        answer: "The main thread is where the app's UI is updated. Any UI-related tasks must be performed on the main thread to ensure the app remains responsive.",
        example: """
        DispatchQueue.main.async {
          // UI updates go here
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is type inference in Swift?",
        answer: "Type inference is Swift's ability to deduce the type of a variable or constant based on the value you assign to it, without explicitly declaring the type.",
        example: "let name = 'John' // Swift infers this as String\nlet age = 30 // Swift infers this as Int"
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a closure in Swift?",
        answer: "A closure is a self-contained block of functionality that can be passed around and used in your code. They can capture and store references to variables from the surrounding context.",
        example: """
    let greet = { (name: String) -> String in
        return "Hello, \\(name)"
    }
    print(greet("Alice"))
    """),

    // UIKit Basics
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you create a button in UIKit?",
        answer: "In UIKit, you can create a button using the UIButton class, configure its title, and add an action.",
        example: """
    let button = UIButton(type: .system)
    button.setTitle("Tap Me", for: .normal)
    button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a UIViewController in UIKit?",
        answer: "UIViewController is a base class for all view controllers in UIKit. It manages a view hierarchy and handles user interactions.",
        example: """
    class MyViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
        }
    }
    """),

    // SwiftUI Basics
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a view in SwiftUI?",
        answer: "A view in SwiftUI is a struct that conforms to the View protocol and represents a part of the user interface.",
        example: """
    struct ContentView: View {
        var body: some View {
            Text("Hello, SwiftUI!")
        }
    }
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you create a button in SwiftUI?",
        answer: "In SwiftUI, buttons are created using the Button view. You can define the action and the label inside the Button initializer.",
        example: """
    Button(action: {
        print("Button tapped!")
    }) {
        Text("Tap Me")
    }
    """),

    // Swift Data Structures
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is an array in Swift?",
        answer: "An array is an ordered collection of elements of the same type in Swift.",
        example: """
    var numbers: [Int] = [1, 2, 3, 4, 5]
    numbers.append(6)
    print(numbers)
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a dictionary in Swift?",
        answer: "A dictionary is an unordered collection of key-value pairs, where each key is unique.",
        example: """
    var user: [String: String] = ["name": "Alice", "email": "alice@example.com"]
    user["age"] = "30"
    print(user)
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a Set in Swift?",
        answer: "A Set is an unordered collection of unique elements in Swift.",
        example: """
    var uniqueNumbers: Set<Int> = [1, 2, 3, 3, 4]
    print(uniqueNumbers) // Output: {1, 2, 3, 4}
    """),

    // Storage
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you store data using UserDefaults in iOS?",
        answer: "UserDefaults provides a simple way to store small amounts of data, like settings or user preferences.",
        example: """
    // Save a value
    UserDefaults.standard.set("John Doe", forKey: "username")

    // Retrieve a value
    let username = UserDefaults.standard.string(forKey: "username")
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Core Data in iOS?",
        answer: "Core Data is a framework used to manage and persist model data in iOS apps, providing features like querying and data relationships.",
        example: """
    // Save an entity
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let newUser = User(context: context)
    newUser.name = "Alice"
    do {
        try context.save()
    } catch {
        print("Failed saving")
    }
    """),

    // SwiftUI: Conditional View Modifiers
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you apply conditional view modifiers in SwiftUI?",
        answer: "Conditional view modifiers allow you to apply styling or transformations to a view based on certain conditions using ternary operators or if statements.",
        example: """
    struct ContentView: View {
        @State private var isHighlighted = false

        var body: some View {
            Text("Hello, World!")
                .padding()
                .background(isHighlighted ? Color.yellow : Color.clear)
                .onTapGesture {
                    isHighlighted.toggle()
                }
        }
    }
    """),

    // Security
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Keychain in iOS?",
        answer: "The Keychain is a secure storage mechanism in iOS used to store sensitive data such as passwords, tokens, and encryption keys.",
        example: """
    // Save a password in Keychain using Keychain Services API
    let password = "mySecurePassword"
    let account = "myAppAccount"
    let passwordData = password.data(using: .utf8)!
    
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: account,
        kSecValueData as String: passwordData
    ]
    SecItemAdd(query as CFDictionary, nil)
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is App Transport Security (ATS)?",
        answer: "App Transport Security (ATS) enforces best practices in secure connections by requiring that all network requests are made using HTTPS.",
        example: """
    // ATS is enabled by default, but can be disabled in Info.plist
    // Example:
    // <key>NSAppTransportSecurity</key>
    // <dict>
    //     <key>NSAllowsArbitraryLoads</key>
    //     <true/>
    // </dict>
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you perform a simple network request in Swift using URLSession?",
        answer: "You can perform a network request using URLSession by creating a URL, a URLSession data task, and handling the response or error.",
        example: """
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            let jsonString = String(data: data, encoding: .utf8)
            print(jsonString)
        }
    }
    task.resume()
    """),

    // Data Structures: Tuples
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a tuple in Swift?",
        answer: "A tuple groups multiple values into a single compound value. The values can be of any type and don't have to be the same type.",
        example: """
    let person = (name: "Alice", age: 30)
    print("Name: \\(person.name), Age: \\(person.age)")
    """),

    // Storage: File System
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you save a file in the documents directory in iOS?",
        answer: "You can save a file in the app's documents directory using FileManager.",
        example: """
    let fileManager = FileManager.default
    let documentsDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
    let fileURL = documentsDirectory.appendingPathComponent("example.txt")

    let text = "Hello, file system!"
    do {
        try text.write(to: fileURL, atomically: true, encoding: .utf8)
    } catch {
        print("Failed to write file: \\(error)")
    }
    """),

    // Security: Face ID and Touch ID
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Face ID and how do you integrate it into your app?",
        answer: "Face ID is a facial recognition system in iOS. You can integrate it using the LocalAuthentication framework.",
        example: """
    import LocalAuthentication

    let context = LAContext()
    var error: NSError?

    if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Access requires authentication") { success, error in
            if success {
                print("Authenticated!")
            } else {
                print("Failed to authenticate")
            }
        }
    } else {
        print("Biometrics not available")
    }
    """),

    // UIKit: Auto Layout
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you set up Auto Layout programmatically in UIKit?",
        answer: "You can use NSLayoutConstraint to set up Auto Layout programmatically in UIKit.",
        example: """
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(button)

    NSLayoutConstraint.activate([
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        button.widthAnchor.constraint(equalToConstant: 200),
        button.heightAnchor.constraint(equalToConstant: 50)
    ])
    """),

    // SwiftUI: View Modifiers
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a view modifier in SwiftUI?",
        answer: "A view modifier in SwiftUI is a method that applies a set of changes to a view.",
        example: """
    struct ContentView: View {
        var body: some View {
            Text("Hello, SwiftUI!")
                .font(.title)
                .foregroundColor(.blue)
        }
    }
    """),

    // Swift: Closures
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a closure in Swift?",
        answer: "A closure is a self-contained block of functionality that can be passed and used in your code.",
        example: """
    let greet = { (name: String) -> String in
        return "Hello, \\(name)"
    }
    print(greet("John")) // Output: Hello, John
    """),

    // Swift: Protocols
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a protocol in Swift?",
        answer: "A protocol defines a blueprint of methods, properties, and other requirements that can be adopted by classes, structs, or enums.",
        example: """
    protocol Greetable {
        func greet()
    }

    class Person: Greetable {
        func greet() {
            print("Hello!")
        }
    }

    let person = Person()
    person.greet() // Output: Hello!
    """),

    // UIKit: Table Views
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you create a UITableView in UIKit?",
        answer: "You create a UITableView in UIKit by adding it to your view hierarchy and implementing the UITableViewDataSource and UITableViewDelegate protocols.",
        example: """
    class MyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        let tableView = UITableView()

        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            tableView.delegate = self
            view.addSubview(tableView)
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = "Row \\(indexPath.row)"
            return cell
        }
    }
    """),

    // SwiftUI: Lists
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you create a List in SwiftUI?",
        answer: "A List in SwiftUI is used to display a scrolling list of views, such as rows of data.",
        example: """
    struct ContentView: View {
        let items = ["Item 1", "Item 2", "Item 3"]

        var body: some View {
            List(items, id: \\self) { item in
                Text(item)
            }
        }
    }
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is @State in SwiftUI?",
        answer: "@State is a property wrapper in SwiftUI that allows a view to manage its own mutable state.",
        example: """
    struct CounterView: View {
        @State private var count = 0

        var body: some View {
            VStack {
                Text("Count: \\(count)")
                Button("Increment") {
                    count += 1
                }
            }
        }
    }
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is @Binding in SwiftUI?",
        answer: "@Binding is used to create a two-way data binding between parent and child views in SwiftUI.",
        example: """
    struct ParentView: View {
        @State private var isOn = false

        var body: some View {
            ToggleView(isOn: ＄isOn)
        }
    }

    struct ToggleView: View {
        @Binding var isOn: Bool

        var body: some View {
            Toggle("Toggle", isOn: ＄isOn)
        }
    }
    """),

    // Swift: Generics
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are generics in Swift, and why are they useful?",
        answer: "Generics allow you to write flexible and reusable functions and types that can work with any type. Generics reduce code duplication and improve type safety.",
        example: """
    func swapValues<T>(_ a: inout T, _ b: inout T) {
        let temp = a
        a = b
        b = temp
    }

    var x = 10, y = 20
    swapValues(&x, &y)
    print(x, y) // Output: 20, 10
    """),

    // Swift: Associated Types in Protocols
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are associated types in Swift protocols?",
        answer: "An associated type gives a placeholder name to a type that is used as part of the protocol. The actual type to use for that associated type isn’t specified until the protocol is adopted.",
        example: """
    protocol Container {
        associatedtype Item
        var count: Int { get }
        mutating func append(_ item: Item)
    }

    struct Stack<Element>: Container {
        var items = [Element]()
        var count: Int { return items.count }
        mutating func append(_ item: Element) { items.append(item) }
    }
    """),

    // Concurrency: Grand Central Dispatch (GCD)
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Grand Central Dispatch (GCD) in iOS, and how do you use it?",
        answer: "GCD is a low-level API for managing concurrent operations. It helps improve app performance by dispatching tasks to different threads or queues.",
        example: """
    DispatchQueue.global(qos: .background).async {
        print("Background task")
        DispatchQueue.main.async {
            print("Back to the main thread")
        }
    }
    """),

    // Concurrency: Operation Queue
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is an OperationQueue in iOS, and how does it differ from GCD?",
        answer: "OperationQueue is a high-level API that manages the execution of Operation objects, providing more control than GCD, such as setting priorities or canceling operations.",
        example: """
    let queue = OperationQueue()
    queue.maxConcurrentOperationCount = 2

    let operation1 = BlockOperation {
        print("Operation 1")
    }
    let operation2 = BlockOperation {
        print("Operation 2")
    }

    queue.addOperations([operation1, operation2], waitUntilFinished: false)
    """),

    // Data Structures: Linked List
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a linked list, and how do you implement it in Swift?",
        answer: "A linked list is a linear data structure where elements are stored in nodes, and each node points to the next one. It's useful for dynamic memory allocation and when you need frequent insertions or deletions.",
        example: """
    class Node<T> {
        var value: T
        var next: Node?

        init(value: T) {
            self.value = value
        }
    }

    class LinkedList<T> {
        var head: Node<T>?

        func append(value: T) {
            let newNode = Node(value: value)
            if let lastNode = head {
                var node = lastNode
                while let nextNode = node.next {
                    node = nextNode
                }
                node.next = newNode
            } else {
                head = newNode
            }
        }
    }
    """),

    // Storage: Core Data
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Core Data, and how do you use it to persist data in iOS?",
        answer: "Core Data is a framework for managing an object graph and persisting data locally in your app. It allows you to save, query, and manage model layer objects.",
        example: """
    let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Person")
    do {
        let results = try context.fetch(fetchRequest)
        for person in results {
            print(person.value(forKey: "name") as? String)
        }
    } catch {
        print("Failed to fetch data")
    }
    """),

    // Security: Keychain
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the iOS Keychain, and how do you store secure information in it?",
        answer: "The Keychain is a secure storage system for sensitive information such as passwords and encryption keys. It is designed to be secure, even when the app is compromised.",
        example: """
    let keychain = Keychain(service: "com.example.app")
    keychain["password"] = "my_secure_password"
    print(keychain["password"] ?? "No password found")
    """),

    // SwiftUI: State and Binding
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between @State and @Binding in SwiftUI?",
        answer: "@State is used to create local mutable state for a view, while @Binding allows a child view to read and write a value owned by a parent view.",
        example: """
    struct ParentView: View {
        @State private var isOn: Bool = false

        var body: some View {
            ChildView(isOn: ＄isOn)
        }
    }

    struct ChildView: View {
        @Binding var isOn: Bool

        var body: some View {
            Toggle(isOn: ＄isOn) {
                Text("Switch")
            }
        }
    }
    """),

    // Swift: Extensions
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is an extension in Swift, and how is it used?",
        answer: "Extensions in Swift add new functionality to an existing class, struct, enum, or protocol without modifying the original source code.",
        example: """
    extension String {
        func reversedString() -> String {
            return String(self.reversed())
        }
    }

    print("hello".reversedString())  // Output: olleh
    """),

    // Swift: Optional Chaining
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is optional chaining in Swift, and how is it used?",
        answer: "Optional chaining is a process for querying and calling properties, methods, and subscripts on optionals that might currently be nil.",
        example: """
    class Person {
        var residence: Residence?
    }

    class Residence {
        var numberOfRooms = 1
    }

    let john = Person()
    let roomCount = john.residence?.numberOfRooms ?? 0
    print(roomCount)  // Output: 0
    """),

    // UIKit: UIView Animation
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you perform animations in UIKit?",
        answer: "In UIKit, you can use UIView’s animation methods to animate properties like frame, alpha, background color, etc.",
        example: """
    UIView.animate(withDuration: 0.5) {
        self.view.alpha = 0.0
    }
    """),

    // SwiftUI: Animations
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you create animations in SwiftUI?",
        answer: "In SwiftUI, you can apply animations to any view using the `.animation()` modifier.",
        example: """
    struct ContentView: View {
        @State private var scale: CGFloat = 1.0

        var body: some View {
            VStack {
                Circle()
                    .frame(width: 100, height: 100)
                    .scaleEffect(scale)
                    .animation(.easeInOut(duration: 1))

                Button("Animate") {
                    scale = scale == 1.0 ? 1.5 : 1.0
                }
            }
        }
    }
    """),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is error handling in Swift?",
        answer: "Error handling in Swift allows you to manage and respond to error conditions in a clear and organized manner using `do-catch`, `try`, and `throw` keywords.",
        example: """
        enum FileError: Error {
          case fileNotFound
        }

        func readFile(fileName: String) throws {
          if fileName == "" {
            throw FileError.fileNotFound
          }
          print("File found!")
        }

        do {
          try readFile(fileName: "")
        } catch FileError.fileNotFound {
          print("Error: File not found")
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does error handling work in Swift?",
        answer: "Swift uses a type-safe approach to error handling. Functions can throw an error using the `throw` keyword, and the errors are handled using `do`, `try`, and `catch` statements.",
        example: """
    enum FileError: Error {
        case fileNotFound
    }

    func readFile(at path: String) throws -> String {
        guard path == "validPath" else { throw FileError.fileNotFound }
        return "File content"
    }

    do {
        let content = try readFile(at: "invalidPath")
        print(content)
    } catch {
        print("Error: \(error)")
    }
    """),

    // Swift: Memory Management
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is ARC (Automatic Reference Counting) in Swift, and how does it work?",
        answer: "ARC is Swift’s memory management system. It automatically keeps track of the strong references to objects and deallocates memory when the reference count reaches zero. You can also use `weak` or `unowned` to prevent strong reference cycles.",
        example: """
    class Person {
        let name: String
        init(name: String) { self.name = name }
    }

    var john: Person? = Person(name: "John")
    john = nil  // The Person instance is deallocated as ARC frees its memory.
    """),

    // Data Structures: Stack
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a stack, and how do you implement it in Swift?",
        answer: "A stack is a data structure that follows the Last-In-First-Out (LIFO) principle. You can use an array to implement a stack in Swift.",
        example: """
    struct Stack<T> {
        private var elements: [T] = []

        mutating func push(_ value: T) {
            elements.append(value)
        }

        mutating func pop() -> T? {
            return elements.popLast()
        }

        func peek() -> T? {
            return elements.last
        }
    }

    var stack = Stack<Int>()
    stack.push(10)
    stack.push(20)
    print(stack.pop())  // Output: 20
    """),

    // Concurrency: Async/Await
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does Swift's async/await mechanism work?",
        answer: "Swift's async/await allows you to handle asynchronous tasks in a readable, structured manner. You define an asynchronous function using the `async` keyword and call it using `await`.",
        example: """
    func fetchData() async throws -> String {
        return "Data fetched"
    }

    Task {
        do {
            let data = try await fetchData()
            print(data)
        } catch {
            print("Failed to fetch data")
        }
    }
    """),

    // Swift: Access Control
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are the different access control levels in Swift?",
        answer: "Swift provides five levels of access control: `open`, `public`, `internal`, `fileprivate`, and `private`, which control the visibility of types and properties.",
        example: """
    class MyClass {
        private var secret: String = "This is private"
        internal var internalValue: String = "This is internal"
    }

    let myClass = MyClass()
    // myClass.secret is not accessible outside the class
    print(myClass.internalValue)  // Accessible within the module
    """),

    // UIKit: UITableView Diffable DataSource
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a diffable data source in UITableView?",
        answer: "Diffable data source simplifies managing data in UITableView by providing better performance and more efficient updates. It uses snapshot-based updates for the data.",
        example: """
    var dataSource: UITableViewDiffableDataSource<Section, Item>!

    func configureDataSource() {
        dataSource = UITableViewDiffableDataSource<Section, Item>(tableView: tableView) { (tableView, indexPath, item) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = item.title
            return cell
        }
    }
    """),

    // UIKit: UICollectionViewCompositionalLayout
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is UICollectionViewCompositionalLayout, and how do you use it?",
        answer: "UICollectionViewCompositionalLayout is a powerful and flexible way to build complex layouts in a UICollectionView. It allows for different layout sections with different sizes and behaviors.",
        example: """
    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.2))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
    
    let section = NSCollectionLayoutSection(group: group)
    let layout = UICollectionViewCompositionalLayout(section: section)
    collectionView.collectionViewLayout = layout
    """),

    // Swift: Lazy Properties
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a lazy property in Swift?",
        answer: "A lazy property is a property whose initial value is not calculated until the first time it is used. It is declared using the `lazy` keyword.",
        example: """
    class DataLoader {
        lazy var data: String = {
            return "Loaded Data"
        }()
    }

    let loader = DataLoader()
    print(loader.data)  // Only here is 'data' initialized.
    """),

    // Concurrency: Combine
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Combine, and how does it work in iOS?",
        answer: "Combine is Apple's reactive programming framework that lets you handle asynchronous events by providing a declarative Swift API for handling values over time.",
        example: """
    import Combine

    let publisher = Just("Hello Combine!")
    let subscription = publisher.sink { value in
        print(value)  // Output: Hello Combine!
    }
    """),

    // UIKit: UIViewController Lifecycle
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are the key methods in the UIViewController lifecycle?",
        answer: "The main methods are `viewDidLoad()`, `viewWillAppear()`, `viewDidAppear()`, `viewWillDisappear()`, and `viewDidDisappear()`. They provide hooks to manage the view's loading, presentation, and removal.",
        example: """
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View loaded")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View is about to appear")
    }
    """),

    // SwiftUI: ObservableObject and @Published
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is an ObservableObject in SwiftUI, and how is @Published used?",
        answer: "ObservableObject is a class that allows views to subscribe to its changes. @Published is a property wrapper that notifies subscribers when the value changes.",
        example: """
    class ViewModel: ObservableObject {
        @Published var name: String = "John"
    }

    struct ContentView: View {
        @ObservedObject var viewModel = ViewModel()

        var body: some View {
            Text(viewModel.name)
            Button("Change Name") {
                viewModel.name = "Jane"
            }
        }
    }
    """),

    // Concurrency: DispatchGroup
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a DispatchGroup in iOS, and how do you use it?",
        answer: "DispatchGroup allows you to group multiple tasks and track when they have all completed. It is useful when you want to run multiple asynchronous operations and wait for them all to finish.",
        example: """
    let dispatchGroup = DispatchGroup()

    dispatchGroup.enter()
    DispatchQueue.global().async {
        // Perform task 1
        print("Task 1 completed")
        dispatchGroup.leave()
    }

    dispatchGroup.enter()
    DispatchQueue.global().async {
        // Perform task 2
        print("Task 2 completed")
        dispatchGroup.leave()
    }

    dispatchGroup.notify(queue: .main) {
        print("All tasks completed")
    }
    """),

    // Swift: Protocol Oriented Programming
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Protocol Oriented Programming in Swift?",
        answer: "Protocol-Oriented Programming (POP) focuses on defining the interfaces (protocols) that types should conform to, rather than relying on class inheritance. It promotes code reusability and flexibility.",
        example: """
    protocol Drivable {
        func drive()
    }

    extension Drivable {
        func drive() {
            print("Driving")
        }
    }

    struct Car: Drivable {}
    let myCar = Car()
    myCar.drive()  // Output: Driving
    """),

    // Data Structures: Queue
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a queue, and how do you implement it in Swift?",
        answer: "A queue is a data structure that follows the First-In-First-Out (FIFO) principle. Elements are added at the rear and removed from the front.",
        example: """
    struct Queue<T> {
        private var elements: [T] = []

        mutating func enqueue(_ value: T) {
            elements.append(value)
        }

        mutating func dequeue() -> T? {
            return elements.isEmpty ? nil : elements.removeFirst()
        }
    }

    var queue = Queue<Int>()
    queue.enqueue(1)
    queue.enqueue(2)
    print(queue.dequeue())  // Output: 1
    """),

    // UIKit: Programmatic Auto Layout
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you implement Auto Layout programmatically in UIKit?",
        answer: "You can implement Auto Layout programmatically using NSLayoutConstraint or NSLayoutAnchor. Constraints define how the views relate to each other in the layout.",
        example: """
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(label)

    NSLayoutConstraint.activate([
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
    """),

    // Security: SSL Pinning
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is SSL pinning, and how do you implement it in iOS?",
        answer: "SSL Pinning is a security technique that pins the SSL certificate to the app, ensuring the app only trusts a specific server's certificate to prevent man-in-the-middle attacks.",
        example: """
    // SSL Pinning is typically implemented by overriding URLSession's delegate methods:
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        guard let serverTrust = challenge.protectionSpace.serverTrust else {
            completionHandler(.cancelAuthenticationChallenge, nil)
            return
        }

        // Validate server certificate here
        completionHandler(.useCredential, URLCredential(trust: serverTrust))
    }
    """),

    // SwiftUI: EnvironmentObject
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is an EnvironmentObject in SwiftUI, and how is it different from @ObservedObject?",
        answer: "EnvironmentObject is a global way to pass data down the view hierarchy, while @ObservedObject is for local state management within a specific view hierarchy. EnvironmentObject allows sharing data across unrelated views.",
        example: """
    class UserSettings: ObservableObject {
        @Published var username = "John Doe"
    }

    struct ContentView: View {
        @EnvironmentObject var settings: UserSettings

        var body: some View {
            Text("Username: \\(settings.username)")
        }
    }

    // In the app entry point:
    ContentView().environmentObject(UserSettings())
    """),

    // Storage: File Handling
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you read and write files in iOS using FileManager?",
        answer: "FileManager provides APIs to manage the file system. You can use it to read and write files to the app's sandboxed directories.",
        example: """
    let fileManager = FileManager.default
    let path = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
    let fileURL = path.appendingPathComponent("example.txt")

    // Writing to the file
    let text = "Hello, World!"
    try? text.write(to: fileURL, atomically: true, encoding: .utf8)

    // Reading from the file
    if let content = try? String(contentsOf: fileURL) {
        print(content)  // Output: Hello, World!
    }
    """),

    // UIKit: Dynamic Type
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Dynamic Type, and how do you support it in UIKit?",
        answer: "Dynamic Type allows users to change the font size across the system. You can support it in UIKit by using preferred fonts and ensuring your layouts adapt to different text sizes.",
        example: """
    let label = UILabel()
    label.font = UIFont.preferredFont(forTextStyle: .body)
    label.adjustsFontForContentSizeCategory = true
    """),

    // SwiftUI: Custom Views
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you create a custom view in SwiftUI?",
        answer: "Custom views in SwiftUI are created by defining a struct that conforms to the View protocol and implementing the required body property.",
        example: """
    struct CustomView: View {
        var body: some View {
            Text("Hello from Custom View")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }

    struct ContentView: View {
        var body: some View {
            CustomView()
        }
    }
    """),

    // Swift: Mutating Methods in Structs
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are mutating methods in Swift structs?",
        answer: "In Swift, structs are value types. If a method in a struct modifies its properties, it must be marked as `mutating` to allow changes to the instance's state.",
        example: """
    struct Point {
        var x: Int
        var y: Int

        mutating func moveBy(dx: Int, dy: Int) {
            x += dx
            y += dy
        }
    }

    var point = Point(x: 0, y: 0)
    point.moveBy(dx: 5, dy: 5)
    print(point)  // Output: Point(x: 5, y: 5)
    """),

    // Data Structures: Binary Tree
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a binary tree, and how do you implement it in Swift?",
        answer: "A binary tree is a data structure where each node has at most two children, typically referred to as the left and right child. It is useful for hierarchical data.",
        example: """
    class TreeNode<T> {
        var value: T
        var left: TreeNode?
        var right: TreeNode?

        init(_ value: T) {
            self.value = value
        }
    }

    let root = TreeNode(10)
    root.left = TreeNode(5)
    root.right = TreeNode(15)

    func traverseInOrder(_ node: TreeNode<Int>?) {
        guard let node = node else { return }
        traverseInOrder(node.left)
        print(node.value)
        traverseInOrder(node.right)
    }

    traverseInOrder(root)  // Output: 5 10 15
    """),

    // Advanced

    // SwiftUI: Custom Animations
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create complex custom animations in SwiftUI?",
        answer: "SwiftUI provides a declarative syntax for animations using `.animation()` modifiers and the ability to create custom animations with timing curves and delays.",
        example: """
    struct CustomAnimationView: View {
        @State private var isAnimating = false

        var body: some View {
            Circle()
                .frame(width: isAnimating ? 100 : 50, height: isAnimating ? 100 : 50)
                .foregroundColor(isAnimating ? .red : .blue)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                .onAppear {
                    isAnimating = true
                }
        }
    }
    """),

    // UIKit: View Controller Containment
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is view controller containment in UIKit, and how do you implement it?",
        answer: "View controller containment allows you to embed child view controllers inside a parent view controller, enabling modularity and code reuse. It is commonly used in container-based architectures.",
        example: """
    let parentViewController = UIViewController()
    let childViewController = UIViewController()

    parentViewController.addChild(childViewController)
    parentViewController.view.addSubview(childViewController.view)
    childViewController.didMove(toParent: parentViewController)
    """),

    // Concurrency: Actors in Swift
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are actors in Swift, and how do they help in concurrency?",
        answer: "Actors in Swift provide a safe, concurrent way to manage state by isolating data and ensuring that only one task accesses a mutable state at a time. They prevent race conditions.",
        example: """
    actor BankAccount {
        private var balance: Double = 0

        func deposit(amount: Double) {
            balance += amount
        }

        func getBalance() -> Double {
            return balance
        }
    }

    let account = BankAccount()
    await account.deposit(amount: 100)
    print(await account.getBalance()) // Output: 100
    """),

    // Data Structure: Trie
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a trie data structure, and how would you implement it in Swift?",
        answer: "A trie is a tree-like data structure used to store collections of strings efficiently, allowing for fast lookups, insertions, and deletions.",
        example: """
    class TrieNode {
        var children: [Character: TrieNode] = [:]
        var isEndOfWord: Bool = false
    }

    class Trie {
        private let root = TrieNode()

        func insert(_ word: String) {
            var node = root
            for char in word {
                if node.children[char] == nil {
                    node.children[char] = TrieNode()
                }
                node = node.children[char]!
            }
            node.isEndOfWord = true
        }

        func search(_ word: String) -> Bool {
            var node = root
            for char in word {
                if let child = node.children[char] {
                    node = child
                } else {
                    return false
                }
            }
            return node.isEndOfWord
        }
    }

    let trie = Trie()
    trie.insert("apple")
    print(trie.search("apple"))  // Output: true
    """),

    // Swift: Generic Constraints
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do generic constraints work in Swift, and how can you apply them?",
        answer: "Generic constraints in Swift allow you to limit a generic function or type to work with only certain kinds of types. You can apply constraints using `where` clauses or protocol inheritance.",
        example: """
    func findIndex<T: Equatable>(of valueToFind: T, in array: [T]) -> Int? {
        for (index, value) in array.enumerated() {
            if value == valueToFind {
                return index
            }
        }
        return nil
    }

    let index = findIndex(of: 5, in: [1, 2, 3, 4, 5])
    print(index) // Output: 4
    """),

    // Security: Keychain Sharing
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Keychain sharing, and how is it implemented in iOS?",
        answer: "Keychain sharing allows multiple apps from the same developer to share credentials or secure data between each other. It is implemented using app groups and configuring the Keychain access group.",
        example: """
    // Adding to Keychain
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: "my_account",
        kSecValueData as String: "password".data(using: .utf8)!,
        kSecAttrAccessGroup as String: "group.com.example.myapp"
    ]
    SecItemAdd(query as CFDictionary, nil)

    // Retrieving from Keychain
    let searchQuery: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: "my_account",
        kSecReturnData as String: true,
        kSecAttrAccessGroup as String: "group.com.example.myapp"
    ]

    var item: CFTypeRef?
    if SecItemCopyMatching(searchQuery as CFDictionary, &item) == errSecSuccess {
        let retrievedData = item as! Data
        print(String(data: retrievedData, encoding: .utf8))  // Output: password
    }
    """),

    // Concurrency: Combine and Backpressure
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle backpressure in Combine when dealing with high-frequency events?",
        answer: "Backpressure in Combine is managed using operators like `buffer`, `debounce`, and `throttle` to control the rate of data emission when a publisher produces events faster than subscribers can consume them.",
        example: """
    let subject = PassthroughSubject<Int, Never>()
    let subscription = subject
        .buffer(size: 10, prefetch: .keepFull, whenFull: .dropOldest)
        .sink(receiveValue: { print("\\(＄0)") })

    for i in 1...20 {
        subject.send(i)
    }

    // Output: 11, 12, 13, ..., 20 (old values are dropped)
    """),

    // Swift: Property Wrappers
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are property wrappers in Swift, and how do you create a custom one?",
        answer: "Property wrappers are a Swift feature that allows you to abstract out code for managing a property's behavior. You create a custom wrapper by using the `@propertyWrapper` attribute.",
        example: """
    @propertyWrapper
    struct Capitalized {
        private var value: String = ""

        var wrappedValue: String {
            get { value }
            set { value = newValue.capitalized }
        }
    }

    struct Person {
        @Capitalized var name: String
    }

    var person = Person(name: "john doe")
    print(person.name)  // Output: John Doe
    """),

    // Security: iOS Data Protection API
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the iOS Data Protection API and how does it enhance app security?",
        answer: "The iOS Data Protection API provides different levels of protection for data stored on disk based on the user's passcode and device state (locked or unlocked). Apps can specify file protection levels when saving sensitive data.",
        example: """
    let fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("sensitiveData.txt")
    let sensitiveData = "Very sensitive information".data(using: .utf8)!

    do {
        try sensitiveData.write(to: fileURL, options: .completeFileProtectionUntilFirstUserAuthentication)
    } catch {
        print("Failed to save data securely.")
    }
    """),

    // Swift: Custom Operators
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create and use custom operators in Swift?",
        answer: "Custom operators allow you to define your own symbols for operations that aren't part of the standard library. These can simplify complex code when used judiciously.",
        example: """
    infix operator ** : MultiplicationPrecedence

    func ** (base: Int, power: Int) -> Int {
        return Int(pow(Double(base), Double(power)))
    }

    let result = 2 ** 3 // Output: 8
    """),

    // UIKit: Diffable Data Source
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a Diffable Data Source in UIKit, and why is it useful?",
        answer: "Diffable Data Source is a more efficient and flexible way to manage data in UITableView and UICollectionView. It allows easy updates with a snapshot, avoiding manual index path calculations.",
        example: """
    let dataSource = UITableViewDiffableDataSource<Section, Item>(tableView: tableView) { (tableView, indexPath, item) -> UITableViewCell? in
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = item.name
        return cell
    }

    var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
    snapshot.appendSections([.main])
    snapshot.appendItems([item1, item2])
    dataSource.apply(snapshot)
    """),

    // SwiftUI: EnvironmentObject vs. @State
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between @State and EnvironmentObject in SwiftUI?",
        answer: "In SwiftUI, `@State` is used to manage simple local state within a view, while `@EnvironmentObject` is for shared data between multiple views, often managed by a higher-level container or coordinator.",
        example: """
    class UserSettings: ObservableObject {
        @Published var username: String = "John"
    }

    struct ContentView: View {
        @EnvironmentObject var settings: UserSettings

        var body: some View {
            VStack {
                Text("Hello, \\(settings.username)")
                Button("Change Username") {
                    settings.username = "Jane"
                }
            }
        }
    }

    // Usage in the root of the app
    @main
    struct MyApp: App {
        var settings = UserSettings()

        var body: some Scene {
            WindowGroup {
                ContentView().environmentObject(settings)
            }
        }
    }
    """),

    // Swift: Result Type
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the Result type in Swift, and how does it simplify error handling?",
        answer: "The `Result` type in Swift encapsulates a value that represents either success or failure. It eliminates the need for manual error propagation using `throws` and provides a more declarative way to handle results.",
        example: """
    enum NetworkError: Error {
        case badURL
        case serverError
    }

    func fetchData(from urlString: String) -> Result<Data, NetworkError> {
        guard let url = URL(string: urlString) else {
            return .failure(.badURL)
        }

        // Simulate network fetch
        let data = Data()
        return .success(data)
    }

    let result = fetchData(from: "https://example.com")
    switch result {
    case .success(let data):
        print("Data fetched successfully: \\(data)")
    case .failure(let error):
        print("Failed to fetch data: \\(error)")
    }
    """),

    // Storage: Core Data Migrations
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle Core Data migrations when your data model changes?",
        answer: "Core Data migrations allow you to update the underlying data model when schema changes occur. Lightweight migrations automatically map old data to new data models when minor changes are made.",
        example: """
    // Setting up Core Data with migration options
    let container = NSPersistentContainer(name: "Model")
    let description = container.persistentStoreDescriptions.first
    description?.setOption(true as NSNumber, forKey: NSPersistentStoreDescription.optionAllowMigrationsKey)

    container.loadPersistentStores { (storeDescription, error) in
        if let error = error {
            fatalError("Unresolved error \\(error)")
        }
    }
    """),

    // Concurrency: Async/Await with Combine
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you combine async/await with Combine framework in Swift for handling concurrency?",
        answer: "In Swift, async/await can be used alongside Combine by using `Future` publishers to bridge between async functions and Combine pipelines.",
        example: """
    func fetchData() async throws -> Data {
        // Simulate network call
        return Data()
    }

    let future = Future<Data, Error> { promise in
        Task {
            do {
                let data = try await fetchData()
                promise(.success(data))
            } catch {
                promise(.failure(error))
            }
        }
    }

    let cancellable = future
        .sink(receiveCompletion: { completion in
            print("Completion: \\(completion)")
        }, receiveValue: { data in
            print("Data received: \\(data)")
        })
    """),

    // SwiftUI: Custom View Modifiers
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create reusable custom view modifiers in SwiftUI?",
        answer: "Custom view modifiers in SwiftUI allow you to encapsulate and reuse view styling logic across multiple views. They improve code organization and reusability.",
        example: """
    struct RoundedBackgroundModifier: ViewModifier {
        var color: Color

        func body(content: Content) -> some View {
            content
                .padding()
                .background(color)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
    }

    extension View {
        func roundedBackground(color: Color) -> some View {
            self.modifier(RoundedBackgroundModifier(color: color))
        }
    }

    struct ContentView: View {
        var body: some View {
            Text("Hello, SwiftUI!")
                .roundedBackground(color: .blue)
        }
    }
    """),

    // Security: Certificate Pinning
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is certificate pinning, and how do you implement it in iOS?",
        answer: "Certificate pinning is a security technique that ensures your app communicates only with trusted servers by hardcoding the server's certificate or public key in the app. This prevents MITM attacks.",
        example: """
    func urlSessionPinning() {
        let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
        let task = session.dataTask(with: URL(string: "https://example.com")!) { data, response, error in
            // Handle response
        }
        task.resume()
    }

    extension YourClass: URLSessionDelegate {
        func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
            if let serverTrust = challenge.protectionSpace.serverTrust {
                let cert = SecTrustGetCertificateAtIndex(serverTrust, 0)
                let certData = SecCertificateCopyData(cert!) as Data

                // Compare server certificate with your pinned certificate
                if certData == yourPinnedCertData {
                    completionHandler(.useCredential, URLCredential(trust: serverTrust))
                    return
                }
            }
            completionHandler(.cancelAuthenticationChallenge, nil)
        }
    }
    """),

  // UIKit: Custom Transitions Between View Controllers
  LearningDetail(
  learnerType: LearnerType.advanced,
  question: "How do you implement custom transitions between view controllers in UIKit?",
  answer: "Custom view controller transitions in UIKit can be implemented by conforming to `UIViewControllerTransitioningDelegate` and providing custom animation and interaction controllers.",
  example: """
    class CustomAnimator: NSObject, UIViewControllerAnimatedTransitioning {
        func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
            return 0.5
        }

        func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
            let containerView = transitionContext.containerView
            guard let fromView = transitionContext.view(forKey: .from),
                  let toView = transitionContext.view(forKey: .to) else { return }

            containerView.addSubview(toView)
            toView.alpha = 0

            UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
                toView.alpha = 1
                fromView.alpha = 0
            }) { _ in
                fromView.removeFromSuperview()
                transitionContext.completeTransition(true)
            }
        }
    }

    // Using the custom animator
    let customAnimator = CustomAnimator()
    destinationVC.transitioningDelegate = customAnimator
    present(destinationVC, animated: true)
    """),

  // Swift: Key Paths
  LearningDetail(
  learnerType: LearnerType.advanced,
  question: "What are key paths in Swift, and how do you use them?",
  answer: "Key paths in Swift provide a type-safe way to reference properties of a type, allowing you to pass references to properties as first-class citizens.",
  example: """
    struct Person {
        var name: String
        var age: Int
    }

    let keyPath = \Person.name
    let john = Person(name: "John", age: 30)
    print(john[keyPath: keyPath])  // Output: John
    """),

  // Data Structures: LRU Cache
  LearningDetail(
  learnerType: LearnerType.advanced,
  question: "What is an LRU cache, and how would you implement it in Swift?",
  answer: "An LRU (Least Recently Used) cache is a data structure that evicts the least recently accessed item when the cache reaches its capacity. It can be implemented using a dictionary and a doubly linked list.",
  example: """
    class LRUCache<K: Hashable, V> {
        private var capacity: Int
        private var cache: [K: V] = [:]
        private var order: [K] = []

        init(capacity: Int) {
            self.capacity = capacity
        }

        func get(_ key: K) -> V? {
            if let value = cache[key] {
                if let index = order.firstIndex(of: key) {
                    order.remove(at: index)
                    order.append(key)
                }
                return value
            }
            return nil
        }

        func set(_ key: K, _ value: V) {
            if cache.keys.contains(key) {
                if let index = order.firstIndex(of: key) {
                    order.remove(at: index)
                }
            } else if cache.count == capacity {
                let evictedKey = order.removeFirst()
                cache.removeValue(forKey: evictedKey)
            }

            cache[key] = value
            order.append(key)
        }
    }

    let lruCache = LRUCache<String, Int>(capacity: 3)
    lruCache.set("a", 1)
    lruCache.set("b", 2)
    lruCache.set("c", 3)
    lruCache.get("a")  // a is accessed, so it becomes the most recently used
    lruCache.set("d", 4)  // b is evicted because it's the least recently used
    """),

  // Storage: CloudKit Operations and Handling Errors
  LearningDetail(
  learnerType: LearnerType.advanced,
  question: "How do you handle CloudKit operations and manage errors?",
  answer: "CloudKit provides APIs for syncing app data with iCloud. Operations like `CKFetchRecordsOperation` and `CKModifyRecordsOperation` are used to fetch and modify data, while error handling is important due to potential network or quota issues.",
  example: """
    let recordID = CKRecord.ID(recordName: "user123")
    let fetchOperation = CKFetchRecordsOperation(recordIDs: [recordID])

    fetchOperation.perRecordCompletionBlock = { record, recordID, error in
        if let error = error {
            print("Error fetching record: \\(error)")
        } else if let record = record {
            print("Fetched record: \\(record)")
        }
    }

    fetchOperation.qualityOfService = .userInitiated
    CKContainer.default().privateCloudDatabase.add(fetchOperation)
    """),

  // SwiftUI: Preference Key for View Communication
  LearningDetail(
  learnerType: LearnerType.advanced,
  question: "What is a Preference Key in SwiftUI, and how is it used for view communication?",
  answer: "Preference keys in SwiftUI allow child views to communicate values upwards to their parent views. This is useful for layouts where children affect the parent's appearance.",
  example: """
    struct SizePreferenceKey: PreferenceKey {
        static var defaultValue: CGSize = .zero

        static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
            value = nextValue()
        }
    }

    struct ChildView: View {
        var body: some View {
            Color.red
                .frame(width: 100, height: 100)
                .background(GeometryReader { geometry in
                    Color.clear.preference(key: SizePreferenceKey.self, value: geometry.size)
                })
        }
    }

    struct ParentView: View {
        @State private var childSize: CGSize = .zero

        var body: some View {
            VStack {
                Text("Child size: \\(childSize.width)x\\(childSize.height)")
                ChildView()
                    .onPreferenceChange(SizePreferenceKey.self) { size in
                        childSize = size
                    }
            }
        }
    }
    """),

  // Swift: Memory Layout and Unsafe Pointers
  LearningDetail(
  learnerType: LearnerType.advanced,
  question: "How do you work with memory layout and unsafe pointers in Swift for low-level operations?",
  answer: "Swift provides APIs like `UnsafePointer` and `UnsafeMutablePointer` for working with memory directly, allowing low-level operations, but with the risk of memory safety issues.",
  example: """
    var number: Int = 42
    withUnsafePointer(to: &number) { pointer in
        print("Memory address: \\(pointer)")
    }

    let array = [1, 2, 3, 4, 5]
    array.withUnsafeBufferPointer { bufferPointer in
        for (index, value) in bufferPointer.enumerated() {
            print("Index \\(index): \\(value)")
        }
    }
    """),

    // SwiftUI: Combine and SwiftUI Integration
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you integrate Combine with SwiftUI for reactive programming?",
        answer: "Combine integrates seamlessly with SwiftUI through `@Published`, `@StateObject`, and `@EnvironmentObject`. You can use `Publisher` pipelines to trigger UI updates based on asynchronous data changes.",
        example: """
    class DataModel: ObservableObject {
        @Published var value: String = "Initial Value"
        
        private var cancellable: AnyCancellable?
        
        init() {
            cancellable = Just("Updated Value")
                .delay(for: 2, scheduler: RunLoop.main)
                .sink { [weak self] in self?.value = ＄0 }
        }
    }

    struct ContentView: View {
        @StateObject var model = DataModel()

        var body: some View {
            Text(model.value)
        }
    }
    """),

    // SwiftUI: @StateObject vs @ObservedObject vs @EnvironmentObject
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between @StateObject, @ObservedObject, and @EnvironmentObject in SwiftUI?",
        answer: "In SwiftUI, `@StateObject` creates and owns an observable object, `@ObservedObject` monitors changes in an external observable object, and `@EnvironmentObject` allows sharing observable objects across the view hierarchy.",
        example: """
    class UserSettings: ObservableObject {
        @Published var username = "John Doe"
    }

    struct ContentView: View {
        @StateObject var settings = UserSettings()

        var body: some View {
            ChildView()
                .environmentObject(settings)
        }
    }

    struct ChildView: View {
        @EnvironmentObject var settings: UserSettings

        var body: some View {
            Text("Username: \\(settings.username)")
        }
    }
    """),

    // SwiftUI: GeometryReader for Custom Layouts
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you use GeometryReader for custom view layouts in SwiftUI?",
        answer: "GeometryReader provides access to a view's size and position in SwiftUI's layout system, allowing dynamic layouts that adapt based on the available space.",
        example: """
    struct ContentView: View {
        var body: some View {
            GeometryReader { geometry in
                HStack(spacing: 20) {
                    Text("Left")
                        .frame(width: geometry.size.width * 0.3)
                    Text("Right")
                        .frame(width: geometry.size.width * 0.7)
                }
            }
            .frame(height: 100)
        }
    }
    """),

    // SwiftUI: Custom Alignment in Stacks
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create custom alignment guides in SwiftUI?",
        answer: "SwiftUI allows you to create custom alignment guides using `alignmentGuide` to fine-tune the alignment of views inside stacks.",
        example: """
    struct ContentView: View {
        var body: some View {
            HStack(alignment: .customCenter) {
                Text("Hello")
                    .alignmentGuide(.customCenter) { _ in 10 }
                Text("World")
                    .alignmentGuide(.customCenter) { _ in -10 }
            }
        }
    }

    extension VerticalAlignment {
        private enum CustomCenterAlignment: AlignmentID {
            static func defaultValue(in context: ViewDimensions) -> CGFloat {
                context[VerticalAlignment.center]
            }
        }

        static let customCenter = VerticalAlignment(CustomCenterAlignment.self)
    }
    """),

    // SwiftUI: Preference Keys for Layout Communication
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you use Preference Keys to communicate between child and parent views in SwiftUI?",
        answer: "Preference Keys allow child views to pass values up to parent views. This is useful when child views need to affect the parent's layout or other properties.",
        example: """
    struct SizePreferenceKey: PreferenceKey {
        static var defaultValue: CGSize = .zero
        static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
            value = nextValue()
        }
    }

    struct ChildView: View {
        var body: some View {
            GeometryReader { geometry in
                Color.red.preference(key: SizePreferenceKey.self, value: geometry.size)
            }
        }
    }

    struct ParentView: View {
        @State private var size: CGSize = .zero

        var body: some View {
            VStack {
                Text("Child Size: \\(size.width) x \\(size.height)")
                ChildView()
                    .onPreferenceChange(SizePreferenceKey.self) { size in
                        self.size = size
                    }
            }
        }
    }
    """),

    // SwiftUI: Custom Animations with MatchedGeometryEffect
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is `matchedGeometryEffect` in SwiftUI and how can you use it for smooth transitions?",
        answer: "`matchedGeometryEffect` creates smooth transitions by animating between two views that share the same geometry effect. It is used for animations across different parts of the UI.",
        example: """
    struct ContentView: View {
        @Namespace private var namespace
        @State private var isExpanded = false

        var body: some View {
            VStack {
                if isExpanded {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                        .matchedGeometryEffect(id: "shape", in: namespace)
                        .frame(width: 300, height: 300)
                } else {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                        .matchedGeometryEffect(id: "shape", in: namespace)
                        .frame(width: 100, height: 100)
                }

                Button("Toggle") {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
            }
        }
    }
    """),

    // SwiftUI: Handling Deep Links
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle deep links in a SwiftUI app?",
        answer: "Deep linking in SwiftUI can be handled by detecting URLs in the app's scene phase and then navigating to the appropriate view based on the URL content.",
        example: """
    struct ContentView: View {
        @State private var deepLinkID: String?

        var body: some View {
            NavigationView {
                VStack {
                    if let deepLinkID = deepLinkID {
                        Text("Navigated to item with ID: \\(deepLinkID)")
                    } else {
                        Text("Home")
                    }
                }
                .onOpenURL { url in
                    if let id = url.host {
                        deepLinkID = id
                    }
                }
            }
        }
    }
    """),

    // SwiftUI: Custom Container Views
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create a custom container view in SwiftUI?",
        answer: "You can create a custom container view by using a combination of `ForEach`, `HStack`, or `VStack`, and custom layout logic to arrange child views.",
        example: """
    struct CustomContainer<Content: View>: View {
        let content: () -> Content

        var body: some View {
            VStack {
                content()
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }

    struct ContentView: View {
        var body: some View {
            CustomContainer {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
        }
    }
    """),

    // SwiftUI: Custom View Transitions
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create custom view transitions in SwiftUI?",
        answer: "You can create custom view transitions by extending `AnyTransition` and defining a combination of move, scale, or opacity animations.",
        example: """
    struct ContentView: View {
        @State private var showDetail = false

        var body: some View {
            VStack {
                if showDetail {
                    Text("Details")
                        .transition(.customTransition)
                }

                Button("Toggle Details") {
                    withAnimation {
                        showDetail.toggle()
                    }
                }
            }
        }
    }

    extension AnyTransition {
        static var customTransition: AnyTransition {
            AnyTransition.move(edge: .bottom).combined(with: .opacity)
        }
    }
    """),
  ];
}