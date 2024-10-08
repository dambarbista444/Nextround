import '../../Model/learning_topics.dart';
import 'package:next_round/Common Components/learner_type.dart';

class PythonTopics {
  static List<LearningDetail> learningDetails = [

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is Python, and what are its key features?",
  answer: """
  Python is a high-level, interpreted programming language known for its simplicity and readability. Key features of Python include:
  - Easy-to-read syntax
  - Dynamically typed
  - Extensive standard libraries
  - Cross-platform support
  - Large community and third-party libraries
  """,
  example: """
  # Example: Simple Python program
  print("Hello, World!")
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are Python’s built-in data types?",
  answer: """
  Python has several built-in data types:
  - Numeric Types: int, float, complex
  - Sequence Types: list, tuple, range
  - Text Type: str (string)
  - Mapping Type: dict (dictionary)
  - Set Types: set, frozenset
  - Boolean Type: bool
  """,
  example: """
  # Example: Different data types in Python
  my_int = 5
  my_float = 3.14
  my_str = "Hello"
  my_list = [1, 2, 3]
  my_dict = {"key": "value"}
  print(type(my_int), type(my_float), type(my_str), type(my_list), type(my_dict))
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you handle exceptions in Python?",
  answer: "You handle exceptions in Python using the try-except block. If an error occurs inside the try block, the code jumps to the except block.",
  example: """
  # Example: Handling exceptions in Python
  try:
      num = int(input("Enter a number: "))
      print(10 / num)
  except ZeroDivisionError:
      print("Cannot divide by zero!")
  except ValueError:
      print("Invalid input!")
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is a list in Python?",
  answer: """
  A list in Python is an ordered collection of elements that can be of different data types. Lists are mutable, meaning you can modify their elements.
  """,
  example: """
  # Example: List in Python
  my_list = [1, 2, 3, "apple", True]
  print(my_list)
  my_list.append("banana")
  print(my_list)
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is a dictionary in Python?",
  answer: """
  A dictionary is an unordered collection of key-value pairs. Keys must be unique and immutable, while values can be any data type.
  """,
  example: """
  # Example: Dictionary in Python
  my_dict = {"name": "John", "age": 25, "city": "New York"}
  print(my_dict["name"])
  my_dict["age"] = 26
  print(my_dict)
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are Python decorators?",
  answer: """
  Python decorators are a way to modify the behavior of a function or method. Decorators are applied using the @decorator_name syntax.
  """,
  example: """
  # Example: Simple decorator in Python
  def my_decorator(func):
      def wrapper():
          print("Something before the function.")
          func()
          print("Something after the function.")
      return wrapper

  @my_decorator
  def say_hello():
      print("Hello!")

  say_hello()
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the difference between a list and a tuple?",
  answer: """
  The main difference between a list and a tuple is that a list is mutable (can be modified), whereas a tuple is immutable (cannot be modified after creation).
  """,
  example: """
  # Example: List vs Tuple
  my_list = [1, 2, 3]
  my_tuple = (1, 2, 3)

  my_list[0] = 10  # Allowed
  # my_tuple[0] = 10  # This will raise an error because tuples are immutable
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the use of `self` in Python classes?",
  answer: """
  `self` refers to the instance of the class and is used to access variables and methods that belong to the class. It is always the first parameter in methods defined within a class.
  """,
  example: """
  # Example: Using `self` in a class
  class MyClass:
      def __init__(self, name):
          self.name = name

      def greet(self):
          print(f"Hello, {self.name}!")

  obj = MyClass("Alice")
  obj.greet()
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is list comprehension in Python?",
  answer: """
  List comprehension is a concise way to create lists by applying an expression to each item in an iterable, often combined with a conditional.
  """,
  example: """
  # Example: List comprehension in Python
  numbers = [1, 2, 3, 4, 5]
  squares = [x ** 2 for x in numbers]
  print(squares)
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is a lambda function in Python?",
  answer: """
  A lambda function is a small anonymous function defined using the `lambda` keyword. It can take any number of arguments but has only one expression.
  """,
  example: """
  # Example: Lambda function in Python
  add = lambda x, y: x + y
  print(add(5, 3))
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you open a file in Python?",
  answer: """
  You can open a file in Python using the built-in `open()` function. The `open()` function requires a filename and a mode (e.g., 'r' for reading, 'w' for writing).
  """,
  example: """
  # Example: Opening and reading a file in Python
  with open('example.txt', 'r') as file:
      content = file.read()
      print(content)
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are the common file access modes in Python?",
  answer: """
  Common file access modes include:
  - 'r' - Read (default mode)
  - 'w' - Write (creates a new file or overwrites the existing one)
  - 'a' - Append (writes at the end of the file)
  - 'rb' - Read binary
  - 'wb' - Write binary
  """,
  example: """
  # Example: Writing to a file in Python
  with open('output.txt', 'w') as file:
      file.write('Hello, World!')
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the purpose of `with` statement when working with files?",
  answer: """
  The `with` statement is used to wrap the execution of a block of code. When used with file operations, it ensures that the file is properly closed after its block of code is executed.
  """,
  example: """
  # Example: Using `with` statement to open a file
  with open('file.txt', 'r') as file:
      content = file.read()
      print(content)
  # No need to manually close the file
  """
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the `__init__` method in Python?",
  answer: """
  The `__init__` method in Python is called the constructor and is automatically invoked when an object is created. It is used to initialize an object’s attributes.
  """,
  example: """
  # Example: __init__ method in Python
  class Dog:
      def __init__(self, name, breed):
          self.name = name
          self.breed = breed

      def bark(self):
          print(f"{self.name} is barking!")

  dog = Dog("Max", "Golden Retriever")
  dog.bark()
  """
  ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are `*args` and `**kwargs` in Python?",
        answer: """
  `*args` allows you to pass a variable number of non-keyword arguments to a function, while `**kwargs` allows you to pass a variable number of keyword arguments.
  """,
        example: """
  # Example: Using `*args` and `**kwargs`

  def my_function(*args, **kwargs):
      for arg in args:
          print(f"Argument: {arg}")
      for key, value in kwargs.items():
          print(f"Keyword argument: {key} = {value}")

  my_function(1, 2, 3, name="Alice", age=30)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "Is indentation required in Python?",
        answer: """
  Yes, indentation is mandatory in Python and is used to define the structure of the code, such as blocks in functions, loops, and conditionals. Unlike other languages that use braces, Python relies on indentation for code organization.
  """,
        example: """
  # Example: Indentation in Python

  if True:
      print("Indented block")

  for i in range(3):
      print(i)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the scope of a variable in Python?",
        answer: """
  Scope refers to the region of the code where a variable is accessible. Python has the following types of variable scope:
  - Local Scope: Variables declared within a function and accessible only within that function.
  - Global Scope: Variables declared outside of all functions, accessible throughout the program.
  - Module-level Scope: Global objects accessible within the current module.
  - Outermost Scope: Built-in names that are accessible anywhere in the program.
  """,
        example: """
  # Example: Variable Scope in Python

  global_var = "Global Variable"

  def my_function():
      local_var = "Local Variable"
      print(local_var)

  my_function()  # Output: Local Variable
  print(global_var)  # Output: Global Variable
  """
    ),

    LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are modules in Python?",
  answer: """
  A module in Python is a file containing Python code (variables, functions, classes) that can be imported and used in other programs.
  """,
  example: """
  # Example: Creating and importing a module in Python

  # math_operations.py
  def add(a, b):
      return a + b

  def subtract(a, b):
      return a - b

  # main.py
  import math_operations
  result = math_operations.add(5, 3)
  print(result)
  """
  ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the `swapcase()` function in Python?",
        answer: """
  The `swapcase()` function in Python is used to convert all uppercase characters into lowercase and vice versa in a string. It returns a new string with swapped cases.
  """,
        example: """
  # Example: Using `swapcase()` in Python
  string = "ExampleString"
  swapped_string = string.swapcase()
  print(swapped_string)  # Output: eXAMPLEsTRING
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between a `for` loop and a `while` loop in Python?",
        answer: """
  The `for` loop is used to iterate through elements of a collection (e.g., lists, tuples, sets, dictionaries), where the start and end points are known. The `while` loop is used when only the end condition is known, and it runs until the condition becomes false.
  """,
        example: """
  # Example: `for` loop vs `while` loop in Python

  # Using `for` loop
  for i in range(5):
      print(i)

  # Using `while` loop
  i = 0
  while i < 5:
      print(i)
      i += 1
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "Can we pass a function as an argument in Python?",
        answer: """
  Yes, functions in Python are first-class objects, which means they can be passed as arguments to other functions, returned from a function, or assigned to variables.
  """,
        example: """
  # Example: Passing a function as an argument

  def greet(name):
      return f"Hello, {name}!"

  def call_function(func, value):
      return func(value)

  print(call_function(greet, "Alice"))  # Output: Hello, Alice!
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a dynamically typed language?",
        answer: """
  A dynamically typed language is one where the data type of a variable is determined at runtime. In these languages, you do not need to declare variable types explicitly. The interpreter assigns the data type to a variable based on its value during execution. Python is an example of a dynamically typed language.
  """,
        example: """
  # Example: Dynamic typing in Python

  x = 10        # Integer
  print(type(x))  # Output: <class 'int'>

  x = "Python"  # String
  print(type(x))  # Output: <class 'str'>
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are `break`, `continue`, and `pass` statements in Python?",
        answer: """
  - `break`: Terminates the current loop and resumes execution at the next statement.
  - `continue`: Skips the current iteration and moves to the next iteration of the loop.
  - `pass`: A placeholder statement that does nothing, used in areas where code is syntactically required but no action is needed.
  """,
        example: """
  # Example: break, continue, and pass in Python

  for i in range(5):
      if i == 3:
          break  # Loop terminates when i == 3
      print(i)

  for i in range(5):
      if i == 3:
          continue  # Skips the iteration when i == 3
      print(i)

  for i in range(5):
      if i == 3:
          pass  # Does nothing, just a placeholder
      print(i)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are the built-in data types in Python?",
        answer: """
  Python's built-in data types include:
  - **Numeric**: Integers, floating-point numbers, and complex numbers.
  - **Sequence Types**: Strings, lists, tuples, and ranges.
  - **Mapping Types**: Dictionaries.
  - **Set Types**: Sets and frozensets.
  - **Boolean Type**: Boolean values (True, False).
  """,
        example: """
  # Example: Built-in data types in Python

  x = 10             # Integer
  y = 3.14           # Float
  z = "Hello"        # String
  a = [1, 2, 3]      # List
  b = (4, 5, 6)      # Tuple
  c = {"key": "value"}  # Dictionary
  print(type(x), type(y), type(z), type(a), type(b), type(c))
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you floor a number in Python?",
        answer: """
  The `math.floor()` function in Python returns the largest integer less than or equal to a given number (i.e., the floor value). Similarly, `math.ceil()` returns the smallest integer greater than or equal to the number (i.e., the ceiling value).
  """,
        example: """
  import math

  # Example: Using `math.floor()` in Python
  print(math.floor(3.7))  # Output: 3
  print(math.ceil(3.7))   # Output: 4
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between `range` and `xrange`?",
        answer: """
  In Python 2, `range()` returns a list of numbers, while `xrange()` returns an iterator that generates numbers on demand. In Python 3, `range()` behaves like `xrange()` from Python 2, and `xrange()` has been removed.
  """,
        example: """
  # Example: Using `range()` in Python 3

  for i in range(1, 5):
      print(i)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is dictionary comprehension in Python?",
        answer: """
  Dictionary comprehension provides a concise way to create dictionaries in Python from an iterable. It follows the syntax `{key: value for element in iterable}`.
  """,
        example: """
  # Example: Dictionary comprehension

  squares = {x: x**2 for x in range(5)}
  print(squares)  # Output: {0: 0, 1: 1, 2: 4, 3: 9, 4: 16}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "Is tuple comprehension possible in Python?",
        answer: """
  Tuple comprehension is not directly possible in Python. Instead, if you use comprehension with parentheses, you will get a generator, not a tuple.
  """,
        example: """
  # Example: Generator comprehension, not tuple comprehension

