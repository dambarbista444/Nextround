import '../../Model/learning_topics.dart';
import 'package:next_round/Common Components/learner_type.dart';

class JavaTopics {
  static List<LearningDetail> learningDetails = [
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between JDK, JRE, and JVM?",
        answer: "JDK (Java Development Kit) is used to develop Java applications. It contains the JRE and development tools. JRE (Java Runtime Environment) provides libraries to run Java applications and includes the JVM. JVM (Java Virtual Machine) is the engine that runs the bytecode generated from Java programs.",
        example: """
  public class HelloWorld {
      public static void main(String[] args) {
          System.out.println("Hello, World!");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a Class in Java?",
        answer: "A class is a blueprint for creating objects. It defines the data (attributes) and behavior (methods) that the objects will have.",
        example: """
  class Car {
      String brand;
      int speed;

      void displayInfo() {
          System.out.println("Brand: " + brand + ", Speed: " + speed);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are Java access modifiers?",
        answer: "Java access modifiers control the visibility of class members. Common ones include: `public`: accessible from anywhere, `private`: accessible only within the class, `protected`: accessible within the same package or subclasses, and default: accessible within the same package.",
        example: """
  class Example {
      public int x = 10;   // accessible everywhere
      private int y = 20;  // accessible only within this class
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between `==` and `equals()` in Java?",
        answer: "`==` checks for reference equality (if two objects point to the same memory location), while `equals()` checks for value equality (if two objects have the same data).",
        example: """
  String str1 = new String("Java");
  String str2 = new String("Java");

  System.out.println(str1 == str2);       // false
  System.out.println(str1.equals(str2));  // true
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is an ArrayList in Java?",
        answer: "`ArrayList` is a resizable array that implements the `List` interface. It allows dynamic arrays and provides methods to manipulate the list.",
        example: """
  import java.util.ArrayList;

  ArrayList<String> list = new ArrayList<>();
  list.add("Apple");
  list.add("Banana");
  System.out.println(list);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between `ArrayList` and `LinkedList` in Java?",
        answer: "`ArrayList` stores elements in a dynamic array and provides faster access (O(1) for index-based retrieval), while `LinkedList` stores elements in a doubly-linked list and provides faster insertion and deletion (O(1) at the beginning/middle).",
        example: """
  ArrayList<Integer> arrayList = new ArrayList<>();
  LinkedList<Integer> linkedList = new LinkedList<>();
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Inheritance in Java?",
        answer: "Inheritance allows one class (subclass) to inherit fields and methods from another class (superclass), promoting code reuse.",
        example: """
  class Animal {
      void sound() {
          System.out.println("Animal sound");
      }
  }

  class Dog extends Animal {
      void sound() {
          System.out.println("Bark");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Polymorphism in Java?",
        answer: "Polymorphism allows one interface to be used for different data types. It can be achieved by method overriding or overloading.",
        example: """
  class Animal {
      void sound() {
          System.out.println("Animal sound");
      }
  }

  class Cat extends Animal {
      void sound() {
          System.out.println("Meow");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Abstraction in Java?",
        answer: "Abstraction is the concept of hiding the implementation details and showing only the functionality. It can be achieved using abstract classes and interfaces.",
        example: """
  abstract class Vehicle {
      abstract void drive();
  }

  class Car extends Vehicle {
      void drive() {
          System.out.println("Driving a car");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Encapsulation in Java?",
        answer: "Encapsulation is the bundling of data (variables) and methods that operate on the data into a single unit (class). It restricts access to certain fields using access modifiers.",
        example: """
  class Person {
      private String name;

      public String getName() {
          return name;
      }

      public void setName(String name) {
          this.name = name;
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between `throw` and `throws` in Java?",
        answer: "`throw` is used to explicitly throw an exception, while `throws` is used in method signatures to declare that the method might throw an exception.",
        example: """
  void checkAge(int age) throws Exception {
      if (age < 18) {
          throw new Exception("Not eligible");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the purpose of `try-catch` in Java?",
        answer: "`try-catch` blocks are used for handling exceptions. The code that might throw an exception is written inside the `try` block, and exceptions are handled in the `catch` block.",
        example: """
  try {
      int num = 10 / 0;
  } catch (ArithmeticException e) {
      System.out.println("Cannot divide by zero");
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between checked and unchecked exceptions?",
        answer: "Checked exceptions are checked at compile-time (e.g., `IOException`), while unchecked exceptions are checked at runtime (e.g., `NullPointerException`).",
        example: """
  try {
      FileReader file = new FileReader("file.txt");
  } catch (IOException e) {
      e.printStackTrace();
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a Constructor in Java?",
        answer: "A constructor is a special method that initializes objects. It is called when an object of a class is created. Constructors do not have a return type.",
        example: """
  class Car {
      String model;

      Car(String model) {
          this.model = model;
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are static methods in Java?",
        answer: "Static methods belong to the class rather than instances of the class. They can be called without creating an object of the class.",
        example: """
  class MathOperations {
      static int add(int a, int b) {
          return a + b;
      }
  }

  MathOperations.add(5, 10);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the purpose of `final` keyword in Java?",
        answer: "The `final` keyword is used to restrict the user. It can be used with variables, methods, and classes: `final` variable: cannot be modified, `final` method: cannot be overridden, `final` class: cannot be subclassed.",
        example: """
  final int MAX_AGE = 60;  // Constant variable
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a `HashMap` in Java?",
        answer: "`HashMap` is a collection class that stores key-value pairs. It allows fast retrieval based on the key and permits null keys and values.",
        example: """
  import java.util.HashMap;

  HashMap<String, Integer> map = new HashMap<>();
  map.put("Apple", 1);
  map.put("Banana", 2);
  System.out.println(map.get("Apple"));
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between `HashMap` and `Hashtable` in Java?",
        answer: "`HashMap` is not synchronized and permits null keys/values, while `Hashtable` is synchronized and does not permit null keys/values.",
        example: """
  HashMap<Integer, String> map = new HashMap<>();
  Hashtable<Integer, String> table = new Hashtable<>();
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a `Thread` in Java?",
        answer: "A `Thread` is a lightweight process that allows concurrent execution of code. Threads can be created by extending the `Thread` class or implementing the `Runnable` interface.",
        example: """
  class MyThread extends Thread {
      public void run() {
          System.out.println("Thread is running");
      }
  }

  public class Main {
      public static void main(String[] args) {
          MyThread t = new MyThread();
          t.start();  // Start the thread
      }
  }
  """
    ),
    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are the top Java Features?",
        answer: """
Java is one of the most famous and widely-used programming languages due to its many features, which include:

1. Simple: Java is easy to learn and has a clean syntax that makes development straightforward.
2. Platform Independent: Java is platform-independent, meaning you can run the same program on any software or hardware, getting the same result.
3. Interpreted: Java is both an interpreted and compiled language, giving flexibility in execution.
4. Robust: Java has strong memory management, garbage collection, and exception handling that make it reliable.
5. Object-Oriented: Java supports object-oriented programming (OOP), including the concepts of classes, objects, inheritance, encapsulation, and polymorphism.
6. Secured: Java ensures security as applications can be shared without exposing the actual code.
7. High Performance: Java is faster than other traditional interpreted languages.
8. Dynamic: Java supports dynamic loading of classes and interfaces.
9. Distributed: Java enables easy access to files and methods across machines on a network.
10. Multithreaded: Java handles multiple tasks simultaneously using threads.
11. Architecture Neutral: Java is architecture-independent, ensuring consistent results across different hardware.
""",
        example: """
  // Example of multithreading in Java
  class MyThread extends Thread {
      public void run() {
          System.out.println("Thread is running");
      }
  }

  public class Main {
      public static void main(String[] args) {
          MyThread t = new MyThread();
          t.start();  // Start the thread
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the purpose of the ‘static’ keyword in Java?",
        answer: "The `static` keyword is used to define class-level variables and methods that belong to the class rather than an instance of the class. Static methods can be called without creating an object, and static variables are shared among all instances of the class.",
        example: """
class Calculator {
    // Static variable
    static int counter = 0;

    // Static method
    static void incrementCounter() {
        counter++;
    }
}

public class Main {
    public static void main(String[] args) {
        Calculator.incrementCounter(); // Calling static method
        System.out.println(Calculator.counter); // Output: 1
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a package in Java?",
        answer: "A package in Java is a namespace that organizes classes and interfaces, helping to avoid name conflicts. Packages also control access levels and can contain classes, interfaces, sub-packages, and enumerations.",
        example: """
// Creating a package
package com.example;

// Using a package
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter your name: ");
        String name = sc.nextLine();
        System.out.println("Hello, " + name);
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is exception handling in Java?",
        answer: "Exception handling in Java is a mechanism to handle runtime errors. It uses `try`, `catch`, `finally`, and `throw`/`throws` keywords to manage exceptions and maintain normal application flow.",
        example: """
public class Main {
    public static void main(String[] args) {
        try {
            int result = 10 / 0; // Will throw ArithmeticException
        } catch (ArithmeticException e) {
            System.out.println("Cannot divide by zero!");
        } finally {
            System.out.println("Finally block executed");
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between an abstract class and an interface?",
        answer: "An abstract class can have both abstract and non-abstract methods and can maintain state using fields. An interface, on the other hand, can only have abstract methods (until Java 8), and all fields are implicitly public, static, and final.",
        example: """
// Abstract class
abstract class Animal {
    abstract void sound();
}

// Interface
interface Pet {
    void play();
}

class Dog extends Animal implements Pet {
    void sound() {
        System.out.println("Bark");
    }

    public void play() {
        System.out.println("Playing with ball");
    }
}

public class Main {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.sound();
        dog.play();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the final keyword in Java?",
        answer: "The `final` keyword in Java is used to restrict the user from changing variable values, extending classes, or overriding methods. It can be applied to variables, methods, and classes.",
        example: """
class Car {
    // Final variable
    final int maxSpeed = 120;

    // Final method
    final void drive() {
        System.out.println("Car is driving");
    }
}

// Final class
final class Bike {
    void ride() {
        System.out.println("Bike is riding");
    }
}

public class Main {
    public static void main(String[] args) {
        Car car = new Car();
        System.out.println("Max speed: " + car.maxSpeed);
        car.drive();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the use of the ‘super’ keyword in Java?",
        answer: "The `super` keyword in Java is used to refer to the parent class constructor or methods. It can be used to access parent class variables or methods that are overridden in the child class.",
        example: """
class Animal {
    String name = "Animal";

    void makeSound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    String name = "Dog";

    void makeSound() {
        super.makeSound(); // Calls parent class method
        System.out.println("Dog barks");
    }

    void printName() {
        System.out.println(super.name); // Accesses parent class variable
    }
}

public class Main {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.makeSound(); // Output: Animal makes a sound, Dog barks
        dog.printName(); // Output: Animal
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is polymorphism in Java?",
        answer: "Polymorphism in Java allows objects to be treated as instances of their parent class or interface. There are two types of polymorphism: compile-time (method overloading) and runtime (method overriding).",
        example: """
class Animal {
    void sound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    void sound() {
        System.out.println("Dog barks");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal myAnimal = new Dog(); // Polymorphism
        myAnimal.sound(); // Output: Dog barks
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is an interface in Java?",
        answer: "An interface in Java is a blueprint of a class. It can contain abstract methods and static constants. It is used to achieve abstraction and multiple inheritance.",
        example: """
interface Vehicle {
    void drive();
}

class Car implements Vehicle {
    public void drive() {
        System.out.println("Car is driving");
    }
}

public class Main {
    public static void main(String[] args) {
        Car car = new Car();
        car.drive();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a nested class in Java?",
        answer: "A nested class is a class defined within another class. Nested classes can be static or non-static. Static nested classes are like static members, while non-static nested classes have access to instance variables of the outer class.",
        example: """
class OuterClass {
    private String message = "Hello from the outer class";

    // Non-static nested class
    class InnerClass {
        void displayMessage() {
            System.out.println(message);
        }
    }
}

public class Main {
    public static void main(String[] args) {
        OuterClass outer = new OuterClass();
        OuterClass.InnerClass inner = outer.new InnerClass();
        inner.displayMessage(); // Output: Hello from the outer class
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "Which among String or StringBuffer should be preferred when there are a lot of updates required to be done in the data?",
        answer: "StringBuilder is preferred over StringBuffer when performance is a priority because it is faster. However, StringBuffer is used when thread safety is important since it is synchronized, whereas StringBuilder is not.",
        example: """
// Using StringBuffer for thread-safe string manipulations
public class StringBufferExample {
    public static void main(String[] args) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Hello");
        buffer.append(" ");
        buffer.append("World");
        System.out.println(buffer.toString()); // Output: Hello World
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "Why is StringBuffer called mutable?",
        answer: "StringBuffer is called mutable because its contents can be changed without creating new objects, unlike the immutable String class. This allows for more efficient string manipulation, especially when many modifications are required.",
        example: """
// Java Program to demonstrate the mutability of StringBuffer
public class StringBufferExample {
    public static void main(String[] args) {
        StringBuffer s = new StringBuffer();
        s.append("Geeks");
        s.append("for");
        s.append("Geeks");
        String message = s.toString();
        System.out.println(message); // Output: GeeksforGeeks
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between HashMap and TreeMap in Java?",
        answer: "HashMap is based on hashing, allowing constant-time performance for the basic operations (get and put), while TreeMap is based on a Red-Black tree structure, providing sorted keys but with logarithmic time complexity for operations.",
        example: """
import java.util.HashMap;
import java.util.TreeMap;

public class MapExample {
    public static void main(String[] args) {
        // HashMap Example
        HashMap<String, Integer> hashMap = new HashMap<>();
        hashMap.put("John", 25);
        hashMap.put("Doe", 30);
        System.out.println("HashMap: " + hashMap);

        // TreeMap Example
        TreeMap<String, Integer> treeMap = new TreeMap<>();
        treeMap.put("John", 25);
        treeMap.put("Doe", 30);
        System.out.println("TreeMap (Sorted): " + treeMap);
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does ConcurrentHashMap work in Java?",
        answer: "ConcurrentHashMap is a thread-safe variant of HashMap. It allows concurrent reads and updates without locking the entire map, dividing the map into segments and locking only one segment at a time to maintain performance under high concurrency.",
        example: """
import java.util.concurrent.ConcurrentHashMap;

public class ConcurrentHashMapExample {
    public static void main(String[] args) {
        ConcurrentHashMap<String, Integer> map = new ConcurrentHashMap<>();
        map.put("Alice", 10);
        map.put("Bob", 15);
        System.out.println("ConcurrentHashMap: " + map);

        // Updating a value
        map.putIfAbsent("Alice", 20);
        System.out.println("Updated Map: " + map);
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the volatile keyword in Java and how does it work?",
        answer: "The volatile keyword in Java is used to indicate that a variable's value may be changed by different threads. It ensures visibility of changes made by one thread to other threads by enforcing a happens-before relationship.",
        example: """
public class VolatileExample extends Thread {
    private volatile boolean running = true;

    public void run() {
        while (running) {
            System.out.println("Thread is running...");
        }
        System.out.println("Thread stopped.");
    }

    public void stopThread() {
        running = false;
    }

    public static void main(String[] args) throws InterruptedException {
        VolatileExample example = new VolatileExample();
        example.start();
        Thread.sleep(1000);
        example.stopThread();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Explain the difference between Executor and ExecutorService in Java.",
        answer: "Executor is a simple interface for executing tasks, while ExecutorService is a more complex subinterface that provides additional features such as shutting down the executor, submitting tasks, and returning results through futures.",
        example: """
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ExecutorExample {
    public static void main(String[] args) {
        ExecutorService executorService = Executors.newFixedThreadPool(2);

        Runnable task1 = () -> System.out.println("Executing Task 1");
        Runnable task2 = () -> System.out.println("Executing Task 2");

        executorService.submit(task1);
        executorService.submit(task2);

        executorService.shutdown();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between synchronized and ReentrantLock in Java?",
        answer: "The synchronized keyword automatically releases the lock once the block exits, whereas ReentrantLock allows for more flexibility such as tryLock, timed lock, and manually releasing the lock. ReentrantLock also provides more control over thread interruptions.",
        example: """
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class LockExample {
    private final Lock lock = new ReentrantLock();

    public void performTask() {
        lock.lock();
        try {
            System.out.println("Locked section, performing task...");
        } finally {
            lock.unlock();
        }
    }

    public static void main(String[] args) {
        LockExample example = new LockExample();
        example.performTask();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the importance of Serializable interface in Java?",
        answer: "The Serializable interface is a marker interface in Java used to indicate that a class can be serialized, i.e., its state can be converted into a byte stream. This is essential when sending objects over the network or saving them to a file.",
        example: """
import java.io.*;

class Person implements Serializable {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public String toString() {
        return name + " (" + age + ")";
    }
}

public class SerializationExample {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        // Serialize
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream("person.dat"));
        out.writeObject(new Person("Alice", 30));
        out.close();

        // Deserialize
        ObjectInputStream in = new ObjectInputStream(new FileInputStream("person.dat"));
        Person p = (Person) in.readObject();
        in.close();

        System.out.println("Deserialized Person: " + p);
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between checked and unchecked exceptions in Java?",
        answer: "Checked exceptions are checked at compile-time, meaning the programmer must handle them using try-catch blocks. Unchecked exceptions, derived from RuntimeException, are checked at runtime and do not require mandatory handling.",
        example: """
public class ExceptionExample {
    public static void main(String[] args) {
        // Checked Exception (must be handled)
        try {
            throw new Exception("Checked Exception");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        // Unchecked Exception (does not require handling)
        throw new RuntimeException("Unchecked Exception");
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does Java handle memory management with garbage collection?",
        answer: "Java uses an automatic garbage collection mechanism to manage memory. The JVM removes objects that are no longer reachable by the program, freeing memory and preventing memory leaks.",
        example: """
public class GarbageCollectionExample {
    public static void main(String[] args) {
        String str = new String("Garbage Collection Example");
        str = null;  // Eligible for garbage collection

        System.gc();  // Suggest garbage collection
        System.out.println("Garbage collection requested.");
    }

    @Override
    protected void finalize() {
        System.out.println("Garbage collection invoked.");
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a deadlock in Java and how can it be prevented?",
        answer: "Deadlock occurs when two or more threads are blocked forever, each waiting on the other to release a resource. It can be prevented using techniques such as ordering resource acquisition and using tryLock with a timeout.",
        example: """
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class DeadlockPreventionExample {
    private final Lock lock1 = new ReentrantLock();
    private final Lock lock2 = new ReentrantLock();

    public void task1() {
        if (lock1.tryLock() && lock2.tryLock()) {
            try {
                System.out.println("Task 1 completed.");
            } finally {
                lock1.unlock();
                lock2.unlock();
            }
        }
    }

    public void task2() {
        if (lock2.tryLock() && lock1.tryLock()) {
            try {
                System.out.println("Task 2 completed.");
            } finally {
                lock1.unlock();
                lock2.unlock();
            }
        }
    }

    public static void main(String[] args) {
        DeadlockPreventionExample example = new DeadlockPreventionExample();
        new Thread(example::task1).start();
        new Thread(example::task2).start();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the significance of the transient keyword in Java?",
        answer: "The transient keyword in Java is used to mark variables that should not be serialized. When an object is serialized, transient fields are ignored, which can be useful for security or performance reasons.",
        example: """
import java.io.*;

class Account implements Serializable {
    private String username;
    private transient String password;  // Won't be serialized

    public Account(String username, String password) {
        this.username = username;
        this.password = password;
    }

    @Override
    public String toString() {
        return username + " (" + password + ")";
    }
}

public class TransientExample {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        Account account = new Account("User1", "password123");

        // Serialize
        ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream("account.dat"));
        out.writeObject(account);
        out.close();

        // Deserialize
        ObjectInputStream in = new ObjectInputStream(new FileInputStream("account.dat"));
        Account deserializedAccount = (Account) in.readObject();
        in.close();

        // The password field will be null because it was marked as transient
        System.out.println("Deserialized Account: " + deserializedAccount);
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Explain the FailFast iterator and FailSafe iterator along with examples for each.",
        answer: "A FailFast iterator throws a ConcurrentModificationException if it detects that the underlying collection has been modified while the iterator is being used. On the other hand, a FailSafe iterator does not throw this exception, as it iterates over a snapshot of the collection.",
        example: """
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class IteratorsExample {
    public static void main(String[] args) {
        // FailFast Iterator
        HashMap<Integer, String> map = new HashMap<>();
        map.put(1, "one");
        map.put(2, "two");

        Iterator<Map.Entry<Integer, String>> iterator = map.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<Integer, String> entry = iterator.next();
            if (entry.getKey() == 1) {
                map.remove(1);  // This will throw a ConcurrentModificationException
            }
        }

        // FailSafe Iterator
        ConcurrentHashMap<Integer, String> concurrentMap = new ConcurrentHashMap<>();
        concurrentMap.put(1, "one");
        concurrentMap.put(2, "two");

        Iterator<Map.Entry<Integer, String>> concurrentIterator = concurrentMap.entrySet().iterator();
        while (concurrentIterator.hasNext()) {
            Map.Entry<Integer, String> entry = concurrentIterator.next();
            if (entry.getKey() == 1) {
                concurrentMap.remove(1);  // This will not throw an exception
            }
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Exception Handling?",
        answer: "Exception handling is a mechanism to handle runtime errors such as ClassNotFoundException, IOException, SQLException, etc. It allows the program to continue execution even if an error occurs.",
        example: """
public class ExceptionExample {
    public static void main(String[] args) {
        try {
            int result = 10 / 0;  // This will throw an ArithmeticException
        } catch (ArithmeticException e) {
            System.out.println("ArithmeticException caught: " + e.getMessage());
        } finally {
            System.out.println("Finally block is executed.");
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between a Checked Exception and an Unchecked Exception?",
        answer: "Checked exceptions are checked at compile time, whereas unchecked exceptions occur during runtime. Checked exceptions must be either handled using a try-catch block or declared in the method signature, while unchecked exceptions do not require this.",
        example: """
// Checked Exception
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class CheckedExceptionExample {
    public static void main(String[] args) {
        try {
            File file = new File("nonexistentfile.txt");
            FileReader fr = new FileReader(file);  // FileNotFoundException is a checked exception
        } catch (FileNotFoundException e) {
            System.out.println("FileNotFoundException caught: " + e.getMessage());
        }
    }
}

// Unchecked Exception
public class UncheckedExceptionExample {
    public static void main(String[] args) {
        int[] array = new int[2];
        System.out.println(array[3]);  // This will throw an ArrayIndexOutOfBoundsException
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a NullPointerException?",
        answer: "NullPointerException is a runtime exception in Java that occurs when an application attempts to use an object reference that has a null value.",
        example: """
public class NullPointerExample {
    public static void main(String[] args) {
        String str = null;
        try {
            System.out.println(str.length());  // This will throw a NullPointerException
        } catch (NullPointerException e) {
            System.out.println("NullPointerException caught: " + e.getMessage());
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is ArrayStoreException?",
        answer: "ArrayStoreException is thrown when you attempt to store the wrong type of object in an array of objects.",
        example: """
public class ArrayStoreExample {
    public static void main(String[] args) {
        Number[] numbers = new Double[2];
        try {
            numbers[0] = new Integer(10);  // This will throw an ArrayStoreException
        } catch (ArrayStoreException e) {
            System.out.println("ArrayStoreException caught: " + e.getMessage());
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Exception Propagation in Java?",
        answer: "Exception propagation refers to the process in which an exception is passed from the method where it occurred to its calling methods until it is caught, or it propagates to the JVM.",
        example: """
public class PropagationExample {
    static void method1() {
        int data = 50 / 0;  // This will throw ArithmeticException
    }

    static void method2() {
        method1();
    }

    static void method3() {
        try {
            method2();
        } catch (ArithmeticException e) {
            System.out.println("ArithmeticException caught in method3: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        method3();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between an Error and an Exception?",
        answer: "Errors are serious issues like OutOfMemoryError that a program cannot recover from, while exceptions are conditions that the program can handle through try-catch blocks or propagate back to the caller.",
        example: """
public class ErrorAndExceptionExample {
    public static void main(String[] args) {
        // Error (unrecoverable)
        try {
            int[] largeArray = new int[Integer.MAX_VALUE];  // This may throw OutOfMemoryError
        } catch (OutOfMemoryError e) {
            System.out.println("Error caught: " + e.getMessage());
        }

        // Exception (recoverable)
        try {
            int result = 10 / 0;  // This will throw ArithmeticException
        } catch (ArithmeticException e) {
            System.out.println("Exception caught: " + e.getMessage());
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Object Cloning in Java, and how do you achieve it?",
        answer: "Object cloning is the process of creating an exact copy of an object. To achieve cloning in Java, a class must implement the Cloneable interface, and the clone method from the Object class should be overridden.",
        example: """
class Person implements Cloneable {
    String name;
    int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public String toString() {
        return "Person{name='" + name + "', age=" + age + "}";
    }
}

public class CloningExample {
    public static void main(String[] args) throws CloneNotSupportedException {
        Person p1 = new Person("John", 25);
        Person p2 = (Person) p1.clone();

        System.out.println(p1);
        System.out.println(p2);
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What will happen if you put System.exit(0) in a try or catch block? Will the finally block execute?",
        answer: "If System.exit(0) is called in a try or catch block, the finally block will not be executed because the JVM will terminate the process before the finally block can run.",
        example: """
public class ExitExample {
    public static void main(String[] args) {
        try {
            System.out.println("Inside try block");
            System.exit(0);  // This will terminate the program
        } finally {
            System.out.println("This will not be executed");
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is multitasking in Java?",
        answer: "Multitasking in Java refers to the ability of a program to execute multiple tasks simultaneously. This is achieved by using threads, which are lightweight processes that enable concurrent execution within a single program.",
        example: """
  // Java program for multitasking
  public class MyThread extends Thread {
      public void run() {
          for (int i = 0; i < 10; i++) {
              System.out.println("Thread " + Thread.currentThread().getId() + ": " + i);
          }
      }
  }
  
  public class Main {
      public static void main(String[] args) {
          MyThread thread1 = new MyThread();
          MyThread thread2 = new MyThread();
          thread1.start();
          thread2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a multithreaded program in Java?",
        answer: "A multithreaded program in Java is one that runs multiple threads concurrently, allowing tasks to be processed simultaneously. This can improve the efficiency and performance of the program, especially on multi-core processors.",
        example: """
  public class MultithreadExample implements Runnable {
      @Override
      public void run() {
          System.out.println(Thread.currentThread().getName() + " is running");
      }

      public static void main(String[] args) {
          MultithreadExample task = new MultithreadExample();
          Thread thread1 = new Thread(task);
          Thread thread2 = new Thread(task);
          thread1.start();
          thread2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are the advantages of multithreading in Java?",
        answer: "Multithreading provides several advantages in Java, including increased responsiveness, efficient resource sharing, improved scalability, better communication between processes, and the utilization of multi-processor architecture.",
        example: """
  // Java multithreading example demonstrating responsiveness
  class ResponsiveApp extends Thread {
      public void run() {
          System.out.println("Thread " + Thread.currentThread().getId() + " is responsive.");
      }

      public static void main(String[] args) {
          ResponsiveApp t1 = new ResponsiveApp();
          t1.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are the two ways to create a thread in Java?",
        answer: "In Java, threads can be created in two ways: by extending the `Thread` class or by implementing the `Runnable` interface. Extending the `Thread` class provides a direct way to create a thread, while implementing `Runnable` is more flexible and allows for greater reuse of the class.",
        example: """
  // Example 1: Extending Thread class
  public class MyThread extends Thread {
      public void run() {
          System.out.println("Thread is running");
      }
  }

  // Example 2: Implementing Runnable interface
  public class MyRunnable implements Runnable {
      public void run() {
          System.out.println("Runnable thread is running");
      }

      public static void main(String[] args) {
          Thread thread1 = new MyThread();
          Thread thread2 = new Thread(new MyRunnable());
          thread1.start();
          thread2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a thread in Java?",
        answer: "A thread in Java is a lightweight subprocess that has its own call stack and local variables but shares memory with other threads. Threads allow a program to perform multiple tasks simultaneously without affecting each other's execution.",
        example: """
  class MyThread extends Thread {
      public void run() {
          System.out.println(Thread.currentThread().getName() + " is running");
      }
  }

  public class Main {
      public static void main(String[] args) {
          MyThread thread1 = new MyThread();
          thread1.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between a process and a thread?",
        answer: "A process is an independent unit of execution with its own memory space, while a thread is a lightweight subprocess that shares memory with other threads in the same process. Threads have faster context switching compared to processes and are more efficient in terms of communication.",
        example: """
  class ProcessThread extends Thread {
      public void run() {
          System.out.println(Thread.currentThread().getName() + " is running");
      }
  }

  public class Main {
      public static void main(String[] args) {
          ProcessThread thread1 = new ProcessThread();
          thread1.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Describe the life cycle of a thread in Java.",
        answer: "The life cycle of a thread in Java consists of five states: New, Runnable, Blocked, Waiting, and Terminated. A thread transitions through these states as it starts, runs, waits for resources, or completes its task.",
        example: """
  class MyThread extends Thread {
      public void run() {
          try {
              Thread.sleep(1000);  // Thread goes to waiting state
              System.out.println("Thread is running");
          } catch (InterruptedException e) {
              e.printStackTrace();
          }
      }
  }

  public class Main {
      public static void main(String[] args) {
          MyThread thread = new MyThread();
          thread.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Define Dynamic Method Dispatch.",
        answer: "Dynamic Method Dispatch is the process where the method call is executed during runtime. A reference variable is used to call the superclass method, and the actual method invoked is determined at runtime based on the object's type. This is also known as Run-Time Polymorphism.",
        example: """
class Animal {
    void sound() {
        System.out.println("Animal is making a sound");
    }
}

class Dog extends Animal {
    void sound() {
        System.out.println("Dog is barking");
    }
}

class Cat extends Animal {
    void sound() {
        System.out.println("Cat is meowing");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal a;

        a = new Dog();
        a.sound(); // Dog's sound method will be called

        a = new Cat();
        a.sound(); // Cat's sound method will be called
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Why is the delete function faster in a linked list than in an array?",
        answer: "In a linked list, the delete operation involves updating the pointers of the adjacent nodes, which is faster than shifting all the elements after the deleted element, as in an array.",
        example: """
class Node {
    int data;
    Node next;

    Node(int d) {
        data = d;
        next = null;
    }
}

public class LinkedList {
    Node head;

    void deleteNode(int key) {
        Node temp = head, prev = null;

        if (temp != null && temp.data == key) {
            head = temp.next; // Changed head
            return;
        }

        while (temp != null && temp.data != key) {
            prev = temp;
            temp = temp.next;
        }

        if (temp == null) return;
        prev.next = temp.next;
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Why are generics used in Java Programming?",
        answer: "Generics in Java provide compile-time type safety by allowing you to catch invalid types at compile time. They allow a method or class to operate on objects of various types while maintaining type safety.",
        example: """
import java.util.ArrayList;

public class GenericExample {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<>();
        list.add("Hello");
        list.add("World");
        
        // Without Generics, you could accidentally add an integer, causing runtime errors
        // Generics prevent this by ensuring type safety at compile time
        for (String s : list) {
            System.out.println(s);
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Explain the Externalizable interface in Java.",
        answer: "The Externalizable interface provides control over the serialization process. It allows developers to define custom readExternal and writeExternal methods to specify how an object's state is saved and restored.",
        example: """
import java.io.*;

class Employee implements Externalizable {
    String name;
    int age;

    public Employee() {}

    public Employee(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public void writeExternal(ObjectOutput out) throws IOException {
        out.writeObject(name);
        out.writeInt(age);
    }

    @Override
    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
        name = (String) in.readObject();
        age = in.readInt();
    }
}

public class ExternalizationExample {
    public static void main(String[] args) throws Exception {
        Employee emp = new Employee("John", 30);
        ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("employee.ser"));
        emp.writeExternal(oos);
        oos.close();

        ObjectInputStream ois = new ObjectInputStream(new FileInputStream("employee.ser"));
        Employee deserializedEmp = new Employee();
        deserializedEmp.readExternal(ois);
        System.out.println(deserializedEmp.name + " " + deserializedEmp.age);
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the Daemon Thread in Java?",
        answer: "A Daemon thread in Java is a low-priority thread that runs in the background to perform tasks such as garbage collection. It is created using the setDaemon() method, and the JVM automatically terminates it once all user threads are terminated.",
        example: """
public class DaemonThreadExample extends Thread {
    public void run() {
        if (Thread.currentThread().isDaemon()) {
            System.out.println("This is a Daemon thread");
        } else {
            System.out.println("This is a User thread");
        }
    }

    public static void main(String[] args) {
        DaemonThreadExample t1 = new DaemonThreadExample();
        DaemonThreadExample t2 = new DaemonThreadExample();
        
        t1.setDaemon(true); // Setting t1 as a daemon thread
        t1.start();
        t2.start();
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Explain the term enumeration in Java.",
        answer: "Enumeration (enum) in Java is used to define a set of constants. It allows a variable to be a set of predefined constants and improves type safety and readability in the code.",
        example: """
enum Day {
    MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY;
}

public class EnumExample {
    public static void main(String[] args) {
        Day day = Day.MONDAY;
        switch (day) {
            case MONDAY:
                System.out.println("Start of the week!");
                break;
            case FRIDAY:
                System.out.println("End of the week!");
                break;
            default:
                System.out.println("Mid-week day");
        }
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Can you run a code before executing the main method in Java?",
        answer: "Yes, you can execute code before the main method in Java using static blocks. Static blocks are executed when the class is loaded, even before the main method.",
        example: """
public class StaticBlockExample {
    static {
        System.out.println("Static block executed before main method.");
    }

    public static void main(String[] args) {
        System.out.println("Main method executed.");
    }
}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are the ways in which a thread can enter the waiting state?",
        answer: "A thread in Java can enter the waiting state in several ways: by calling `sleep()`, `wait()`, `join()`, waiting for I/O operations, or due to synchronization issues. These methods cause the thread to pause until the specified condition is met or an external signal is received, making it enter the waiting state.",
        example: """
  public class ThreadWaitingExample {

      public static void main(String[] args) throws InterruptedException {
          Thread t1 = new Thread(() -> {
              try {
                  Thread.sleep(2000); // Thread enters waiting state for 2 seconds
                  System.out.println("Thread woke up after sleeping");
              } catch (InterruptedException e) {
                  e.printStackTrace();
              }
          });

          t1.start();
          t1.join(); // Main thread waits for t1 to finish
          System.out.println("Main thread finished");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does multi-threading take place on a computer with a single CPU?",
        answer: "Java uses a technique called time-slicing to implement multi-threading on single-CPU systems. The CPU switches between threads in rapid succession, giving the appearance of parallel execution. The operating system schedules the threads, allocating each thread a time slice for execution, making it seem as though tasks are running concurrently.",
        example: """
  class MyThread extends Thread {
      public void run() {
          for (int i = 0; i < 5; i++) {
              System.out.println(Thread.currentThread().getId() + " running");
          }
      }
  }

  public class Main {
      public static void main(String[] args) {
          MyThread t1 = new MyThread();
          MyThread t2 = new MyThread();
          t1.start();
          t2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are the different types of thread priorities in Java, and what is the default priority assigned by JVM?",
        answer: "Thread priorities in Java range from 1 to 10, where 1 is the lowest priority and 10 is the highest. The JVM assigns a default priority of `NORM_PRIORITY` (5). The other priority levels are `MIN_PRIORITY` (1) and `MAX_PRIORITY` (10). The priority of a thread influences the order in which threads are scheduled for execution by the JVM.",
        example: """
  public class ThreadPriorityExample extends Thread {

      public void run() {
          System.out.println("Running thread: " + Thread.currentThread().getName() + " with priority: " + Thread.currentThread().getPriority());
      }

      public static void main(String[] args) {
          ThreadPriorityExample t1 = new ThreadPriorityExample();
          ThreadPriorityExample t2 = new ThreadPriorityExample();
          t1.setPriority(Thread.MIN_PRIORITY); // Set t1 to the lowest priority
          t2.setPriority(Thread.MAX_PRIORITY); // Set t2 to the highest priority
          t1.start();
          t2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Why is garbage collection necessary in Java?",
        answer: "Garbage collection in Java is essential for freeing up unused memory and preventing memory leaks. It automatically manages memory by removing unreferenced objects from the heap. This allows developers to focus on application logic instead of manual memory management, leading to more efficient memory use and preventing crashes due to memory leaks.",
        example: """
  public class GarbageCollectionExample {
      public static void main(String[] args) {
          GarbageCollectionExample obj = new GarbageCollectionExample();
          obj = null;  // Object becomes eligible for garbage collection
          System.gc();  // Request garbage collection
          System.out.println("Garbage collection requested");
      }

      @Override
      protected void finalize() throws Throwable {
          System.out.println("Garbage collector called.");
          super.finalize();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the drawback of garbage collection?",
        answer: "The main drawbacks of garbage collection are pauses in execution, unpredictability, and increased memory usage in programs with short-lived objects. Since garbage collection is non-deterministic, it can cause unpredictable pauses in the application, which may lead to performance issues and difficulty in debugging.",
        example: """
  public class GarbageCollectionPauseExample {
      public static void main(String[] args) {
          long startTime = System.currentTimeMillis();

          // Simulate memory allocation
          for (int i = 0; i < 1000000; i++) {
              String str = new String("Memory consuming object");
          }

          long endTime = System.currentTimeMillis();
          System.out.println("Time taken: " + (endTime - startTime) + "ms");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Define Dynamic Method Dispatch.",
        answer: "Dynamic method dispatch is a process where the method call is resolved at runtime instead of compile time. It allows Java to support method overriding by allowing a reference to a parent class to refer to a child class object and invoke overridden methods dynamically during runtime.",
        example: """
  class Parent {
      void display() {
          System.out.println("Parent class display");
      }
  }

  class Child extends Parent {
      void display() {
          System.out.println("Child class display");
      }
  }

  public class Main {
      public static void main(String[] args) {
          Parent obj = new Child();  // Dynamic dispatch
          obj.display();  // Calls Child's display method
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Why is the delete function faster in a linked list than in an array?",
        answer: "In a linked list, deletion is faster because it only requires updating the pointer to the next node. In contrast, an array requires shifting elements to fill the gap after deletion, which takes more time.",
        example: """
  class Node {
      int data;
      Node next;
      Node(int d) { data = d; next = null; }
  }

  class LinkedList {
      Node head;

      void delete(int key) {
          Node temp = head, prev = null;
          if (temp != null && temp.data == key) {
              head = temp.next; // Head deleted
              return;
          }
          while (temp != null && temp.data != key) {
              prev = temp;
              temp = temp.next;
          }
          if (temp == null) return;
          prev.next = temp.next; // Node deleted
      }
  }

  public class Main {
      public static void main(String[] args) {
          LinkedList list = new LinkedList();
          // Add elements to list
          list.delete(2);  // Deletion
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the Externalizable interface.",
        answer: "The `Externalizable` interface extends the `Serializable` interface and provides developers with control over the serialization process. Classes implementing `Externalizable` must define the methods `writeExternal()` and `readExternal()` to specify how the object should be serialized and deserialized.",
        example: """
  import java.io.*;

  class MyClass implements Externalizable {
      String name;
      int age;

      public void writeExternal(ObjectOutput out) throws IOException {
          out.writeObject(name);
          out.writeInt(age);
      }

      public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
          name = (String) in.readObject();
          age = in.readInt();
      }
  }

  public class Main {
      public static void main(String[] args) throws Exception {
          MyClass obj = new MyClass();
          obj.name = "John";
          obj.age = 30;

          // Serialization
          ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("data.txt"));
          oos.writeObject(obj);
          oos.close();

          // Deserialization
          ObjectInputStream ois = new ObjectInputStream(new FileInputStream("data.txt"));
          MyClass newObj = (MyClass) ois.readObject();
          System.out.println("Name: " + newObj.name + ", Age: " + newObj.age);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the difference between >> and >>> operators.",
        answer: "`>>` is the signed right shift operator that preserves the sign bit (positive or negative), whereas `>>>` is the unsigned right shift operator that fills the leftmost bits with zero, regardless of the sign.",
        example: """
  public class ShiftOperators {
      public static void main(String[] args) {
          int x = -8;
          System.out.println("Signed right shift: " + (x >> 2));  // Outputs -2
          System.out.println("Unsigned right shift: " + (x >>> 2));  // Outputs 1073741822
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Why are generics used in Java programming?",
        answer: "Generics are used to provide compile-time type safety and to avoid unnecessary casting. It allows you to define classes, methods, and interfaces with type parameters, enabling the reuse of code and reducing the chances of runtime errors.",
        example: """
  class GenericClass<T> {
      private T value;

      public void setValue(T value) {
          this.value = value;
      }

      public T getValue() {
          return value;
      }
  }

  public class Main {
      public static void main(String[] args) {
          GenericClass<Integer> intObj = new GenericClass<>();
          intObj.setValue(10);
          System.out.println(intObj.getValue());

          GenericClass<String> strObj = new GenericClass<>();
          strObj.setValue("Java");
          System.out.println(strObj.getValue());
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Can you run code before executing the main method in Java?",
        answer: "Yes, you can execute code before the main method using static blocks. Static blocks are executed when the class is loaded, even before the main method is called.",
        example: """
  class StaticBlockExample {
      static {
          System.out.println("Static block executed");
      }

      public static void main(String[] args) {
          System.out.println("Main method executed");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Differentiate between the Singly Linked List and Doubly Linked List.",
        answer: """
  A Singly Linked List and a Doubly Linked List are both types of linked data structures but differ in how they store pointers:

  - **Singly Linked List**: Each node contains data and a link (pointer) to the next node.
  - **Doubly Linked List**: Each node contains data, a pointer to the next node, and a pointer to the previous node.

  Key differences:
  - **Traversal**: Singly Linked List supports only forward traversal, while Doubly Linked List supports both forward and backward traversal.
  - **Memory**: Singly Linked List uses less memory as it stores one pointer, while Doubly Linked List requires more memory due to the extra pointer.
  - **Insertion/Deletion**: In a Singly Linked List, insertion and deletion have O(n) time complexity, whereas, in a Doubly Linked List, these operations are O(1) at the head or tail.
  """,
        example: """
  class SinglyLinkedListNode {
      int data;
      SinglyLinkedListNode next;
      SinglyLinkedListNode(int data) {
          this.data = data;
          this.next = null;
      }
  }

  class DoublyLinkedListNode {
      int data;
      DoublyLinkedListNode next, prev;
      DoublyLinkedListNode(int data) {
          this.data = data;
          this.next = this.prev = null;
      }
  }

  public class LinkedListDemo {
      public static void main(String[] args) {
          SinglyLinkedListNode sNode = new SinglyLinkedListNode(1);
          DoublyLinkedListNode dNode = new DoublyLinkedListNode(2);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Differentiate between FailFast and FailSafe.",
        answer: """
  FailFast and FailSafe are different iteration mechanisms in Java:

  - **FailFast**: Iterators immediately fail by throwing `ConcurrentModificationException` if the collection is modified during iteration.
  - **FailSafe**: Iterators don't fail and create a copy of the collection for iteration, allowing safe modifications.

  Key differences:
  - **Threading**: FailFast is typically used in single-threaded environments, while FailSafe is suitable for multithreaded environments.
  - **Performance**: FailFast is faster as it doesn't involve making copies of the collection, unlike FailSafe which is slower due to copying.
  """,
        example: """
  import java.util.HashMap;
  import java.util.Iterator;
  import java.util.concurrent.ConcurrentHashMap;

  public class IteratorDemo {
      public static void main(String[] args) {
          HashMap<Integer, String> failFastMap = new HashMap<>();
          failFastMap.put(1, "One");
          failFastMap.put(2, "Two");

          Iterator<Integer> failFastIterator = failFastMap.keySet().iterator();
          while (failFastIterator.hasNext()) {
              failFastMap.remove(1); // Causes ConcurrentModificationException
          }

          ConcurrentHashMap<Integer, String> failSafeMap = new ConcurrentHashMap<>();
          failSafeMap.put(1, "One");
          failSafeMap.put(2, "Two");

          Iterator<Integer> failSafeIterator = failSafeMap.keySet().iterator();
          while (failSafeIterator.hasNext()) {
              failSafeMap.remove(1); // No exception thrown
          }
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Differentiate between HashMap and TreeMap.",
        answer: """
  HashMap and TreeMap are both used to store key-value pairs, but they differ in underlying implementation:

  - **HashMap**: Uses a hash table and does not maintain any order for its entries.
  - **TreeMap**: Uses a Red-Black Tree and maintains the natural order of its keys.

  Key differences:
  - **Performance**: HashMap is generally faster for retrieval, while TreeMap is slower as it needs to traverse the tree.
  - **Ordering**: HashMap has no order guarantee, whereas TreeMap keeps entries in sorted order.
  """,
        example: """
  import java.util.HashMap;
  import java.util.TreeMap;

  public class MapDemo {
      public static void main(String[] args) {
          HashMap<String, Integer> hashMap = new HashMap<>();
          hashMap.put("Apple", 1);
          hashMap.put("Banana", 2);

          TreeMap<String, Integer> treeMap = new TreeMap<>();
          treeMap.put("Apple", 1);
          treeMap.put("Banana", 2);

          System.out.println("HashMap: " + hashMap); // No specific order
          System.out.println("TreeMap: " + treeMap); // Sorted by key
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Differentiate between Queue and Deque.",
        answer: """
  Queue and Deque are both linear data structures, but they differ in how elements are inserted and removed:

  - **Queue**: Elements are added at the end and removed from the front (FIFO).
  - **Deque**: Elements can be added and removed from both ends.

  Key differences:
  - **Implementation**: Queue can be implemented using Arrays or LinkedLists, while Deque is often implemented using Circular Arrays or Doubly Linked Lists.
  - **Use Cases**: Queue is used for tasks like scheduling and buffering, while Deque can be used to implement both stacks and queues.
  """,
        example: """
  import java.util.LinkedList;
  import java.util.Deque;
  import java.util.Queue;

  public class QueueDequeDemo {
      public static void main(String[] args) {
          Queue<Integer> queue = new LinkedList<>();
          queue.add(1);
          queue.add(2);
          System.out.println("Queue: " + queue.poll()); // FIFO - Remove from front

          Deque<Integer> deque = new LinkedList<>();
          deque.addFirst(1);
          deque.addLast(2);
          System.out.println("Deque: " + deque.removeFirst()); // Remove from front
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Differentiate between HashSet and TreeSet.",
        answer: """
  HashSet and TreeSet are both implementations of the Set interface, but they differ in internal structure and behavior:

  - **HashSet**: Unordered, uses a hash table for storage.
  - **TreeSet**: Ordered, uses a Red-Black Tree for storage.

  Key differences:
  - **Null values**: HashSet allows null elements, but TreeSet does not.
  - **Performance**: HashSet is faster, while TreeSet maintains sorted order and is slower due to tree traversal.
  """,
        example: """
  import java.util.HashSet;
  import java.util.TreeSet;

  public class SetDemo {
      public static void main(String[] args) {
          HashSet<String> hashSet = new HashSet<>();
          hashSet.add("Apple");
          hashSet.add("Banana");

          TreeSet<String> treeSet = new TreeSet<>();
          treeSet.add("Apple");
          treeSet.add("Banana");

          System.out.println("HashSet: " + hashSet); // No specific order
          System.out.println("TreeSet: " + treeSet); // Sorted order
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the significance of `volatile` keyword in Java concurrency?",
        answer: """
  The `volatile` keyword in Java is used to indicate that a variable's value may be modified by multiple threads. It ensures visibility of changes to variables across threads by preventing the caching of the variable's value in thread-local memory. This ensures that all threads read the most recent value from main memory.

  However, `volatile` does not provide atomicity, meaning it won't protect complex operations like incrementing a counter, which requires atomic actions.
  """,
        example: """
  class VolatileExample {
      private volatile boolean running = true;

      public void run() {
          while (running) {
              System.out.println("Thread is running");
          }
      }

      public void stop() {
          running = false;
      }

      public static void main(String[] args) {
          VolatileExample example = new VolatileExample();
          Thread t = new Thread(() -> example.run());
          t.start();

          try {
              Thread.sleep(1000);
          } catch (InterruptedException e) {
              e.printStackTrace();
          }

          example.stop();
          System.out.println("Thread stopped");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of Double Checked Locking in Singleton Design Pattern.",
        answer: """
  Double Checked Locking is used in a Singleton pattern to avoid multiple threads creating instances simultaneously. This optimization ensures that the instance is only created when needed and avoids the overhead of acquiring locks every time the method is accessed.

  It first checks if the instance is `null`, acquires a lock, and checks again inside the synchronized block to create the instance if it's still `null`.
  """,
        example: """
  class Singleton {
      private static volatile Singleton instance;

      private Singleton() {}

      public static Singleton getInstance() {
          if (instance == null) {
              synchronized (Singleton.class) {
                  if (instance == null) {
                      instance = new Singleton();
                  }
              }
          }
          return instance;
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is `CompletableFuture` in Java, and how does it enhance concurrency?",
        answer: """
  `CompletableFuture` is a class introduced in Java 8 that represents a future result of an asynchronous computation. It provides methods to combine, chain, and compose asynchronous operations without blocking. This enables better concurrency management by allowing tasks to run asynchronously and complete at a later time.

  It's a key class in building non-blocking, asynchronous code, especially for complex workflows involving multiple tasks.
  """,
        example: """
  import java.util.concurrent.CompletableFuture;

  public class CompletableFutureExample {
      public static void main(String[] args) {
          CompletableFuture<String> future = CompletableFuture.supplyAsync(() -> {
              try {
                  Thread.sleep(1000); // Simulate long task
              } catch (InterruptedException e) {
                  e.printStackTrace();
              }
              return "Task Completed!";
          });

          future.thenAccept(result -> System.out.println(result));

          System.out.println("Main thread continues while task runs...");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is CopyOnWriteArrayList and when should you use it?",
        answer: """
  `CopyOnWriteArrayList` is a thread-safe variant of `ArrayList` where all mutative operations (add, set, remove, etc.) are performed by making a fresh copy of the underlying array. It is suitable for use cases where reads vastly outnumber writes, as it avoids locking during iteration but comes at the cost of higher memory usage during modification operations.
  """,
        example: """
  import java.util.concurrent.CopyOnWriteArrayList;

  public class CopyOnWriteArrayListExample {
      public static void main(String[] args) {
          CopyOnWriteArrayList<String> list = new CopyOnWriteArrayList<>();
          list.add("A");
          list.add("B");

          // Modify list while iterating
          for (String item : list) {
              System.out.println(item);
              list.add("C"); // No ConcurrentModificationException
          }

          System.out.println("Final list: " + list);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the Fork/Join Framework in Java, and how does it improve performance in parallel computing?",
        answer: """
  The Fork/Join Framework in Java is designed to speed up parallel processing by recursively breaking down tasks into smaller sub-tasks (forking) and then combining their results (joining). It leverages a work-stealing algorithm, allowing idle threads to "steal" work from busy threads, leading to better CPU utilization in parallel tasks.

  It is typically used for divide-and-conquer algorithms like recursive task decomposition.
  """,
        example: """
  import java.util.concurrent.RecursiveTask;
  import java.util.concurrent.ForkJoinPool;

  class SumTask extends RecursiveTask<Integer> {
      private final int[] numbers;
      private final int start, end;
      private static final int THRESHOLD = 10;

      SumTask(int[] numbers, int start, int end) {
          this.numbers = numbers;
          this.start = start;
          this.end = end;
      }

      @Override
      protected Integer compute() {
          if (end - start < THRESHOLD) {
              int sum = 0;
              for (int i = start; i < end; i++) {
                  sum += numbers[i];
              }
              return sum;
          } else {
              int mid = (start + end) / 2;
              SumTask leftTask = new SumTask(numbers, start, mid);
              SumTask rightTask = new SumTask(numbers, mid, end);
              leftTask.fork();
              int rightResult = rightTask.compute();
              int leftResult = leftTask.join();
              return leftResult + rightResult;
          }
      }
  }

  public class ForkJoinExample {
      public static void main(String[] args) {
          int[] numbers = new int[1000];
          for (int i = 0; i < numbers.length; i++) {
              numbers[i] = i + 1;
          }
          ForkJoinPool pool = new ForkJoinPool();
          SumTask task = new SumTask(numbers, 0, numbers.length);
          int sum = pool.invoke(task);
          System.out.println("Total sum: " + sum);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is `ReentrantLock` and how is it different from `synchronized`?",
        answer: """
  `ReentrantLock` is a more flexible locking mechanism than the built-in `synchronized` block in Java. It allows more control over the lock acquisition and release process, including interruptible and non-blocking lock acquisition.

  Unlike `synchronized`, `ReentrantLock` supports:
  - Waiting for a lock with a timeout.
  - Interrupting a thread waiting for a lock.
  - Fair locking (ensuring first-come-first-serve order).
  """,
        example: """
  import java.util.concurrent.locks.ReentrantLock;

  public class ReentrantLockExample {
      private final ReentrantLock lock = new ReentrantLock();

      public void performTask() {
          lock.lock();
          try {
              System.out.println(Thread.currentThread().getName() + " is executing the task");
          } finally {
              lock.unlock();
          }
      }

      public static void main(String[] args) {
          ReentrantLockExample example = new ReentrantLockExample();
          Runnable task = example::performTask;

          Thread t1 = new Thread(task, "Thread-1");
          Thread t2 = new Thread(task, "Thread-2");

          t1.start();
          t2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the role of `Phaser` in Java concurrency?",
        answer: """
  `Phaser` is a synchronization barrier in Java that allows multiple threads to wait for each other to reach a common execution point, similar to `CyclicBarrier` and `CountDownLatch`. However, unlike these classes, `Phaser` supports multiple phases of synchronization and dynamic registration of threads.

  It is useful in tasks that need to run in multiple steps (phases), allowing the number of participants to change dynamically.
  """,
        example: """
  import java.util.concurrent.Phaser;

  public class PhaserExample {
      public static void main(String[] args) {
          Phaser phaser = new Phaser(1); // Register main thread
          for (int i = 0; i < 3; i++) {
              int threadId = i;
              phaser.register();
              new Thread(() -> {
                  System.out.println("Thread-" + threadId + " reached phase 1");
                  phaser.arriveAndAwaitAdvance();
                  System.out.println("Thread-" + threadId + " reached phase 2");
                  phaser.arriveAndDeregister();
              }).start();
          }

          System.out.println("Main thread waiting at phase 1");
          phaser.arriveAndAwaitAdvance();
          System.out.println("Main thread finished");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is `AtomicInteger` and how is it used in concurrent programming?",
        answer: """
  `AtomicInteger` is a class in the `java.util.concurrent.atomic` package that provides a way to perform atomic operations on integers. It ensures that operations like incrementing, decrementing, or comparing integers are thread-safe without needing to use synchronization. `AtomicInteger` is often used in scenarios where a shared integer value needs to be modified by multiple threads concurrently.
  """,
        example: """
  import java.util.concurrent.atomic.AtomicInteger;

  public class AtomicIntegerExample {
      private static AtomicInteger count = new AtomicInteger(0);

      public static void main(String[] args) {
          Runnable task = () -> {
              for (int i = 0; i < 1000; i++) {
                  count.incrementAndGet();  // Thread-safe increment
              }
          };

          Thread t1 = new Thread(task);
          Thread t2 = new Thread(task);

          t1.start();
          t2.start();

          try {
              t1.join();
              t2.join();
          } catch (InterruptedException e) {
              e.printStackTrace();
          }

          System.out.println("Final count: " + count.get());
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does `ReadWriteLock` improve performance in concurrent systems?",
        answer: """
  `ReadWriteLock` in Java allows multiple threads to read a shared resource simultaneously but only one thread to write to the resource. This improves performance in systems where read operations are much more frequent than write operations. By allowing concurrent reads and ensuring exclusive access for writes, `ReadWriteLock` enhances the scalability and efficiency of a concurrent system.
  """,
        example: """
  import java.util.concurrent.locks.ReentrantReadWriteLock;

  public class ReadWriteLockExample {
      private final ReentrantReadWriteLock rwLock = new ReentrantReadWriteLock();
      private int value = 0;

      public void write(int newValue) {
          rwLock.writeLock().lock();
          try {
              value = newValue;
              System.out.println("Value written: " + value);
          } finally {
              rwLock.writeLock().unlock();
          }
      }

      public void read() {
          rwLock.readLock().lock();
          try {
              System.out.println("Value read: " + value);
          } finally {
              rwLock.readLock().unlock();
          }
      }

      public static void main(String[] args) {
          ReadWriteLockExample example = new ReadWriteLockExample();

          Runnable writer = () -> example.write(42);
          Runnable reader = example::read;

          Thread t1 = new Thread(writer);
          Thread t2 = new Thread(reader);
          Thread t3 = new Thread(reader);

          t1.start();
          t2.start();
          t3.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between `CyclicBarrier` and `CountDownLatch`?",
        answer: """
  `CyclicBarrier` and `CountDownLatch` are both synchronization constructs in Java but serve different purposes. `CyclicBarrier` allows a group of threads to wait for each other to reach a common execution point (a barrier) and can be reused after the barrier is broken. `CountDownLatch` is used to make one or more threads wait until a set of operations in other threads complete, and it cannot be reset once the countdown reaches zero.
  """,
        example: """
  import java.util.concurrent.CyclicBarrier;
  import java.util.concurrent.CountDownLatch;

  public class BarrierLatchExample {
      public static void main(String[] args) throws InterruptedException {
          CountDownLatch latch = new CountDownLatch(3);
          CyclicBarrier barrier = new CyclicBarrier(3);

          // Threads waiting on a CountDownLatch
          for (int i = 0; i < 3; i++) {
              new Thread(() -> {
                  System.out.println(Thread.currentThread().getName() + " waiting on latch");
                  latch.countDown();
              }).start();
          }

          latch.await();
          System.out.println("All tasks done, latch released");

          // Threads waiting on a CyclicBarrier
          for (int i = 0; i < 3; i++) {
              new Thread(() -> {
                  try {
                      System.out.println(Thread.currentThread().getName() + " waiting at barrier");
                      barrier.await();
                  } catch (Exception e) {
                      e.printStackTrace();
                  }
              }).start();
          }
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are the use cases of `ConcurrentHashMap` over `HashMap` in a multi-threaded environment?",
        answer: """
  `ConcurrentHashMap` is designed for use in a multi-threaded environment where multiple threads can read and write concurrently without locking the entire map. Unlike `HashMap`, which is not thread-safe and requires external synchronization, `ConcurrentHashMap` uses fine-grained locking (bucket-level locking) to allow better concurrency and performance. It's used when high throughput and scalability are required for concurrent reads and writes.
  """,
        example: """
  import java.util.concurrent.ConcurrentHashMap;

  public class ConcurrentHashMapExample {
      private static ConcurrentHashMap<String, Integer> map = new ConcurrentHashMap<>();

      public static void main(String[] args) {
          map.put("A", 1);
          map.put("B", 2);

          Runnable writer = () -> {
              for (int i = 0; i < 5; i++) {
                  map.put(Thread.currentThread().getName(), i);
              }
          };

          Runnable reader = () -> {
              System.out.println(map);
          };

          Thread t1 = new Thread(writer, "Writer1");
          Thread t2 = new Thread(reader);

          t1.start();
          t2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Java NIO (Non-blocking I/O), and how is it different from traditional I/O?",
        answer: """
  Java NIO (New I/O) is a collection of APIs that provide more efficient, scalable I/O operations compared to traditional Java I/O. NIO is non-blocking, allowing a thread to perform other tasks while waiting for I/O operations to complete. It includes features like channels, buffers, and selectors to handle I/O more efficiently, especially in high-performance applications where large amounts of data need to be read or written.
  """,
        example: """
  import java.nio.ByteBuffer;
  import java.nio.channels.FileChannel;
  import java.io.RandomAccessFile;

  public class NIOExample {
      public static void main(String[] args) throws Exception {
          RandomAccessFile file = new RandomAccessFile("example.txt", "rw");
          FileChannel channel = file.getChannel();

          ByteBuffer buffer = ByteBuffer.allocate(48);
          int bytesRead = channel.read(buffer);

          while (bytesRead != -1) {
              buffer.flip();
              while (buffer.hasRemaining()) {
                  System.out.print((char) buffer.get());
              }
              buffer.clear();
              bytesRead = channel.read(buffer);
          }
          file.close();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the purpose of the `WeakHashMap` in Java, and when would you use it?",
        answer: """
  `WeakHashMap` is a special implementation of `Map` in which the keys are stored as weak references. This means that if a key is no longer referenced elsewhere in the program, it can be garbage collected, even if it still exists in the map. `WeakHashMap` is used in situations like caching, where you don't want keys to prevent garbage collection if they are no longer needed.
  """,
        example: """
  import java.util.WeakHashMap;

  public class WeakHashMapExample {
      public static void main(String[] args) {
          WeakHashMap<Object, String> weakMap = new WeakHashMap<>();
          Object key = new Object();
          weakMap.put(key, "Value");

          System.out.println("Before GC: " + weakMap);
          key = null;
          System.gc();
          System.out.println("After GC: " + weakMap);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain how encryption works in Java, particularly with the `Cipher` class.",
        answer: """
  Encryption in Java is facilitated by the `javax.crypto.Cipher` class, which provides functionality for encrypting and decrypting data using various algorithms like AES, DES, and RSA. The `Cipher` class allows developers to initialize the cipher in encryption or decryption mode, and it performs the transformation on byte data.
  """,
        example: """
  import javax.crypto.Cipher;
  import javax.crypto.KeyGenerator;
  import javax.crypto.SecretKey;

  public class EncryptionExample {
      public static void main(String[] args) throws Exception {
          KeyGenerator keyGen = KeyGenerator.getInstance("AES");
          SecretKey secretKey = keyGen.generateKey();

          Cipher cipher = Cipher.getInstance("AES");
          cipher.init(Cipher.ENCRYPT_MODE, secretKey);

          String plainText = "Hello, world!";
          byte[] encryptedBytes = cipher.doFinal(plainText.getBytes());

          System.out.println("Encrypted data: " + new String(encryptedBytes));
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the role of `EnumMap` in Java, and how does it differ from other `Map` implementations?",
        answer: """
  `EnumMap` is a specialized implementation of the `Map` interface designed for use with enum keys. It is more efficient than other `Map` implementations like `HashMap` or `TreeMap` when the keys are enum constants because it uses an array internally, making it both fast and memory efficient.
  """,
        example: """
  import java.util.EnumMap;

  public class EnumMapExample {
      enum Day {
          MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY
      }

      public static void main(String[] args) {
          EnumMap<Day, String> enumMap = new EnumMap<>(Day.class);
          enumMap.put(Day.MONDAY, "Start of work week");
          enumMap.put(Day.FRIDAY, "End of work week");

          System.out.println(enumMap);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the significance of `Java Memory Model` (JMM) in multithreaded environments?",
        answer: """
  The `Java Memory Model` (JMM) defines how threads interact through memory and how changes made by one thread are visible to other threads. It outlines the rules for visibility, ordering, and atomicity in a concurrent environment. The JMM is crucial in designing concurrent programs because it determines how the actions of threads (reads/writes to variables) are synchronized.
  """,
        example: """
  class MemoryModelExample {
      private static boolean flag = false;

      public static void main(String[] args) throws InterruptedException {
          Thread writerThread = new Thread(() -> flag = true);
          Thread readerThread = new Thread(() -> {
              while (!flag) {
                  // Busy-waiting, flag update might not be visible
              }
              System.out.println("Flag is now true!");
          });

          writerThread.start();
          readerThread.start();
          writerThread.join();
          readerThread.join();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of `Pessimistic Locking` and `Optimistic Locking` in Java.",
        answer: """
  `Pessimistic Locking` assumes that conflicts are likely, so it locks data preemptively to prevent other transactions from modifying it. This type of locking is common in traditional database systems.

  `Optimistic Locking` assumes that conflicts are rare and only checks for conflicts before committing the changes. If a conflict is detected, the transaction is rolled back and retried. `Optimistic Locking` is often used in Java with `version` fields to detect changes.
  """,
        example: """
  class OptimisticLockingExample {
      private static int version = 1;

      public static void main(String[] args) {
          // Simulate two threads updating the same record
          Thread t1 = new Thread(() -> updateRecord(1));
          Thread t2 = new Thread(() -> updateRecord(2));

          t1.start();
          t2.start();
      }

      private static void updateRecord(int newVersion) {
          if (version == 1) {
              version = newVersion;  // Simulate optimistic lock
              System.out.println("Record updated to version: " + newVersion);
          } else {
              System.out.println("Version conflict, cannot update.");
          }
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the `Fork/Join` framework in Java, and how does it work?",
        answer: """
  The `Fork/Join` framework in Java is designed for parallel processing and is part of the `java.util.concurrent` package. It is used to recursively split a task into smaller tasks and execute them in parallel across multiple threads. The framework works on the divide-and-conquer principle and is efficient for large tasks that can be broken down into smaller subtasks.
  """,
        example: """
  import java.util.concurrent.RecursiveTask;
  import java.util.concurrent.ForkJoinPool;

  class ForkJoinSumTask extends RecursiveTask<Long> {
      private final long[] numbers;
      private final int start;
      private final int end;
      private static final int THRESHOLD = 10;

      ForkJoinSumTask(long[] numbers, int start, int end) {
          this.numbers = numbers;
          this.start = start;
          this.end = end;
      }

      @Override
      protected Long compute() {
          if (end - start <= THRESHOLD) {
              long sum = 0;
              for (int i = start; i < end; i++) {
                  sum += numbers[i];
              }
              return sum;
          } else {
              int mid = (start + end) / 2;
              ForkJoinSumTask leftTask = new ForkJoinSumTask(numbers, start, mid);
              ForkJoinSumTask rightTask = new ForkJoinSumTask(numbers, mid, end);
              leftTask.fork();
              long rightResult = rightTask.compute();
              long leftResult = leftTask.join();
              return leftResult + rightResult;
          }
      }
  }

  public class ForkJoinExample {
      public static void main(String[] args) {
          long[] numbers = new long[1000];
          for (int i = 0; i < numbers.length; i++) {
              numbers[i] = i + 1;
          }
          ForkJoinPool forkJoinPool = new ForkJoinPool();
          ForkJoinSumTask task = new ForkJoinSumTask(numbers, 0, numbers.length);
          long result = forkJoinPool.invoke(task);
          System.out.println("Sum: " + result);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does `CompletableFuture` improve asynchronous programming in Java?",
        answer: """
  `CompletableFuture` is a powerful addition to Java's concurrency utilities. It provides a way to handle asynchronous tasks more easily and efficiently compared to `Future`. With `CompletableFuture`, you can chain tasks, handle exceptions, and even combine multiple asynchronous tasks. It supports non-blocking operations and can execute callbacks when the computation is complete.
  """,
        example: """
  import java.util.concurrent.CompletableFuture;

  public class CompletableFutureExample {
      public static void main(String[] args) {
          CompletableFuture<String> future = CompletableFuture.supplyAsync(() -> {
              try {
                  Thread.sleep(1000);
              } catch (InterruptedException e) {
                  e.printStackTrace();
              }
              return "Task completed!";
          });

          future.thenAccept(result -> System.out.println(result));

          System.out.println("Main thread continues...");
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the `CopyOnWriteArrayList` and its usage in a multithreaded environment.",
        answer: """
  `CopyOnWriteArrayList` is a thread-safe variant of `ArrayList` where all mutative operations like add, set, and remove result in a new copy of the list. This makes it ideal for situations where reads vastly outnumber writes because read operations do not require locking. However, it can be less efficient if there are many write operations since it creates a new copy of the list for every modification.
  """,
        example: """
  import java.util.List;
  import java.util.concurrent.CopyOnWriteArrayList;

  public class CopyOnWriteArrayListExample {
      public static void main(String[] args) {
          List<String> list = new CopyOnWriteArrayList<>();
          list.add("A");
          list.add("B");
          list.add("C");

          // Iterate through the list while modifying it
          for (String s : list) {
              System.out.println(s);
              list.add("D");  // This won't affect the current iteration
          }

          System.out.println("Final List: " + list);
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a `ReentrantLock` in Java, and how does it differ from `synchronized`?",
        answer: """
  A `ReentrantLock` is a lock provided by the `java.util.concurrent.locks` package that offers more flexibility than the `synchronized` keyword. It allows for more advanced locking techniques, such as timed and interruptible locking. Unlike `synchronized`, `ReentrantLock` allows you to manually lock and unlock, check if a lock is available, and set fairness policies.
  """,
        example: """
  import java.util.concurrent.locks.Lock;
  import java.util.concurrent.locks.ReentrantLock;

  public class ReentrantLockExample {
      private final Lock lock = new ReentrantLock();

      public void printNumbers() {
          lock.lock();
          try {
              for (int i = 1; i <= 5; i++) {
                  System.out.println(Thread.currentThread().getName() + ": " + i);
              }
          } finally {
              lock.unlock();
          }
      }

      public static void main(String[] args) {
          ReentrantLockExample example = new ReentrantLockExample();
          Thread t1 = new Thread(example::printNumbers);
          Thread t2 = new Thread(example::printNumbers);

          t1.start();
          t2.start();
      }
  }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does the `Phaser` class differ from `CountDownLatch` and `CyclicBarrier`?",
        answer: """
  The `Phaser` class is a more flexible synchronization tool compared to `CountDownLatch` and `CyclicBarrier`. Unlike `CountDownLatch`, it allows threads to register and deregister dynamically. Unlike `CyclicBarrier`, it supports multiple phases of synchronization. It is ideal for tasks with a variable number of parties and for those that require multiple synchronization points.
  """,
        example: """
  import java.util.concurrent.Phaser;

  public class PhaserExample {
      public static void main(String[] args) {
          Phaser phaser = new Phaser(1);  // Register main thread

          for (int i = 0; i < 3; i++) {
              int workerId = i;
              phaser.register();  // Register a new worker thread
              new Thread(() -> {
                  System.out.println("Worker " + workerId + " before phase 1");
                  phaser.arriveAndAwaitAdvance();  // Wait for phase 1 to complete
                  System.out.println("Worker " + workerId + " after phase 1");
                  phaser.arriveAndDeregister();  // Complete and deregister
              }).start();
          }

          phaser.arriveAndAwaitAdvance();  // Main thread waits for phase 1
          System.out.println("Main thread continues...");
          phaser.arriveAndDeregister();  // Deregister main thread
      }
  }
  """
    )
  ];
}