  gen = (i for i in range(3))
  print(gen)  # Output: <generator object <genexpr> at 0x...>
  print(tuple(gen))  # Convert generator to tuple
  """
    ),


    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How is memory management handled in Python?",
        answer: """
  Memory management in Python is handled by the private heap space where all objects and data structures are stored. The Python interpreter manages this heap, and the memory is automatically handled by Python's built-in garbage collector. This garbage collector reclaims unused memory to free up space for future allocations.
  """,
        example: """
  # Example: Memory management in Python

  import gc

  class MemoryTest:
      def __del__(self):
          print("Object is being deleted")

  obj = MemoryTest()
  del obj  # Object will be garbage collected
  gc.collect()  # Explicit garbage collection
  """
    ),


    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a namespace in Python?",
        answer: """
  A namespace in Python is a system that ensures unique names for variables, functions, and objects to avoid conflicts. Python uses different namespaces like global, local, and built-in to organize and manage names in a program.
  """,
        example: """
  # Example: Namespace in Python

  global_var = "I'm global"

  def my_function():
      local_var = "I'm local"
      print(local_var)  # Accessing local variable

  my_function()
  print(global_var)  # Accessing global variable
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you achieve data abstraction in Python?",
        answer: """
  Data abstraction in Python can be achieved using abstract classes and interfaces. Abstract classes are classes that cannot be instantiated directly and must be subclassed. They define methods that must be implemented by derived classes, hiding the implementation details and providing a simple interface.
  """,
        example: """
  from abc import ABC, abstractmethod

  class Animal(ABC):
      @abstractmethod
      def sound(self):
          pass

  class Dog(Animal):
      def sound(self):
          return "Woof"

  dog = Dog()
  print(dog.sound())  # Output: Woof
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you delete a file using Python?",
        answer: """
  In Python, you can delete a file using the `os.remove()` or `os.unlink()` methods from the `os` module. Both methods delete the specified file from the filesystem.
  """,
        example: """
  import os

  # Example: Deleting a file in Python

  file_path = "sample.txt"
  if os.path.exists(file_path):
      os.remove(file_path)  # Deletes the file
      print(f"{file_path} deleted")
  else:
      print("File does not exist")
  """
    ),


    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is slicing in Python?",
        answer: """
  Slicing in Python is used to extract parts of sequences like lists, tuples, or strings. Using the slicing syntax, you can define where to start, where to stop, and the step for the slicing.
  """,
        example: """
  # Example: Slicing a list in Python

  my_list = [1, 2, 3, 4, 5, 6]
  sliced_list = my_list[1:5:2]  # Output: [2, 4]
  print(sliced_list)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is PIP in Python?",
        answer: """
  PIP stands for Python Installer Package. It is a tool used to install and manage Python packages from the Python Package Index (PyPI). You can install a package with a single command via the command line using PIP.
  """,
        example: """
  # Example: Installing a package using PIP

  # Command to install a package:
  # pip install requests

  import requests
  response = requests.get("https://api.github.com")
  print(response.status_code)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the zip function in Python?",
        answer: """
  The `zip()` function in Python takes multiple iterables (like lists or tuples) and aggregates them element-wise into tuples. It returns an iterator of tuples, where each tuple contains one element from each of the input iterables.
  """,
        example: """
  # Example: Using zip() in Python

  list1 = [1, 2, 3]
  list2 = ['a', 'b', 'c']
  zipped = zip(list1, list2)

  for item in zipped:
      print(item)  # Output: (1, 'a'), (2, 'b'), (3, 'c')
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are Pickling and Unpickling in Python?",
        answer: """
  Pickling in Python is the process of converting a Python object into a byte stream using the `pickle` module so it can be stored in a file or transferred over a network. Unpickling is the reverse process, where the byte stream is converted back into the original object.
  """,
        example: """
  import pickle

  # Example: Pickling and unpickling in Python

  data = {"name": "John", "age": 30}
  
  # Pickling
  with open("data.pickle", "wb") as f:
      pickle.dump(data, f)

  # Unpickling
  with open("data.pickle", "rb") as f:
      loaded_data = pickle.load(f)

  print(loaded_data)  # Output: {'name': 'John', 'age': 30}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is monkey patching in Python?",
        answer: """
  Monkey patching refers to dynamically changing or modifying the behavior of a class or module at runtime. This technique is used to alter or extend the functionality of existing code without modifying its source.
  """,
        example: """
  # Example: Monkey patching in Python

  class OriginalClass:
      def original_method(self):
          return "Original method"

  def patched_method(self):
      return "Patched method"

  # Patching the method at runtime
  OriginalClass.original_method = patched_method

  obj = OriginalClass()
  print(obj.original_method())  # Output: Patched method
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you implement multithreading in Python?",
        answer: """
  Multithreading in Python can be implemented using the `threading` module. It allows you to run multiple threads in parallel by defining a thread class or using the `Thread` class to create and start threads. Python threads run concurrently, sharing the same memory space.
  """,
        example: """
  import threading

  def print_numbers():
      for i in range(5):
          print(i)

  # Create and start a thread
  thread = threading.Thread(target=print_numbers)
  thread.start()

  # Wait for the thread to finish
  thread.join()
  print("Thread finished execution")
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between multiprocessing and multithreading in Python?",
        answer: """
  The key difference between multiprocessing and multithreading is that multiprocessing involves running separate processes that do not share the same memory, while multithreading runs multiple threads in the same process, sharing memory. Multiprocessing is useful for CPU-bound tasks, while multithreading is more suited for I/O-bound tasks.
  """,
        example: """
  import multiprocessing

  def print_square(num):
      print(f'Square: {num * num}')

  if __name__ == "__main__":
      p1 = multiprocessing.Process(target=print_square, args=(5,))
      p1.start()
      p1.join()
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you implement a RESTful API in Python?",
        answer: """
  You can implement a RESTful API in Python using frameworks like Flask or Django. Flask is a micro-framework that allows you to define API endpoints and return responses in JSON format, commonly used for lightweight APIs.
  """,
        example: """
  from flask import Flask, jsonify

  app = Flask(__name__)

  @app.route('/api/hello', methods=['GET'])
  def hello_world():
      return jsonify({'message': 'Hello, World!'})

  if __name__ == '__main__':
      app.run(debug=True)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you handle file storage in Python using JSON?",
        answer: """
  You can store data in JSON format using Python's built-in `json` module. JSON is commonly used for storing and transferring data, and it provides an easy way to serialize and deserialize Python objects to and from JSON format.
  """,
        example: """
  import json

  # Storing data in a JSON file
  data = {'name': 'Alice', 'age': 25}
  with open('data.json', 'w') as f:
      json.dump(data, f)

  # Reading data from a JSON file
  with open('data.json', 'r') as f:
      loaded_data = json.load(f)
  print(loaded_data)  # Output: {'name': 'Alice', 'age': 25}
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are Python decorators, and how are they used?",
        answer: """
  A Python decorator is a higher-order function that allows you to modify or extend the behavior of another function without changing its code. Decorators are applied using the `@` symbol and are often used for logging, access control, or modifying inputs and outputs.
  """,
        example: """
  def decorator(func):
      def wrapper():
          print("Before function call")
          func()
          print("After function call")
      return wrapper

  @decorator
  def hello():
      print("Hello, World!")

  hello()
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does Python's GIL (Global Interpreter Lock) affect concurrency?",
        answer: """
  Python's Global Interpreter Lock (GIL) is a mutex that allows only one thread to execute Python bytecode at a time. This limits CPU-bound multithreading in Python, meaning that CPU-bound tasks will not benefit from multithreading. For I/O-bound tasks, Python threads can still run concurrently.
  """,
        example: """
  import threading
  import time

  def cpu_bound_task():
      for _ in range(1000000):
          pass

  threads = []
  start_time = time.time()

  for _ in range(4):
      thread = threading.Thread(target=cpu_bound_task)
      threads.append(thread)
      thread.start()

  for thread in threads:
      thread.join()

  print(f"Execution time: {time.time() - start_time}")
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between shallow copy and deep copy in Python?",
        answer: """
  A shallow copy creates a new object but inserts references into it to the objects found in the original. A deep copy creates a new object and recursively copies all objects found in the original, meaning that changes to the deep-copied object will not affect the original.
  """,
        example: """
  import copy

  original_list = [[1, 2, 3], [4, 5, 6]]
  shallow_copy = copy.copy(original_list)
  deep_copy = copy.deepcopy(original_list)

  original_list[0][0] = 100

  print("Shallow copy:", shallow_copy)  # Affected by changes
  print("Deep copy:", deep_copy)  # Not affected by changes
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you securely store passwords in Python?",
        answer: """
  Storing passwords securely involves using hashing algorithms such as bcrypt or PBKDF2. These algorithms generate a cryptographic hash of the password, making it difficult to reverse-engineer the original password. The `bcrypt` library can be used to hash passwords securely.
  """,
        example: """
  import bcrypt

  # Hash a password
  password = b'securepassword'
  hashed = bcrypt.hashpw(password, bcrypt.gensalt())

  # Verify password
  if bcrypt.checkpw(password, hashed):
      print("Password is correct")
  else:
      print("Invalid password")
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a lambda function in Python, and when is it used?",
        answer: """
  A lambda function in Python is a small anonymous function defined with the `lambda` keyword. Lambda functions are typically used for short-term, simple operations that are passed as arguments to functions like `map()`, `filter()`, and `reduce()`.
  """,
        example: """
  # Lambda function to double a number
  double = lambda x: x * 2
  print(double(5))  # Output: 10

  # Using lambda with map()
  nums = [1, 2, 3, 4]
  doubled_nums = list(map(lambda x: x * 2, nums))
  print(doubled_nums)  # Output: [2, 4, 6, 8]
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a context manager in Python, and how is it used?",
        answer: """
  A context manager in Python is used to properly manage resources like file streams, network connections, or database connections. It is implemented using `with` blocks, which ensure that the resource is properly closed or cleaned up after use.
  """,
        example: """
  # Using a context manager to open a file
  with open('example.txt', 'w') as file:
      file.write("Hello, World!")
  # File is automatically closed after exiting the block
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the `map()` function in Python?",
        answer: """
  The `map()` function in Python applies a given function to all items in an iterable (like a list) and returns a map object (which can be converted to a list, set, etc.). It is often used to apply transformations or calculations across multiple elements.
  """,
        example: """
  # Using map to square numbers
  numbers = [1, 2, 3, 4]
  squared = list(map(lambda x: x**2, numbers))
  print(squared)  # Output: [1, 4, 9, 16]
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a Python generator, and how do you create one?",
        answer: """
  A generator in Python is a special type of iterator that yields values one at a time, using the `yield` keyword. Generators allow lazy evaluation, meaning they compute the next value only when requested, which saves memory.
  """,
        example: """
  def count_up_to(max_value):
      num = 1
      while num <= max_value:
          yield num
          num += 1

  counter = count_up_to(5)
  print(next(counter))  # Output: 1
  print(next(counter))  # Output: 2
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you implement logging in Python?",
        answer: """
  Python provides a `logging` module to record runtime events and messages, allowing you to monitor what happens in your code. You can log events at various severity levels (DEBUG, INFO, WARNING, ERROR, CRITICAL) to files or other outputs.
  """,
        example: """
  import logging

  logging.basicConfig(level=logging.INFO)
  logging.info("This is an informational message")
  logging.warning("This is a warning")
  logging.error("This is an error message")
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you reverse a list in Python?",
        answer: """
  A list can be reversed in Python using multiple methods. The most common approach is to use the `reverse()` method, or by using slicing. You can also use `reversed()` to return an iterator.
  """,
        example: """
  my_list = [1, 2, 3, 4]
  my_list.reverse()
  print(my_list)  # Output: [4, 3, 2, 1]

  # Using slicing
  my_list = [1, 2, 3, 4]
  print(my_list[::-1])  # Output: [4, 3, 2, 1]
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a closure in Python?",
        answer: """
  A closure in Python refers to a function object that retains access to variables from its enclosing lexical scope, even when the outer function has finished execution. Closures are often used for creating function factories or for data hiding.
  """,
        example: """
  def outer_function(message):
      def inner_function():
          print(message)
      return inner_function

  my_closure = outer_function("Hello, world!")
  my_closure()  # Output: Hello, world!
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a Python decorator and how is it useful?",
        answer: """
  A Python decorator is a function that takes another function as an argument and extends its behavior without modifying it directly. Decorators are often used for logging, access control, memoization, or timing.
  """,
        example: """
  def decorator_function(original_function):
      def wrapper_function():
          print("Before executing function")
          original_function()
          print("After executing function")
      return wrapper_function

  @decorator_function
  def display():
      print("Function is being executed")

  display()
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does Python handle memory management?",
        answer: """
  Python handles memory management using automatic garbage collection and reference counting. Memory is managed by Python's private heap, and the `gc` module controls the collection of unused objects. Reference counting is used to track the number of references to each object, and when the reference count drops to zero, the object is collected.
  """,
        example: """
  import gc

  class Example:
      def __init__(self):
          print("Object created")

  obj = Example()
  del obj  # Object becomes eligible for garbage collection
  gc.collect()  # Explicitly trigger garbage collection
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is list comprehension in Python, and how is it used?",
        answer: """
  List comprehension provides a concise way to create lists based on existing lists or iterables. It consists of brackets containing an expression followed by a `for` clause, optionally followed by `if` clauses to filter items.
  """,
        example: """
  numbers = [1, 2, 3, 4, 5]
  squared = [x**2 for x in numbers if x % 2 == 0]
  print(squared)  # Output: [4, 16]
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between a shallow copy and a deep copy in Python?",
        answer: """
  A shallow copy creates a new object but does not create copies of nested objects; it merely copies their references. A deep copy, on the other hand, creates a new object and recursively copies all objects inside it.
  """,
        example: """
  import copy

  original = [[1, 2, 3], [4, 5, 6]]
  shallow_copy = copy.copy(original)
  deep_copy = copy.deepcopy(original)

  original[0][0] = 99
  print("Shallow Copy:", shallow_copy)  # Shallow copy reflects changes
  print("Deep Copy:", deep_copy)  # Deep copy does not reflect changes
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between Python 2 and Python 3?",
        answer: """
  Python 2 is an older version of Python, now deprecated. The key differences include:
  - Print: Python 2 uses `print` as a statement, while Python 3 uses it as a function.
  - Division: In Python 2, dividing two integers yields an integer, while Python 3 uses true division.
  - Unicode: Python 3 uses Unicode strings by default, while Python 2 uses ASCII.
  """,
        example: """
  # Python 2: print "Hello, World!"
  # Python 3: print("Hello, World!")
  
  print(3/2)  # Python 3 output: 1.5, Python 2 output: 1 (unless using from __future__ import division)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you read and write files in Python?",
        answer: """
  In Python, you can read and write files using the `open()` function. You can specify the mode as 'r' (read), 'w' (write), or 'a' (append), and then use methods like `read()`, `write()`, or `readlines()` to interact with the file.
  """,
        example: """
  # Writing to a file
  with open('example.txt', 'w') as file:
      file.write("Hello, World!")

  # Reading from a file
  with open('example.txt', 'r') as file:
      content = file.read()
      print(content)
  """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you achieve thread synchronization in Python?",
        answer: """
  Thread synchronization in Python can be achieved using the `threading.Lock` class. Locks allow you to protect critical sections of code, ensuring that only one thread executes them at a time, preventing race conditions.
  """,
        example: """
  import threading

  lock = threading.Lock()

  def synchronized_task():
      with lock:
          # Critical section
          print("Thread is running")

  thread = threading.Thread(target=synchronized_task)
  thread.start()
  thread.join()
  """
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does Python's 'with' statement work with context managers?",
        answer: "The 'with' statement simplifies exception handling by encapsulating standard try/finally blocks in context managers. It ensures that resources like file streams or database connections are properly managed and closed.",
        example: '''
  with open('example.txt', 'w') as file:
      file.write('Hello, world!')

  # Equivalent to:
  # try:
  #     file = open('example.txt', 'w')
  #     file.write('Hello, world!')
  # finally:
  #     file.close()
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you create a thread-safe counter using Python's threading module?",
        answer: "You can create a thread-safe counter by using the `threading.Lock()` to synchronize access to shared resources. This prevents race conditions when multiple threads try to modify the same variable.",
        example: '''
  import threading

  counter = 0
  lock = threading.Lock()

  def increment_counter():
      global counter
      for _ in range(1000):
          with lock:
              counter += 1

  threads = []
  for _ in range(10):
      t = threading.Thread(target=increment_counter)
      threads.append(t)
      t.start()

  for t in threads:
      t.join()

  print(f'Final counter value: {counter}')  # Output: 10000
  '''
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you use the 'zip()' function in Python?",
        answer: "The 'zip()' function in Python combines elements from multiple iterables (lists, tuples, etc.) into tuples, pairing elements with the same index from each iterable.",
        example: '''
  list1 = [1, 2, 3]
  list2 = ['a', 'b', 'c']
  combined = zip(list1, list2)

  for pair in combined:
      print(pair)
  # Output:
  # (1, 'a')
  # (2, 'b')
  # (3, 'c')
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between 'is' and '==' operators in Python?",
        answer: "'is' checks for object identity, meaning it compares whether two references point to the same object in memory. '==' checks for value equality, comparing whether two objects have the same value.",
        example: '''
  list1 = [1, 2, 3]
  list2 = [1, 2, 3]
  print(list1 == list2)  # Output: True (same values)
  print(list1 is list2)  # Output: False (different objects)
  '''
    ),
    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How can you delete a file using Python?",
        answer: """
  In Python, you can delete a file using the `os.remove()` or `os.unlink()` methods from the `os` module. Both methods delete the specified file from the filesystem.
  """,
        example: """
  import os

  # Example: Deleting a file in Python

  file_path = "sample.txt"
  if os.path.exists(file_path):
      os.remove(file_path)  # Deletes the file
      print(f"{file_path} deleted")
  else:
      print("File does not exist")
  """
    ),


    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is slicing in Python?",
        answer: """
  Slicing in Python is used to extract parts of sequences like lists, tuples, or strings. Using the slicing syntax, you can define where to start, where to stop, and the step for the slicing.
  """,
        example: """
  # Example: Slicing a list in Python

  my_list = [1, 2, 3, 4, 5, 6]
  sliced_list = my_list[1:5:2]  # Output: [2, 4]
  print(sliced_list)
  """
    ),
    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Python's metaclass work?",
        answer: "A metaclass in Python defines the behavior of a class itself. While a class defines how an instance of the class behaves, a metaclass defines how the class behaves. By default, Python classes are instances of 'type', but you can customize class creation by defining a custom metaclass.",
        example: '''
  class Meta(type):
      def __new__(cls, name, bases, dct):
          print(f"Creating class {name}")
          return super().__new__(cls, name, bases, dct)

  class MyClass(metaclass=Meta):
      pass

  obj = MyClass()  # Output: Creating class MyClass
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Python's descriptors, and how are they used?",
        answer: "Descriptors in Python are objects that implement the descriptor protocol, which consists of methods like __get__, __set__, and __delete__. They allow you to customize the behavior of attribute access, making them useful for things like computed properties or custom data access patterns.",
        example: '''
  class Descriptor:
      def __get__(self, instance, owner):
          return instance.__dict__.get('value', None)

      def __set__(self, instance, value):
          instance.__dict__['value'] = value

  class MyClass:
      x = Descriptor()

  obj = MyClass()
  obj.x = 10
  print(obj.x)  # Output: 10
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the 'yield' keyword in Python, and how does it work with generators?",
        answer: "The 'yield' keyword in Python is used in a function to return a generator. It allows you to yield a value back to the caller, and the state of the function is preserved for resuming the execution from where it left off. This makes it memory efficient for handling large datasets.",
        example: '''
  def generator_function():
      for i in range(5):
          yield i

  gen = generator_function()
  for value in gen:
      print(value)
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Python handle circular references in garbage collection?",
        answer: "Python uses reference counting and a cyclic garbage collector to handle circular references. The garbage collector periodically looks for objects that reference each other but are not accessible from anywhere else in the program, and it breaks these reference cycles.",
        example: '''
  import gc

  class Node:
      def __init__(self, name):
          self.name = name
          self.ref = None

  a = Node("a")
  b = Node("b")
  a.ref = b
  b.ref = a  # Circular reference

  del a
  del b
  gc.collect()  # Breaks the circular reference
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Python's context managers, and how are they implemented?",
        answer: "Python's context managers are used to manage resources, such as file streams or database connections. They use the 'with' statement and implement __enter__ and __exit__ methods, which ensure proper resource acquisition and release.",
        example: '''
  class ResourceManager:
      def __enter__(self):
          print("Resource acquired")
          return self

      def __exit__(self, exc_type, exc_val, exc_tb):
          print("Resource released")

  with ResourceManager() as resource:
      print("Working with resource")
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How can you implement multithreading in Python using the 'concurrent.futures' module?",
        answer: "The 'concurrent.futures' module provides a high-level interface for asynchronously executing callables. The ThreadPoolExecutor class can be used to execute tasks in a thread pool.",
        example: '''
  from concurrent.futures import ThreadPoolExecutor

  def task(n):
      return f"Task {n} completed"

  with ThreadPoolExecutor(max_workers=3) as executor:
      futures = [executor.submit(task, i) for i in range(5)]

      for future in futures:
          print(future.result())
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Python's data classes, and how do they simplify object creation?",
        answer: "Data classes in Python (introduced in Python 3.7) automatically generate special methods like __init__, __repr__, and __eq__. They simplify class definitions when objects primarily store data.",
        example: '''
  from dataclasses import dataclass

  @dataclass
  class Person:
      name: str
      age: int

  p = Person(name="Alice", age=30)
  print(p)  # Output: Person(name='Alice', age=30)
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain Python's asyncio library and how it's used for concurrent programming.",
        answer: "asyncio is Python's library for writing concurrent code using async/await syntax. It provides support for asynchronous tasks, I/O-bound programs, and event loops. It is ideal for network-bound or I/O-bound tasks.",
        example: '''
  import asyncio

  async def say_hello():
      await asyncio.sleep(1)
      print("Hello, async world!")

  asyncio.run(say_hello())
  '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How is Python interpreted?",
        answer: "Python itself is not inherently interpreted or compiled; the interpreter or compiler used depends on the implementation. Python code is compiled into bytecode, a set of instructions that a virtual machine can understand. The Python interpreter, like CPython, runs this bytecode. When you run a Python file (.py), it is first compiled into a .pyc bytecode file, which the interpreter executes.",
        example: '''
    # Sample Python source code (example.py)
    def greet():
        return "Hello, Python!"

    # Python compiles example.py into bytecode and executes it using CPython.
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between .py and .pyc files?",
        answer: ".py files contain human-readable source code, while .pyc files contain bytecode, the compiled version of Python code. Python checks for .pyc files first before execution; if they exist, they are used directly to save compilation time. If they don't, the interpreter compiles the .py file into .pyc before execution.",
        example: '''
    # my_script.py (source code)
    print("Hello, World!")

    # After running, Python generates my_script.pyc (bytecode) for faster execution next time.
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the use of help() and dir() functions in Python?",
        answer: "help() provides documentation for Python modules, classes, and functions, while dir() lists the valid attributes or methods for an object. help() launches an interactive utility if no argument is passed, and dir() behaves differently depending on the object passed.",
        example: '''
    # Using help() to get documentation of a function
    help(len)

    # Using dir() to list attributes and methods of a module
    import math
    print(dir(math))  # Lists attributes of the math module
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is PYTHONPATH in Python?",
        answer: "PYTHONPATH is an environment variable used to add extra directories for Python to search for modules and packages during runtime. It allows developers to organize and import custom libraries without needing to install them globally.",
        example: '''
    # Example of setting PYTHONPATH on Unix-based systems:
    export PYTHONPATH=/home/user/my_python_libs

    # Example usage in a Python script:generators
    import my_custom_module  # Located in /home/user/my_python_libs
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between xrange and range in Python?",
        answer: "In Python 2.x, `xrange()` and `range()` are similar in functionality. `range()` returns a list of integers, while `xrange()` generates an `xrange` object, which produces values on the fly using less memory. This makes `xrange()` more memory-efficient when dealing with large ranges. In Python 3.x, `xrange()` is deprecated, and `range()` now behaves like `xrange()` in Python 2.x, generating values lazily without creating a list.",
        example: '''
    # Python 2.x Example
    for i in xrange(10):  # Generates numbers from 0 to 9 without storing them in memory
        print(i)  # Output: 0 1 2 3 4 5 6 7 8 9

    for i in xrange(1, 10):  # Generates numbers from 1 to 9
        print(i)  # Output: 1 2 3 4 5 6 7 8 9

    for i in xrange(1, 10, 2):  # Generates numbers from 1 to 9, skipping by 2
        print(i)  # Output: 1 3 5 7 9

    # Python 3.x Example
    for i in range(10):  # Behaves like xrange() from Python 2.x
        print(i)  # Output: 0 1 2 3 4 5 6 7 8 9
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you get indices of n maximum values in a NumPy array?",
        answer: "To get the indices of the n maximum values in a NumPy array, you can use the `np.argsort()` function, which returns the indices that would sort the array. You can then slice the last n indices to get the largest values.",
        example: '''
    import numpy as np

    arr = np.array([1, 3, 2, 7, 5])
    n = 2  # Number of maximum values
    # Get indices of n maximum values
    indices = np.argsort(arr)[-n:]
    print(indices)  # Output: [4, 3], indices of the two largest values (5, 7)
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How would you split a dataset into train_set and test_set in Python?",
        answer: "To split a dataset into `train_set` and `test_set`, you can use scikit-learn's `train_test_split()` function. This function will randomly divide your dataset into training and testing subsets based on the test size.",
        example: '''
    from sklearn.model_selection import train_test_split

    # Assuming res_set is your dataset
    res_set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    # Split res_set into 80% train_set and 20% test_set
    train_set, test_set = train_test_split(res_set, test_size=0.2, random_state=42)
    print("Train Set:", train_set)
    print("Test Set:", test_set)
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you import a decision tree classifier in sklearn?",
        answer: "To import the decision tree classifier in sklearn, you need to import it from the `tree` module of scikit-learn. The correct syntax is `from sklearn.tree import DecisionTreeClassifier`.",
        example: '''
    from sklearn.tree import DecisionTreeClassifier

    # Create an instance of DecisionTreeClassifier
    classifier = DecisionTreeClassifier()
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you access a publicly shared Google Spreadsheet in Python?",
        answer: "You can access a publicly shared Google Spreadsheet by using the URL and the pandas library. Replace the `/edit` part of the URL with `/export?format=csv`, then use `pd.read_csv()` to load the CSV data into a DataFrame.",
        example: '''
    import pandas as pd

    # URL of the Google Spreadsheet in CSV format
    url = "https://docs.google.com/spreadsheets/d/<your_sheet_id>/export?format=csv"
    # Load the dataset into a pandas DataFrame
    df = pd.read_csv(url)
    # Print the DataFrame
    print(df)
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between df['Name'] and df.loc[:, 'Name'] in pandas?",
        answer: "In pandas, both `df['Name']` and `df.loc[:, 'Name']` return a copy of the original DataFrame. They both produce the same result by retrieving the 'Name' column, but they differ slightly in the way they access the data internally.",
        example: '''
    import pandas as pd

    # Create a DataFrame
    df = pd.DataFrame({'Name': ['aa', 'bb', 'xx', 'uu'], 'Age': [21, 16, 50, 33]})
    # Access 'Name' column using two methods
    name_1 = df['Name']
    name_2 = df.loc[:, 'Name']
    print(name_1)  # Output: 'Name' column
    print(name_2)  # Output: 'Name' column
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How can you check whether a pandas DataFrame is empty or not?",
        answer: "You can use the `empty` attribute in pandas to check whether a DataFrame is empty. It returns True if the DataFrame has no elements (i.e., no rows or columns) and False otherwise.",
        example: '''
    import pandas as pd

    # Create an empty DataFrame
    df = pd.DataFrame()

    # Check if the DataFrame is empty
    if df.empty:
        print("The DataFrame is empty.")
    else:
        print("The DataFrame is not empty.")
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Write a code to sort a NumPy array by the (N-1)th column.",
        answer: "To sort a NumPy array by the last (N-1) column, you can use the `numpy.argsort()` function along with slicing. This allows sorting based on the last column's values.",
        example: '''
    import numpy as np

    # Sample 2D array
    arr = np.array([[1, 5, 3],
                    [4, 2, 9],
                    [7, 8, 6]])

    # Sort the array by the last (N-1) column
    sorted_arr = arr[arr[:, -1].argsort()]
    print(sorted_arr)
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create a Series from a list, NumPy array, and dictionary in pandas?",
        answer: "You can create a Pandas Series from a list, NumPy array, or dictionary using the `pd.Series()` constructor. A Series is a one-dimensional labeled array capable of holding any data type.",
        example: '''
    import pandas as pd
    import numpy as np

    # From a List
    my_list = [1, 2, 3, 4]
    series_from_list = pd.Series(my_list)
    print(series_from_list)

    # From a NumPy Array
    my_array = np.array([10, 20, 30, 40])
    series_from_array = pd.Series(my_array)
    print(series_from_array)

    # From a Dictionary
    my_dict = {'a': 1, 'b': 2, 'c': 3}
    series_from_dict = pd.Series(my_dict)
    print(series_from_dict)
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you get the items not common to both Series A and Series B?",
        answer: "To find the items not common to both Series A and Series B in pandas, you can use the `symmetric_difference()` function via the set() operations or combine `~isin()` with `append()`.",
        example: '''
    import pandas as pd

    # Example using symmetric_difference
    A = pd.Series([1, 2, 3, 4, 5])
    B = pd.Series([4, 5, 6, 7, 8])
    
    # Get items not common to both Series
    result = pd.Series(list(set(A).symmetric_difference(set(B))))
    print(result)

    # Example using ~isin() and append()
    result = A[~A.isin(B)].append(B[~B.isin(A)])
    print(result)
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you keep only the top two most frequent values and replace everything else as ‘other’ in a Series?",
        answer: "To keep only the top two most frequent values in a Series and replace all other values with 'Other', you can use the `value_counts()` method and `isin()`.",
        example: '''
    import pandas as pd
    import numpy as np

    # Input
    ser = pd.Series(np.random.randint(1, 5, [12]))

    # Solution
    print("Top 2 Freq:", ser.value_counts())
    ser[~ser.isin(ser.value_counts().index[:2])] = 'Other'
    print(ser)
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you find the positions of numbers that are multiples of three from a Series?",
        answer: "To find the positions of numbers that are multiples of three from a pandas Series, you can use the `np.argwhere()` function to return the indices where the condition is met.",
        example: '''
    import pandas as pd
    import numpy as np

    # Input
    ser = pd.Series(np.random.randint(1, 10, 7))

    # Solution
    print(ser)
    print(np.argwhere(ser % 3 == 0))
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does Python's 'with' statement work, and what is the purpose of context managers?",
        answer: "The `with` statement simplifies resource management by automatically handling the setup and teardown of resources like files or network connections. It ensures resources are properly released even if an error occurs. Context managers define `__enter__()` and `__exit__()` methods to manage resources.",
        example: '''
    # Example of using 'with' statement for file handling
    with open("example.txt", "w") as file:
        file.write("Hello, world!")

    # Custom context manager
    class MyContextManager:
        def __enter__(self):
            print("Entering the context...")
            return self

        def __exit__(self, exc_type, exc_val, exc_tb):
            print("Exiting the context...")

    with MyContextManager():
        print("Inside the context")
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are coroutines in Python, and how do they differ from generators?",
        answer: "Coroutines in Python are generalizations of generators that can pause and resume execution while also receiving input via the `send()` method. Unlike generators, coroutines are typically used for cooperative multitasking and asynchronous programming, as they allow bidirectional data flow.",
        example: '''
    # Coroutine example
    def my_coroutine():
        while True:
            x = (yield)
            print(f"Received: {x}")

    co = my_coroutine()
    next(co)  # Prime the coroutine
    co.send(10)  # Output: Received: 10
    co.send(20)  # Output: Received: 20
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does the GIL affect multi-threading in Python, and how can it be circumvented?",
        answer: "The Global Interpreter Lock (GIL) limits true concurrency in Python's multi-threading by allowing only one thread to execute Python bytecode at a time. This restricts CPU-bound tasks from achieving parallelism. To circumvent this, you can use multiprocessing or leverage libraries like NumPy that release the GIL during heavy computations.",
        example: '''
    import threading

    # Example of multi-threading in Python
    def task():
        for i in range(100000):
            pass

    thread1 = threading.Thread(target=task)
    thread2 = threading.Thread(target=task)

    thread1.start()
    thread2.start()

    thread1.join()
    thread2.join()

    print("Both threads completed.")
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the purpose of the 'asyncio' library in Python, and how does it work?",
        answer: "'asyncio' is a library in Python used to write asynchronous programs that can handle I/O-bound tasks more efficiently. It provides the ability to run coroutines concurrently using an event loop, which schedules and executes tasks when they're ready, avoiding blocking operations.",
        example: '''
    import asyncio

    async def task1():
        print("Task 1 started")
        await asyncio.sleep(1)
        print("Task 1 finished")

    async def task2():
        print("Task 2 started")
        await asyncio.sleep(2)
        print("Task 2 finished")

    async def main():
        await asyncio.gather(task1(), task2())

    asyncio.run(main())
    '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is memoization in Python, and how is it implemented?",
        answer: "Memoization is a technique used to optimize functions by storing the results of expensive function calls and returning the cached result when the same inputs occur again. In Python, memoization can be implemented manually or using the `functools.lru_cache` decorator, which provides a built-in mechanism for caching results.",
        example: '''
        from functools import lru_cache

        # Using lru_cache to memoize a Fibonacci function
        @lru_cache(maxsize=None)
        def fibonacci(n):
            if n < 2:
                return n
            return fibonacci(n-1) + fibonacci(n-2)

        print(fibonacci(10))  # Output: 55
        '''
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle deadlocks in Python multithreading?",
        answer: "Deadlocks occur in multithreading when two or more threads are waiting for each other to release resources. In Python, deadlocks can be avoided by using timeouts in `threading.Lock` or by carefully ordering the acquisition of locks using a `threading.Condition`. Python's `threading` module provides tools to manage threads and prevent deadlocks.",
        example: '''
        import threading

        # Example of using Lock with a timeout to prevent deadlock
        lock1 = threading.Lock()
        lock2 = threading.Lock()

        def thread1():
            with lock1:
                print("Thread 1 acquired lock1")
                if lock2.acquire(timeout=1):
                    print("Thread 1 acquired lock2")
                    lock2.release()
                lock1.release()

        def thread2():
            with lock2:
                print("Thread 2 acquired lock2")
                if lock1.acquire(timeout=1):
                    print("Thread 2 acquired lock1")
                    lock1.release()
                lock2.release()

        t1 = threading.Thread(target=thread1)
        t2 = threading.Thread(target=thread2)

        t1.start()
        t2.start()

        t1.join()
        t2.join()
        '''
    ),
  ];
}