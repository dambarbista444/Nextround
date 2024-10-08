import '../../Model/learning_topics.dart';
import 'package:next_round/Common Components/learner_type.dart';

class WebDevelopmentTopics {
  static List<LearningDetail> learningDetails = [

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is HTML, and what is its purpose?",
        answer: "HTML (HyperText Markup Language) is the standard language used to create web pages. It structures content by using tags, allowing browsers to interpret and display content properly.",
        example: '''
      <!-- Example: Simple HTML document -->
      <!DOCTYPE html>
      <html>
      <head>
          <title>My First Page</title>
      </head>
      <body>
          <h1>Hello, World!</h1>
      </body>
      </html>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is CSS, and how is it used?",
        answer: "CSS (Cascading Style Sheets) is used to style the appearance of web pages. It controls the layout, colors, fonts, and overall look of a website.",
        example: '''
      /* Example: Simple CSS */
      body {
          background-color: lightblue;
      }
      h1 {
          color: navy;
          text-align: center;
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is JavaScript, and how is it used in web development?",
        answer: "JavaScript is a programming language used to add interactivity to web pages. It runs in the browser and is often used to respond to user actions such as clicks, input validation, and dynamic content updates.",
        example: '''
      <!-- Example: JavaScript for interactivity -->
      <button onclick="sayHello()">Click Me</button>
      <script>
          function sayHello() {
              alert("Hello, World!");
          }
      </script>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are semantic HTML elements?",
        answer: "Semantic HTML elements clearly describe their meaning in a human- and machine-readable way. Examples include <article>, <section>, and <footer>.",
        example: '''
      <!-- Example: Semantic HTML -->
      <article>
          <h2>Introduction to Web Development</h2>
          <p>This article explains the basics of web development.</p>
      </article>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you create a form in HTML?",
        answer: "Forms in HTML are used to collect user input. It uses the <form> element and includes input fields like text boxes, checkboxes, radio buttons, and submit buttons.",
        example: '''
      <!-- Example: Simple HTML Form -->
      <form action="/submit" method="post">
          <label for="name">Name:</label>
          <input type="text" id="name" name="name">
          <input type="submit" value="Submit">
      </form>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the box model in CSS?",
        answer: "The CSS box model describes how elements are structured. It consists of margins, borders, padding, and the actual content.",
        example: '''
      /* Example: Box model in CSS */
      .box {
          width: 200px;
          padding: 10px;
          border: 5px solid black;
          margin: 20px;
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is responsive web design?",
        answer: "Responsive web design ensures that web pages look good on all devices. It uses flexible layouts, images, and media queries to adapt to different screen sizes.",
        example: '''
      /* Example: Media queries for responsiveness */
      @media screen and (max-width: 600px) {
          body {
              background-color: lightgray;
          }
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you link an external CSS file to an HTML document?",
        answer: "To link an external CSS file, use the <link> tag inside the <head> section of the HTML document. The `href` attribute specifies the location of the CSS file.",
        example: '''
      <!-- Example: Linking external CSS -->
      <head>
          <link rel="stylesheet" href="styles.css">
      </head>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between block-level and inline elements in HTML?",
        answer: "Block-level elements take up the full width available (e.g., <div>, <h1>), while inline elements take up only as much space as necessary (e.g., <span>, <a>).",
        example: '''
      <!-- Example: Block vs Inline Elements -->
      <div>This is a block element.</div>
      <span>This is an inline element.</span>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you make a website accessible?",
        answer: "To make a website accessible, ensure that it can be used by people with disabilities. This includes adding alt text for images, ensuring good contrast, and using semantic HTML elements.",
        example: '''
      <!-- Example: Accessible Image with alt text -->
      <img src="image.jpg" alt="Description of the image">
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is a CSS class selector, and how do you use it?",
        answer: "A CSS class selector is used to style multiple elements with the same class attribute. It is defined using a period (.) followed by the class name.",
        example: '''
      <!-- Example: CSS Class Selector -->
      <style>
          .button {
              background-color: blue;
              color: white;
          }
      </style>

      <button class="button">Click Me</button>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the role of JavaScript in form validation?",
        answer: "JavaScript can validate form data before submitting it to the server, ensuring that users input correct and valid data.",
        example: '''
      <!-- Example: JavaScript Form Validation -->
      <form onsubmit="return validateForm()">
          <input type="text" id="name" placeholder="Enter your name">
          <input type="submit" value="Submit">
      </form>

      <script>
          function validateForm() {
              var name = document.getElementById('name').value;
              if (name == '') {
                  alert('Name is required!');
                  return false;
              }
              return true;
          }
      </script>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are HTML data attributes, and how are they used?",
        answer: "HTML data attributes store extra information on HTML elements. These attributes begin with `data-` and can be accessed using JavaScript.",
        example: '''
      <!-- Example: HTML Data Attributes -->
      <div data-id="123" data-name="John">User Information</div>
      <script>
          var userId = document.querySelector('div').getAttribute('data-id');
          console.log(userId);  // Output: 123
      </script>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the DOM in web development?",
        answer: "The DOM (Document Object Model) is a programming interface for web documents. It represents the page structure as a tree, allowing developers to manipulate elements using JavaScript.",
        example: '''
      <!-- Example: Manipulating the DOM -->
      <div id="content">Old Content</div>
      <script>
          document.getElementById('content').innerHTML = 'New Content';
      </script>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is local storage in web development?",
        answer: "Local storage allows web applications to store data in the browser. The data persists even after the browser is closed and can be accessed using JavaScript's `localStorage` API.",
        example: '''
      <!-- Example: Using Local Storage -->
      <script>
          localStorage.setItem('name', 'John');
          var storedName = localStorage.getItem('name');
          console.log(storedName);  // Output: John
      </script>
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is an API, and how do you interact with it in JavaScript?",
        answer: "An API (Application Programming Interface) allows different software components to communicate. In JavaScript, APIs are commonly accessed using `fetch()` or `XMLHttpRequest` to retrieve data from external services.",
        example: '''
      <!-- Example: Fetching data from an API -->
      <script>
          fetch('https://api.example.com/data')
              .then(response => response.json())
              .then(data => console.log(data));
      </script>
      '''
    ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is Bootstrap?",
  answer: "Bootstrap is a popular front-end framework for developing responsive and mobile-first websites. It includes ready-to-use CSS and JavaScript components such as navigation bars, modals, and grids.",
  example: '''
      <!-- Example: Simple Bootstrap Button -->
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
      <button class="btn btn-primary">Click Me</button>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you create a hyperlink in HTML?",
  answer: "In HTML, hyperlinks are created using the <a> (anchor) tag. The `href` attribute specifies the destination URL.",
  example: '''
      <!-- Example: Creating a hyperlink -->
      <a href="https://www.example.com">Visit Example</a>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the difference between GET and POST requests in web development?",
  answer: "GET requests are used to retrieve data from a server, while POST requests are used to send data to the server. GET requests append data to the URL, while POST requests send data in the request body.",
  example: '''
      <!-- Example: GET request with JavaScript fetch -->
      <script>
          fetch('https://api.example.com/data')
              .then(response => response.json())
              .then(data => console.log(data));
      </script>

      <!-- Example: POST request with JavaScript fetch -->
      <script>
          fetch('https://api.example.com/submit', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify({ name: 'John' })
          }).then(response => response.json())
            .then(data => console.log(data));
      </script>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is an ID selector in CSS, and how is it different from a class selector?",
  answer: "An ID selector in CSS is used to style a single element with a unique ID. It is defined using the `#` symbol. Unlike class selectors, which can be used on multiple elements, ID selectors should only be used once per page.",
  example: '''
      <!-- Example: CSS ID Selector -->
      <style>
          #header {
              background-color: green;
              color: white;
          }
      </style>

      <div id="header">This is a header</div>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you include external JavaScript files in HTML?",
  answer: "To include an external JavaScript file, use the <script> tag with the `src` attribute pointing to the file's location. This should be placed at the bottom of the HTML body for better performance.",
  example: '''
      <!-- Example: Including external JavaScript -->
      <script src="app.js"></script>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is JSON, and how is it used in web development?",
  answer: "JSON (JavaScript Object Notation) is a lightweight data interchange format. It is used to exchange data between a client and a server, often in RESTful APIs.",
  example: '''
      <!-- Example: JavaScript object to JSON -->
      <script>
          var person = { name: 'John', age: 30 };
          var jsonStr = JSON.stringify(person);
          console.log(jsonStr);  // Output: '{"name":"John","age":30}'
      </script>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are meta tags in HTML, and why are they important?",
  answer: "Meta tags provide metadata about the HTML document. They are placed inside the <head> section and are used for SEO, responsive design, and setting character encoding.",
  example: '''
      <!-- Example: Meta tag for character encoding -->
      <meta charset="UTF-8">
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is Flexbox in CSS?",
  answer: "Flexbox is a CSS layout model that allows you to create flexible and responsive layouts. It arranges items in a container in a way that they can grow or shrink based on the available space.",
  example: '''
      /* Example: Flexbox layout */
      .container {
          display: flex;
          justify-content: space-between;
      }
      .item {
          width: 100px;
          height: 100px;
          background-color: lightblue;
      }
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you comment in HTML and JavaScript?",
  answer: "In HTML, comments are enclosed within <!-- and -->, while in JavaScript, single-line comments use // and multi-line comments are enclosed within /* and */.",
  example: '''
      <!-- HTML comment -->
      <p>This is a paragraph</p>
      <!-- This is a comment -->

      <script>
          // Single-line comment in JavaScript
          /* Multi-line comment in JavaScript */
      </script>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What are cookies, and how are they used in web development?",
  answer: "Cookies are small pieces of data stored by the browser to remember information about a user. They are often used for session management, personalization, and tracking.",
  example: '''
      <!-- Example: Setting a cookie in JavaScript -->
      <script>
          document.cookie = "username=John; expires=Fri, 31 Dec 9999 23:59:59 GMT";
      </script>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you include fonts from Google Fonts in a web page?",
  answer: "To include fonts from Google Fonts, use the <link> tag in the <head> section of the HTML document. The `href` attribute points to the font's URL.",
  example: '''
      <!-- Example: Including Google Font -->
      <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

      <style>
          body {
              font-family: 'Roboto', sans-serif;
          }
      </style>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the difference between a relative and an absolute URL?",
  answer: "A relative URL specifies a path relative to the current page, while an absolute URL includes the complete path, starting from the protocol (e.g., https://).",
  example: '''
      <!-- Example: Relative URL -->
      <a href="about.html">About Us</a>

      <!-- Example: Absolute URL -->
      <a href="https://www.example.com/about.html">About Us</a>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is a CSS pseudo-class, and how is it used?",
  answer: "A CSS pseudo-class is used to define the special state of an element (e.g., when a user hovers over a link). It is defined with a colon (:) followed by the pseudo-class name.",
  example: '''
      /* Example: Pseudo-class for hover effect */
      a:hover {
          color: red;
      }
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is the difference between margin and padding in CSS?",
  answer: "Margin is the space outside the element's border, while padding is the space inside the border, between the content and the border.",
  example: '''
      /* Example: Margin vs Padding */
      .box {
          margin: 20px;
          padding: 10px;
          border: 2px solid black;
      }
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "What is AJAX, and how is it used in web development?",
  answer: "AJAX (Asynchronous JavaScript and XML) allows web pages to update asynchronously by exchanging data with the server in the background without reloading the entire page.",
  example: '''
      <!-- Example: Simple AJAX request -->
      <script>
          var xhr = new XMLHttpRequest();
          xhr.open("GET", "https://api.example.com/data", true);
          xhr.onreadystatechange = function() {
              if (xhr.readyState == 4 && xhr.status == 200) {
                  console.log(xhr.responseText);
              }
          };
          xhr.send();
      </script>
      '''
  ),

  LearningDetail(
  learnerType: LearnerType.beginner,
  question: "How do you center an element horizontally in CSS?",
  answer: "To center an element horizontally in CSS, you can use the `margin: auto` property on block-level elements or `text-align: center` for inline elements.",
  example: '''
      /* Example: Centering a block element */
      .center {
          width: 50%;
          margin: auto;
          background-color: lightgray;
      }
      '''
  ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between `display: none` and `visibility: hidden` in CSS?",
        answer: "Both hide an element, but `display: none` removes the element from the document flow, while `visibility: hidden` hides the element but keeps its space occupied in the layout.",
        example: '''
      /* Example: CSS visibility vs display */
      .hidden-element {
          display: none;
      }

      .invisible-element {
          visibility: hidden;
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does CSS Grid differ from Flexbox?",
        answer: "CSS Grid is a two-dimensional layout system, handling both rows and columns, while Flexbox is one-dimensional, handling either rows or columns at a time.",
        example: '''
      /* Example: CSS Grid vs Flexbox */
      .grid-container {
          display: grid;
          grid-template-columns: auto auto auto;
      }

      .flex-container {
          display: flex;
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are CSS media queries, and how do they enhance responsive design?",
        answer: "CSS media queries are used to apply different styles to different devices based on screen size, orientation, and other characteristics, enabling responsive design.",
        example: '''
      /* Example: Media queries */
      @media screen and (max-width: 600px) {
          body {
              background-color: lightblue;
          }
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between let, const, and var in JavaScript?",
        answer: "`let` and `const` are block-scoped, while `var` is function-scoped. `const` is used for variables whose values should not change, while `let` is used for variables that can be reassigned.",
        example: '''
      // Example: let, const, and var in JavaScript
      var x = 10;  // Function-scoped
      let y = 20;  // Block-scoped
      const z = 30;  // Block-scoped and constant
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the event loop in JavaScript, and how does it work?",
        answer: "The event loop in JavaScript manages asynchronous operations by adding them to a queue and executing them after the main execution stack is cleared.",
        example: '''
      // Example: Event loop in JavaScript
      console.log("Start");

      setTimeout(() => {
          console.log("Timeout");
      }, 1000);

      console.log("End");
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do closures work in JavaScript?",
        answer: "A closure is a function that retains access to its outer scope, even after the outer function has executed. It is useful for data privacy and maintaining state in asynchronous operations.",
        example: '''
      // Example: JavaScript closure
      function outer() {
          let count = 0;
          return function inner() {
              count++;
              return count;
          }
      }

      const counter = outer();
      console.log(counter());  // Output: 1
      console.log(counter());  // Output: 2
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Cross-Origin Resource Sharing (CORS) in web development?",
        answer: "CORS is a security feature that allows or restricts resources to be requested from another domain outside the server's own. It is implemented by using specific headers.",
        example: '''
      // Example: CORS header in server response
      Access-Control-Allow-Origin: https://example.com
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the Fetch API in JavaScript, and how does it work?",
        answer: "The Fetch API is used to make network requests similar to `XMLHttpRequest`, but it is more modern and returns a Promise, allowing you to work with asynchronous requests more easily.",
        example: '''
      // Example: Fetch API
      fetch('https://api.example.com/data')
          .then(response => response.json())
          .then(data => console.log(data))
          .catch(error => console.error('Error:', error));
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does a Promise work in JavaScript?",
        answer: "A Promise in JavaScript represents an asynchronous operation. It has three states: pending, fulfilled, and rejected, and is used to handle asynchronous data more effectively.",
        example: '''
      // Example: JavaScript Promise
      const promise = new Promise((resolve, reject) => {
          let success = true;
          if (success) {
              resolve("Operation successful");
          } else {
              reject("Operation failed");
          }
      });

      promise.then(result => console.log(result))
             .catch(error => console.log(error));
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between synchronous and asynchronous JavaScript?",
        answer: "Synchronous JavaScript blocks further execution until the current operation completes, while asynchronous JavaScript allows other operations to run while waiting for previous ones to complete.",
        example: '''
      // Example: Asynchronous JavaScript
      console.log("Start");

      setTimeout(() => {
          console.log("Inside timeout");
      }, 1000);

      console.log("End");
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you handle errors in JavaScript?",
        answer: "Errors in JavaScript are handled using the `try...catch` block. You can also throw custom errors using the `throw` statement.",
        example: '''
      // Example: Error handling in JavaScript
      try {
          let result = someUndefinedFunction();
      } catch (error) {
          console.error("An error occurred:", error);
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between localStorage and sessionStorage in web development?",
        answer: "`localStorage` stores data persistently with no expiration, while `sessionStorage` stores data only for the session (i.e., until the browser is closed). Both can be used to store small amounts of data in key-value pairs.",
        example: '''
      // Example: Using localStorage and sessionStorage
      localStorage.setItem('name', 'Alice');
      sessionStorage.setItem('token', '12345');
      
      console.log(localStorage.getItem('name'));  // Output: Alice
      console.log(sessionStorage.getItem('token'));  // Output: 12345
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you secure a web application from common attacks like XSS and CSRF?",
        answer: "To secure a web application, use techniques like input validation, escaping untrusted data, implementing Content Security Policy (CSP), and using CSRF tokens to prevent Cross-Site Scripting (XSS) and Cross-Site Request Forgery (CSRF) attacks.",
        example: '''
      // Example: Using CSP to prevent XSS
      Content-Security-Policy: default-src 'self'; script-src 'self';
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is lazy loading, and how does it improve web performance?",
        answer: "Lazy loading defers the loading of non-essential resources, such as images, until they are needed. This improves page load times and performance, especially for content-heavy websites.",
        example: '''
      <!-- Example: Lazy loading an image -->
      <img src="low-res.jpg" data-src="high-res.jpg" loading="lazy" alt="Lazy Load Example">
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are WebSockets, and how do they differ from HTTP?",
        answer: "WebSockets provide a full-duplex communication channel over a single TCP connection, allowing real-time data transfer between the client and server. Unlike HTTP, which is stateless and requires repeated requests, WebSockets remain open and allow continuous data flow.",
        example: '''
      // Example: WebSocket connection in JavaScript
      const socket = new WebSocket('ws://example.com/socket');
      socket.onmessage = function(event) {
          console.log('Message from server:', event.data);
      };
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you create a RESTful API?",
        answer: "A RESTful API is created by defining resources and exposing them through HTTP methods like GET, POST, PUT, DELETE. Each resource is identified by a URL, and operations are performed by the client using these HTTP methods.",
        example: '''
      // Example: RESTful API endpoints (pseudo-code)
      GET /api/users         // Retrieves a list of users
      POST /api/users        // Creates a new user
      PUT /api/users/1       // Updates user with id=1
      DELETE /api/users/1    // Deletes user with id=1
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you use promises and async/await in JavaScript for asynchronous programming?",
        answer: "Promises in JavaScript are used to handle asynchronous operations. The async/await syntax allows you to write asynchronous code that looks synchronous, making it easier to read and manage.",
        example: '''
      // Example: Using Promises
      fetch('https://api.example.com/data')
          .then(response => response.json())
          .then(data => console.log(data))
          .catch(error => console.error('Error:', error));

      // Example: Using async/await
      async function fetchData() {
          try {
              const response = await fetch('https://api.example.com/data');
              const data = await response.json();
              console.log(data);
          } catch (error) {
              console.error('Error:', error);
          }
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is JSON Web Token (JWT), and how is it used in web development?",
        answer: "JWT (JSON Web Token) is a compact, URL-safe token that represents claims between two parties. It is commonly used for authentication in web applications, where the server generates a token upon successful login, and the client sends it in subsequent requests to authenticate the user.",
        example: '''
      // Example: Sending JWT in HTTP request
      const token = "your.jwt.token";
      fetch('https://api.example.com/protected', {
          headers: {
              'Authorization': `Bearer \${token}`
          }
      }).then(response => response.json())
        .then(data => console.log(data));
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is a Progressive Web App (PWA), and what are its advantages?",
        answer: "A Progressive Web App (PWA) is a type of web application that uses modern web technologies to provide a native app-like experience. PWAs are fast, reliable, and can be installed on a user's device, even working offline.",
        example: '''
      // Example: Registering a Service Worker for a PWA
      if ('serviceWorker' in navigator) {
          navigator.serviceWorker.register('/service-worker.js')
              .then(registration => {
                  console.log('Service Worker registered with scope:', registration.scope);
              }).catch(error => {
                  console.error('Service Worker registration failed:', error);
              });
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you implement client-side routing in a single-page application (SPA)?",
        answer: "In a single-page application (SPA), client-side routing is used to handle navigation without reloading the page. This is typically implemented using libraries like React Router or Vue Router, where URL changes are handled in the browser.",
        example: '''
      // Example: React Router (JavaScript SPA)
      import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';

      function App() {
          return (
              <Router>
                  <Switch>
                      <Route path="/home" component={HomePage} />
                      <Route path="/about" component={AboutPage} />
                  </Switch>
              </Router>
          );
      }
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is WebAssembly, and how does it work?",
        answer: "WebAssembly (Wasm) is a binary instruction format that allows code written in languages like C, C++, and Rust to be run in the browser with near-native performance. It is compiled into bytecode, which can be executed alongside JavaScript in the web environment.",
        example: '''
      // Example: Loading WebAssembly in JavaScript
      WebAssembly.instantiateStreaming(fetch('module.wasm'))
          .then(obj => {
              console.log(obj.instance.exports.add(2, 3));  // Assuming the Wasm module has an 'add' function
          });
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you secure a RESTful API?",
        answer: "To secure a RESTful API, you can implement HTTPS, use JWTs (JSON Web Tokens) for authentication, limit the API exposure using rate limiting, and apply input validation to prevent attacks like SQL injection and XSS.",
        example: '''
      // Example: Securing API with HTTPS and JWTs
      app.use((req, res, next) => {
          const token = req.headers['authorization'];
          if (!token) {
              return res.status(403).send('Token is required.');
          }
          try {
              const decoded = jwt.verify(token, 'your_secret_key');
              req.user = decoded;
              next();
          } catch (error) {
              return res.status(401).send('Invalid token.');
          }
      });
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are Web Workers, and how do they improve performance in JavaScript?",
        answer: "Web Workers in JavaScript allow you to run scripts in the background, separate from the main thread, improving performance by preventing blocking operations on the user interface.",
        example: '''
      // Example: Creating a Web Worker
      const worker = new Worker('worker.js');

      worker.onmessage = function(event) {
          console.log('Message from worker:', event.data);
      };

      worker.postMessage('Hello, Worker!');

      // worker.js
      onmessage = function(event) {
          console.log('Message received from main script:', event.data);
          postMessage('Hello from Worker!');
      };
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How does HTTP/2 improve performance over HTTP/1.1?",
        answer: "HTTP/2 improves performance by allowing multiplexed streams, header compression, and server push. It reduces latency and speeds up the loading of web pages by allowing multiple requests to be sent concurrently over a single connection.",
        example: '''
      // Example: Enabling HTTP/2 on a Node.js server with Express
      const http2 = require('http2');
      const express = require('express');
      const app = express();

      const server = http2.createSecureServer({
          cert: fs.readFileSync('path/to/cert.pem'),
          key: fs.readFileSync('path/to/key.pem')
      }, app);

      server.listen(3000, () => {
          console.log('HTTP/2 server running on port 3000');
      });
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "How do you handle file uploads in a web application?",
        answer: "File uploads in a web application can be handled by creating a form with `enctype='multipart/form-data'` and using a back-end server to process the file data. Libraries like `multer` in Node.js or `FormData` in the browser can help handle file uploads.",
        example: '''
      // Example: File upload in HTML and Express.js (Node.js)
      <form action="/upload" method="POST" enctype="multipart/form-data">
          <input type="file" name="file" />
          <button type="submit">Upload</button>
      </form>

      // Server-side (Node.js + Express + multer)
      const multer = require('multer');
      const upload = multer({ dest: 'uploads/' });

      app.post('/upload', upload.single('file'), (req, res) => {
          res.send('File uploaded successfully.');
      });
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is event delegation in JavaScript, and how does it work?",
        answer: "Event delegation is a technique in JavaScript where an event listener is added to a parent element instead of multiple child elements. Events are propagated from the child elements to the parent, making it more efficient to handle events on dynamically added elements.",
        example: '''
      // Example: Event delegation in JavaScript
      document.getElementById('parent').addEventListener('click', function(event) {
          if (event.target && event.target.nodeName === 'BUTTON') {
              console.log('Button clicked:', event.target.innerText);
          }
      });
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are closures in JavaScript, and how are they used?",
        answer: "A closure in JavaScript is a function that retains access to variables from its containing (outer) scope, even after the outer function has returned. Closures are useful for creating private variables or functions.",
        example: '''
      // Example: Closure in JavaScript
      function outerFunction() {
          let outerVar = 'I am outside!';

          function innerFunction() {
              console.log(outerVar);  // Can access outerVar
          }

          return innerFunction;
      }

      const closure = outerFunction();
      closure();  // Output: 'I am outside!'
      '''
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Vue.js?",
        answer: """
        Vue.js is a progressive JavaScript framework for building user interfaces. It is designed to be incrementally adoptable, meaning you can use as much or as little of Vue as needed. Vue is known for its simplicity, flexibility, and performance.

        Key features of Vue.js:
        - Reactive Data Binding: Automatically updates the view when the model changes.
        - Components: Encapsulated units of UI with their own logic and data.
        - Directives: Special tokens in the markup that tell the library to do something to a DOM element.
        - Vue CLI: Provides tools to quickly set up a project with a good development experience.
      """,
        example: """
        // Example of a simple Vue.js component
        <template>
          <h1>Hello, World!</h1>
        </template>

        <script>
        export default {
          name: 'HelloWorld',
        };
        </script>
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Node.js?",
        answer: """
        Node.js is an open-source, cross-platform runtime environment that allows developers to execute JavaScript code outside of a web browser. It is built on the V8 JavaScript engine and provides an event-driven, non-blocking I/O model, making it efficient and suitable for building scalable network applications.

        Key features of Node.js:
        - Event-driven and Asynchronous: Handles multiple operations simultaneously without blocking execution.
        - NPM (Node Package Manager): A vast library of reusable packages.
        - Single-threaded but Highly Scalable: Uses a single thread for event looping but can handle multiple connections efficiently.
        - Built-in Modules: Provides core modules like HTTP, File System, and Path.
      """,
        example: """
        // Example of a simple HTTP server in Node.js
        const http = require('http');

        const server = http.createServer((req, res) => {
          res.statusCode = 200;
          res.setHeader('Content-Type', 'text/plain');
          res.end('Hello, World!\\n');
        });

        server.listen(3000, () => {
          console.log('Server running at http://localhost:3000/');
        });
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is Express.js?",
        answer: """
        Express.js is a fast, unopinionated, minimalist web framework for Node.js. It provides a robust set of features for building web and mobile applications, including routing, middleware support, and template engines.

        Key features of Express.js:
        - Middleware: Functions that execute during the lifecycle of a request to the server.
        - Routing: Defines endpoints (routes) to handle client requests.
        - Template Engines: Renders dynamic content on the server side.
        - Flexibility: Allows developers to structure their application as they see fit.
      """,
        example: """
        // Example of a simple Express.js application
        const express = require('express');
        const app = express();

        app.get('/', (req, res) => {
          res.send('Hello, World!');
        });

        app.listen(3000, () => {
          console.log('Server running at http://localhost:3000/');
        });
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are props in React and how do you manage state in React?",
        answer: """
        Props (properties) are inputs passed to React components, allowing data to be shared between components and making them more dynamic. State in React can be managed using the useState hook in functional components, class component state, or state management libraries like Redux.
      """,
        example: """
        // Example: Managing state using useState in a functional component
        import React, { useState } from 'react';

        function Counter() {
          const [count, setCount] = useState(0);

          return (
            <div>
              <p>Count: {count}</p>
              <button onClick={() => setCount(count + 1)}>Increment</button>
            </div>
          );
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Explain the concept of virtual DOM in React. How does it improve performance?",
        answer: """
        Virtual DOM is a lightweight representation of the actual DOM in memory. When there are changes to the state of a React component, a new virtual DOM is created, and the difference between the new and old virtual DOMs is calculated. Only the necessary changes are then applied to the actual DOM, resulting in faster updates and improved performance compared to directly manipulating the DOM.
      """,
        example: """
        // Example: Updating React component with Virtual DOM
        import React, { useState } from 'react';

        function App() {
          const [message, setMessage] = useState('Hello, World!');

          return (
            <div>
              <p>{message}</p>
              <button onClick={() => setMessage('Hello, React!')}>Update Message</button>
            </div>
          );
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What are higher-order components (HOCs) in React? How do they work?",
        answer: """
        Higher-order components (HOCs) are functions that take a component as input and return a new component with enhanced functionality. They enable code reuse, abstraction of logic, and composition of multiple behaviors in React components. Common use cases include authentication, logging, and code splitting.
      """,
        example: """
        // Example: Higher-order component in React
        function withLogging(WrappedComponent) {
          return function(props) {
            console.log('Rendering component with props:', props);
            return <WrappedComponent {...props} />;
          };
        }

        const MyComponent = (props) => <div>{props.message}</div>;

        const EnhancedComponent = withLogging(MyComponent);

        // Usage: <EnhancedComponent message="Hello!" />
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "What is the difference between SQL and NoSQL databases?",
        answer: """
        SQL databases are relational and use structured query language, while NoSQL databases are non-relational and use various data models like key-value, document, and graph.
      """,
        example: """
        // Example: SQL query
        SELECT * FROM users WHERE id = 1;

        // Example: NoSQL query (MongoDB)
        db.users.find({ _id: 1 });
      """
    ),

    LearningDetail(
        learnerType: LearnerType.intermediate,
        question: "Explain the event-driven architecture of Node.js. How does it handle I/O operations efficiently?",
        answer: """
        Node.js uses an event-driven architecture where actions are executed in response to events. I/O operations are handled asynchronously, allowing Node.js to perform other operations while waiting for I/O events (e.g., file read or database query) to complete. This non-blocking architecture makes Node.js efficient for handling multiple requests concurrently.
      """,
        example: """
        // Example: Asynchronous I/O in Node.js
        const fs = require('fs');

        fs.readFile('file.txt', 'utf8', (err, data) => {
          if (err) throw err;
          console.log(data);
        });

        console.log('File reading started...');
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Web Workers in JavaScript, and how do they improve performance?",
        answer: """
        Web Workers are a way to run JavaScript in background threads, allowing you to perform tasks without blocking the user interface. They allow for parallelism, enabling the main thread to remain responsive while performing heavy computations or I/O tasks in the background.
      """,
        example: """
        // Example: Using Web Workers in JavaScript
        const worker = new Worker('worker.js');

        worker.onmessage = function(e) {
          console.log('Message received from worker:', e.data);
        };

        worker.postMessage('Start working');
        
        // worker.js
        onmessage = function(e) {
          let result = computeHeavyTask();
          postMessage(result);
        };
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Service Workers in web development, and how do they support progressive web apps (PWAs)?",
        answer: """
        Service Workers are background scripts that run separately from the web page, allowing you to intercept network requests, cache resources, and serve custom responses. They enable offline capabilities and improve performance by caching assets, making them key components of Progressive Web Apps (PWAs).
      """,
        example: """
        // Example: Registering a Service Worker
        if ('serviceWorker' in navigator) {
          navigator.serviceWorker.register('/sw.js').then(function(reg) {
            console.log('Service worker registered!', reg);
          });
        }
        
        // sw.js (Service Worker)
        self.addEventListener('install', function(event) {
          event.waitUntil(
            caches.open('my-cache').then(function(cache) {
              return cache.addAll([
                '/',
                '/index.html',
                '/styles.css',
                '/script.js'
              ]);
            })
          );
        });
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of micro-frontends and their advantages.",
        answer: """
        Micro-frontends are an architectural style where a web application is divided into smaller, independent pieces (micro-applications) that can be developed, deployed, and maintained separately. This allows teams to work independently and makes the system more scalable and maintainable. It also enables different parts of an application to use different frameworks or technologies.
      """,
        example: """
        // Example: Conceptual micro-frontend integration (pseudo-code)
        // Main container integrating different micro-frontends
        <div>
          <navbar-app></navbar-app>
          <search-app></search-app>
          <content-app></content-app>
        </div>
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are CSS Preprocessors, and how do they enhance CSS development?",
        answer: """
        CSS preprocessors like SASS, LESS, and Stylus add advanced features such as variables, nested rules, mixins, and functions to standard CSS. This makes CSS more maintainable and reduces redundancy by allowing you to reuse styles and logic across different parts of your stylesheet.
      """,
        example: """
        // Example: SCSS code (SASS)
        \$primary-color: #3498db;

        body {
          font-family: Arial, sans-serif;
          background-color: \$primary-color;
        }

        // Compiled CSS
        body {
          font-family: Arial, sans-serif;
          background-color: #3498db;
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Server-Side Rendering (SSR) in React, and how does it improve SEO?",
        answer: """
        Server-Side Rendering (SSR) is the process of rendering React components on the server and sending fully rendered HTML to the client. SSR improves SEO by allowing search engines to crawl the fully rendered HTML, and it reduces the time to first contentful paint (TTFCP), improving the user experience.
      """,
        example: """
        // Example: Server-Side Rendering with Express and React
        const express = require('express');
        const React = require('react');
        const { renderToString } = require('react-dom/server');
        const App = require('./App');

        const app = express();

        app.get('/', (req, res) => {
          const appHtml = renderToString(<App />);
          res.send(`
            <html>
              <body>
                <div id="root">\${appHtml}</div>
                <script src="/bundle.js"></script>
              </body>
            </html>
          `);
        });

        app.listen(3000, () => console.log('Server is running...'));
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement lazy loading in React using React.lazy and Suspense?",
        answer: """
        Lazy loading in React can be implemented using `React.lazy` and `Suspense`. Lazy loading helps reduce the initial loading time of the application by splitting the code and loading only the necessary components when needed.
      """,
        example: """
        // Example: Lazy loading a React component
        import React, { Suspense } from 'react';
        const LazyComponent = React.lazy(() => import('./LazyComponent'));

        function App() {
          return (
            <div>
              <Suspense fallback={<div>Loading...</div>}>
                <LazyComponent />
              </Suspense>
            </div>
          );
        }

        export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain WebSocket protocol and how it differs from HTTP.",
        answer: """
        WebSocket is a communication protocol that provides full-duplex communication channels over a single TCP connection. Unlike HTTP, which is request-response-based and stateless, WebSocket allows continuous communication between the client and server after the connection is established, making it suitable for real-time applications like chat apps and online games.
      """,
        example: """
        // Example: WebSocket communication in JavaScript
        const socket = new WebSocket('ws://example.com/socket');

        socket.onopen = function(event) {
          socket.send('Hello, Server!');
        };

        socket.onmessage = function(event) {
          console.log('Message from server: ', event.data);
        };
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is GraphQL, and how does it compare to REST?",
        answer: """
        GraphQL is a query language for APIs that allows clients to request specific data, avoiding over-fetching or under-fetching data. Unlike REST, which has fixed endpoints returning predefined data structures, GraphQL enables clients to specify exactly what they need, and the server responds with the requested data.
      """,
        example: """
        // Example: GraphQL query
        {
          user(id: "1") {
            name
            email
            posts {
              title
              content
            }
          }
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Content Security Policy (CSP) and how does it prevent XSS attacks?",
        answer: """
        Content Security Policy (CSP) is a security feature that helps prevent cross-site scripting (XSS) and other code injection attacks by specifying which resources the browser is allowed to load. You can define a set of allowed origins for scripts, styles, images, and other resources.
      """,
        example: """
        // Example: Setting CSP in an Express.js app
        const express = require('express');
        const helmet = require('helmet');
        const app = express();

        app.use(helmet.contentSecurityPolicy({
          directives: {
            defaultSrc: ["'self'"],
            scriptSrc: ["'self'", "trusted-scripts.com"],
          }
        }));

        app.listen(3000);
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the role of Load Balancers in web development.",
        answer: """
        Load balancers distribute incoming traffic across multiple servers to ensure that no single server becomes overwhelmed, improving the reliability and scalability of a web application. Load balancers monitor server health and reroute traffic to available servers if one fails.
      """,
        example: """
        // Example: Configuring a load balancer (pseudo-code)
        load_balancer.add_server(server1);
        load_balancer.add_server(server2);
        
        incoming_request = load_balancer.route_request(request);
      """
    ),


    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Single-Page Applications (SPAs), and how do they differ from traditional multi-page applications?",
        answer: """
        Single-Page Applications (SPAs) load a single HTML document and dynamically update the content as the user interacts with the app, without reloading the entire page. This provides a smoother user experience compared to traditional multi-page applications, which require full page reloads for every navigation.
      """,
        example: """
        // Example: Basic SPA with Vue.js (pseudo-code)
        const routes = {
          '/home': HomeComponent,
          '/about': AboutComponent,
        };

        function navigate(path) {
          const component = routes[path];
          document.getElementById('app').innerHTML = component.render();
        }

        // Load initial route
        navigate('/home');
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is code-splitting in React, and how does it improve performance?",
        answer: """
        Code-splitting in React allows you to split your application code into smaller bundles that are loaded only when needed, reducing the initial load time. This can be achieved using `React.lazy()` and `Suspense`, or by using a bundler like Webpack.
      """,
        example: """
        // Example: Code-splitting in React
        import React, { Suspense } from 'react';
        const LazyComponent = React.lazy(() => import('./LazyComponent'));

        function App() {
          return (
            <div>
              <Suspense fallback={<div>Loading...</div>}>
                <LazyComponent />
              </Suspense>
            </div>
          );
        }

        export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the difference between client-side and server-side rendering.",
        answer: """
        Client-side rendering (CSR) involves rendering the content in the browser using JavaScript after the initial HTML page is loaded. Server-side rendering (SSR) renders the content on the server and sends a fully-rendered HTML page to the client. CSR provides a faster initial load time but slower content display, while SSR is better for SEO and faster content rendering.
      """,
        example: """
        // Example: SSR vs CSR (conceptual)
        // CSR: The browser loads the HTML skeleton, and JavaScript renders the content dynamically.
        // SSR: The server sends a fully rendered HTML page to the browser, which displays it immediately.
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the Same-Origin Policy (SOP), and how does it protect web applications?",
        answer: """
        The Same-Origin Policy (SOP) is a security measure implemented by browsers to prevent malicious scripts from accessing resources on a different origin. It ensures that a web page can only make requests to the same domain, protocol, and port. This protects against cross-origin attacks like Cross-Site Scripting (XSS) and Cross-Site Request Forgery (CSRF).
      """,
        example: """
        // Example: Same-Origin Policy (conceptual)
        // A web page on https://example.com cannot access resources from https://malicious.com due to SOP restrictions.
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement WebSockets in a Node.js application for real-time communication?",
        answer: """
        WebSockets allow real-time communication between the client and server by establishing a persistent connection. In Node.js, you can use the `ws` library to implement WebSocket communication, enabling the server to push updates to the client in real-time.
      """,
        example: """
        // Example: WebSocket server in Node.js
        const WebSocket = require('ws');
        const server = new WebSocket.Server({ port: 8080 });

        server.on('connection', socket => {
          socket.on('message', message => {
            console.log('Received:', message);
            socket.send('Hello from the server!');
          });
        });

        console.log('WebSocket server running on ws://localhost:8080');
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Web Components, and how do they promote reusable and encapsulated UI elements?",
        answer: """
        Web Components is a suite of technologies that allows developers to create reusable, encapsulated custom HTML elements. It includes Shadow DOM for encapsulation, HTML templates, and custom elements, promoting modular design and reducing code duplication.
      """,
        example: """
        // Example: Creating a custom element using Web Components
        class MyComponent extends HTMLElement {
          constructor() {
            super();
            const shadow = this.attachShadow({ mode: 'open' });
            shadow.innerHTML = '<p>Hello, Web Components!</p>';
          }
        }
        customElements.define('my-component', MyComponent);

        // Usage in HTML
        <my-component></my-component>
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a Content Delivery Network (CDN), and how does it enhance web performance?",
        answer: """
        A Content Delivery Network (CDN) is a distributed network of servers that deliver web content to users based on their geographic location. CDNs cache static assets like images, stylesheets, and JavaScript files at multiple locations worldwide, reducing latency and improving load times for users far from the origin server.
      """,
        example: """
        // Example: CDN usage (HTML)
        <link rel="stylesheet" href="https://cdn.example.com/styles.css">
        <script src="https://cdn.example.com/scripts.js"></script>
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Continuous Integration/Continuous Deployment (CI/CD)?",
        answer: """
        Continuous Integration (CI) is a practice where developers frequently merge their code changes into a shared repository, and automated builds and tests are run to detect issues early. Continuous Deployment (CD) extends this by automatically deploying code changes to production after passing the tests, ensuring that new features and fixes are delivered quickly and reliably. CI/CD helps maintain a stable codebase, reduces integration issues, and speeds up the development and deployment process.
      """,
        example: """
        // Example CI/CD Process (simplified pseudo-code)
        git push origin master
        # Trigger CI pipeline
        build_and_test()
        if tests_pass:
          deploy_to_production()
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Define NPM (Node Package Manager).",
        answer: """
        NPM, short for Node Package Manager, is the default package manager for Node.js. It comes bundled with Node.js and allows developers to manage JavaScript packages and modules. NPM facilitates installing, updating, and removing packages, and offers a vast repository of libraries to streamline the development process.
      """,
        example: """
        // Example: Installing a package using NPM
        npm install express
        // Example: Removing a package using NPM
        npm uninstall express
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle cross-browser compatibility issues?",
        answer: """
        Cross-browser compatibility issues can be addressed using feature detection (checking if a browser supports a feature), vendor prefixes for browser-specific CSS rules, and polyfills for unsupported features. Additionally, testing across multiple browsers and devices helps identify and resolve issues. Using modern frameworks and libraries can also reduce compatibility problems.
      """,
        example: """
        // Example: CSS vendor prefix
        .box {
          -webkit-transform: rotate(45deg); /* Chrome, Safari */
          -moz-transform: rotate(45deg);    /* Firefox */
          -ms-transform: rotate(45deg);     /* IE */
          transform: rotate(45deg);         /* Standard */
        }
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of CSRF (Cross-Site Request Forgery) and how it can be prevented.",
        answer: """
        CSRF (Cross-Site Request Forgery) is an attack that tricks users into executing unwanted actions on a web application where they are authenticated. It exploits the trust a web app has in a user's browser. CSRF can be prevented by using CSRF tokens, validating referer headers, and implementing SameSite cookies to mitigate unauthorized requests from other domains.
      """,
        example: """
        // Example: Generating a CSRF token in Express.js
        const csrf = require('csurf');
        const csrfProtection = csrf({ cookie: true });

        app.get('/form', csrfProtection, (req, res) => {
          res.render('form', { csrfToken: req.csrfToken() });
        });

        app.post('/process', csrfProtection, (req, res) => {
          res.send('Data processed!');
        });
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you optimize the loading time of your web application as a Web Developer?",
        answer: """
        Optimizing web app loading time can involve compressing images, using external CSS and JavaScript files for caching, minimizing redirects, loading CSS/JS asynchronously, and minifying code to reduce file sizes. These optimizations help reduce the number of HTTP requests and the size of the resources loaded.
      """,
        example: """
        // Example: Minify CSS with a tool like UglifyCSS
        uglifycss styles.css > styles.min.css
        
        // Example: Load CSS asynchronously
        <link rel="stylesheet" href="styles.css" media="all">
        <script src="script.js" async></script>
      """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of serverless architecture in web development.",
        answer: """
    Serverless architecture allows developers to focus on writing code without managing or provisioning servers, as the cloud provider takes care of the infrastructure. It offers two main models:

    1. **Backend-as-a-Service (BaaS):** Instead of managing backend infrastructure, developers use third-party services to handle tasks such as storage, authentication, and API management. Common BaaS providers include Firebase, AWS Amplify, and Supabase.

    2. **Functions-as-a-Service (FaaS):** Developers break down applications into decoupled functions, which are executed in a serverless environment. These functions are stateless and can be executed on platforms like AWS Lambda, Google Cloud Functions, or Azure Functions. Developers only pay for the actual execution time of the functions, making it highly cost-effective.
  """,
        example: """
    // Example: AWS Lambda function
    exports.handler = async (event) => {
      const name = event.name || "World";
      return {
        statusCode: 200,
        body: `Hello, \${name}!`
      };
    };

    // Example usage:
    // Deploy to AWS Lambda, which will automatically handle server scaling and execution.
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of state management in web development.",
        answer: """
    State management in web development refers to the process of managing and manipulating the state (or data) within an application. This involves ensuring that different components have access to the data they need and that changes in state are efficiently propagated across the application.

    State management can be handled locally within individual components or globally across multiple components, depending on the complexity of the application. Centralized state management becomes especially useful in large-scale applications where various parts of the application need to share or respond to changes in data.

    Popular state management libraries in web development include:
    - **Redux**: Commonly used with React for managing global state across the application.
    - **Vuex**: Used with Vue.js to manage state in a centralized store.
    - **Context API**: A simpler alternative in React for managing and passing down state across components.

    Effective state management ensures the application's data flow is predictable and easily maintainable, reducing bugs and making the development process more efficient.
  """,
        example: """
    // Example: Using React's Context API for state management

    import React, { createContext, useContext, useState } from 'react';

    // Create a Context for the global state
    const GlobalStateContext = createContext();

    // Create a provider component
    export function GlobalStateProvider({ children }) {
      const [state, setState] = useState({ user: 'John Doe', loggedIn: true });

      return (
        <GlobalStateContext.Provider value={{ state, setState }}>
          {children}
        </GlobalStateContext.Provider>
      );
    }

    // Custom hook to use the global state
    export function useGlobalState() {
      return useContext(GlobalStateContext);
    }

    // Usage in a component
    function Dashboard() {
      const { state } = useGlobalState();
      return <div>Welcome, {state.user}</div>;
    }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the purpose of the role attribute in HTML, especially in terms of accessibility?",
        answer: """
    The role attribute in HTML is used to define the purpose of an element on a web page. It helps web developers specify what role an element plays in the context of a web page, such as whether an element behaves like a button, link, heading, navigation section, or form component.

    In terms of accessibility, the role attribute is crucial as it allows assistive technologies (like screen readers) to interpret the function of each web element, making it easier for users with disabilities to navigate the content. This attribute provides additional semantic meaning to elements, enhancing the accessibility and usability of web applications.

    By specifying roles, developers ensure that screen readers and other assistive tools can convey the correct meaning and behavior of elements to users, improving the overall accessibility experience.
  """,
        example: """
    <!-- Example: Using the role attribute for accessibility -->
    <nav role="navigation">
      <ul>
        <li><a href="/home" role="link">Home</a></li>
        <li><a href="/about" role="link">About</a></li>
        <li><button role="button">Contact Us</button></li>
      </ul>
    </nav>
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between a static website and a dynamic website in web development?",
        answer: """
    A static website is one where the content remains the same for all users, unless manually updated by a web developer. The pages are served exactly as they are stored, and the content is fixed. Static websites are simple to develop and host but lack interactivity and personalization.

    In contrast, a dynamic website changes content or appearance automatically based on user interactions, data, or conditions. These websites often rely on server-side technologies to generate content dynamically. Dynamic websites are commonly used for personalized user experiences, like news feeds or e-commerce platforms.

    **Static Website**: Content is fixed and must be manually updated. Examples include portfolio websites or blogs with simple HTML files.

    **Dynamic Website**: Content is generated or changed automatically based on user input or other criteria. Examples include social media platforms, news websites, or e-commerce stores.
  """,
        example: """
    <!-- Example: Static Website -->
    <h1>Welcome to My Portfolio</h1>
    <p>This is static content that doesn't change unless the HTML file is manually updated.</p>

    <!-- Example: Dynamic Website (Using JavaScript for dynamic content) -->
    <h1>Latest News</h1>
    <div id="news-feed"></div>
    
    <script>
      fetch('https://api.example.com/news')
        .then(response => response.json())
        .then(data => {
          const newsFeed = document.getElementById('news-feed');
          data.articles.forEach(article => {
            const articleElement = document.createElement('p');
            articleElement.textContent = article.title;
            newsFeed.appendChild(articleElement);
          });
        });
    </script>
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Differentiate between client-side rendering and server-side rendering in web development.",
        answer: """
    Client-side rendering (CSR) means the web browser is responsible for rendering the web page. The browser downloads a bare-bones HTML file and uses JavaScript to fetch and render the content. The user’s device does the work here, which can sometimes result in slower initial load times, especially for large apps, but faster interactions once the page is fully loaded.

    Server-side rendering (SSR), on the other hand, means the web server generates the HTML for each page request and sends the fully rendered page to the browser. SSR usually results in faster initial load times and better SEO, as search engines can easily crawl the pre-rendered content.

    The choice between CSR and SSR depends on your project’s performance needs and SEO requirements. SSR is often chosen for better SEO and initial load performance, while CSR is preferred for single-page applications (SPAs) with dynamic interactions.
  """,
        example: """
    // Example: Server-side rendering (SSR) using Next.js
    export async function getServerSideProps() {
      const res = await fetch('https://api.example.com/data');
      const data = await res.json();
      return { props: { data } };
    }

    export default function Page({ data }) {
      return <div>{data.title}</div>;
    }

    // Example: Client-side rendering (CSR) using React
    useEffect(() => {
      fetch('https://api.example.com/data')
        .then(response => response.json())
        .then(data => setData(data));
    }, []);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a web application firewall (WAF), and why is it important for web security?",
        answer: """
    A Web Application Firewall (WAF) acts as a protective layer for web applications, filtering and monitoring HTTP traffic between a web application and the internet. It helps to prevent attacks like SQL injection, cross-site scripting (XSS), and Distributed Denial of Service (DDoS).

    WAFs inspect incoming requests and block malicious traffic before it reaches the application, offering a critical layer of defense against cyber threats. They operate by applying security rules and patterns to identify and block suspicious behavior, ensuring the web application remains secure from common vulnerabilities.
  """,
        example: """
    // Example: Configuring a WAF (simplified example)
    // WAF can be implemented with cloud providers like AWS or as a service
    const waf = {
      allowedIPs: ['192.168.1.1', '203.0.113.0'],
      blockedIPs: ['198.51.100.0'],
      rules: [
        { type: 'SQL Injection', pattern: /SELECT.*FROM/ },
        { type: 'XSS', pattern: /<script>/ }
      ]
    };

    function checkRequest(request) {
      if (waf.blockedIPs.includes(request.ip)) {
        return 'Request blocked';
      }
      // More rule checks
    }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the purpose of the role attribute in HTML, especially in terms of accessibility?",
        answer: """
    The role attribute in HTML specifies the purpose or role of an element, providing semantic meaning to assistive technologies like screen readers. By defining roles, developers help users who rely on accessibility tools navigate the content more effectively.

    For example, assigning the role "button" to a div helps screen readers understand that this element functions as a button, even if it's not a native button element. This improves web accessibility and enhances the overall user experience for people with disabilities.
  """,
        example: """
    <!-- Example: Using the role attribute for accessibility -->
    <nav role="navigation">
      <ul>
        <li><a href="/home" role="link">Home</a></li>
        <li><a href="/about" role="link">About</a></li>
        <li><button role="button">Contact Us</button></li>
      </ul>
    </nav>
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the difference between a static website and a dynamic website in web development?",
        answer: """
    A static website is a collection of fixed web pages that display the same content to all users, regardless of their interactions or preferences. Static websites are usually simple to develop and host, but they don't offer much interactivity or personalization.

    A dynamic website, on the other hand, generates content in real-time based on user interactions, data inputs, or predefined conditions. These websites often use server-side technologies like PHP or Node.js to render personalized content, providing a more interactive experience.

    For instance, a static news website shows the same content to every visitor, while a dynamic news website personalizes the content based on the visitor’s preferences, location, or behavior.
  """,
        example: """
    <!-- Example: Static Website -->
    <h1>Welcome to My Portfolio</h1>
    <p>This is static content that doesn't change unless manually updated.</p>

    <!-- Example: Dynamic Website (Using JavaScript for dynamic content) -->
    <h1>Latest News</h1>
    <div id="news-feed"></div>
    
    <script>
      fetch('https://api.example.com/news')
        .then(response => response.json())
        .then(data => {
          const newsFeed = document.getElementById('news-feed');
          data.articles.forEach(article => {
            const articleElement = document.createElement('p');
            articleElement.textContent = article.title;
            newsFeed.appendChild(articleElement);
          });
        });
    </script>
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Service Workers in Progressive Web Apps (PWAs), and how do they enable offline functionality?",
        answer: """
    Service Workers are scripts that run in the background of a web browser, acting as a proxy between the network and the browser. They enable offline functionality in Progressive Web Apps (PWAs) by intercepting network requests and serving cached content when the user is offline.

    Service Workers provide the backbone for features like push notifications, background sync, and offline caching, helping PWAs function like native apps, even without an internet connection.
  """,
        example: """
    // Example: Registering a Service Worker in a PWA
    if ('serviceWorker' in navigator) {
      navigator.serviceWorker.register('/service-worker.js')
        .then(registration => {
          console.log('Service Worker registered with scope:', registration.scope);
        }).catch(error => {
          console.log('Service Worker registration failed:', error);
        });
    }

    // Example: Simple Service Worker for offline caching
    self.addEventListener('install', event => {
      event.waitUntil(
        caches.open('my-cache').then(cache => {
          return cache.addAll([
            '/',
            '/index.html',
            '/styles.css',
            '/script.js'
          ]);
        })
      );
    });

    self.addEventListener('fetch', event => {
      event.respondWith(
        caches.match(event.request).then(response => {
          return response || fetch(event.request);
        })
      );
    });
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is Content Security Policy (CSP), and how does it enhance web security?",
        answer: """
    Content Security Policy (CSP) is a security feature that helps prevent attacks like Cross-Site Scripting (XSS) by restricting the sources from which content such as JavaScript, CSS, images, and frames can be loaded. 

    By defining allowed content sources through CSP headers, developers can ensure that the browser only executes or loads content from trusted locations, thus mitigating the risk of injection attacks.
  """,
        example: """
    // Example: Setting a CSP header in a Node.js application using Express
    const express = require('express');
    const helmet = require('helmet');
    const app = express();

    app.use(helmet.contentSecurityPolicy({
      directives: {
        defaultSrc: ["'self'"],
        scriptSrc: ["'self'", "https://trusted.cdn.com"],
        styleSrc: ["'self'", "https://trusted.cdn.com"]
      }
    }));

    app.get('/', (req, res) => {
      res.send('Content Security Policy enabled');
    });

    app.listen(3000, () => {
      console.log('Server running on port 3000');
    });
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a RESTful API, and what are its key principles?",
        answer: """
    A RESTful API, or Representational State Transfer API, is a design style for building scalable web services that use standard HTTP methods for communication between software systems. RESTful APIs are commonly used for building web services due to their simplicity, flexibility, and ability to work over the standard HTTP protocol.

    The key principles of a RESTful API include:
    - **Stateless:** Each request from a client to a server must contain all the necessary information for the server to understand and process the request. The server does not store any session data about the client.
    - **Client-Server:** REST architecture enforces a clear separation between the client (frontend) and the server (backend). This allows them to evolve independently.
    - **Uniform Interface:** REST APIs rely on a uniform and consistent interface. The API follows standard HTTP methods like GET, POST, PUT, DELETE for CRUD (Create, Read, Update, Delete) operations.
    - **Cacheable:** Responses from the server can be cached on the client side to reduce latency and improve performance. Cacheable responses must define how long the data is valid.
    - **Layered System:** REST allows an architecture to have multiple layers (such as security, load balancing) between the client and server, each performing a specific task. This helps scalability and flexibility.
    - **State Transfer:** The exchange of data (state) between the client and the server is done in a standardized format, often JSON or XML, where the client sends a request and the server returns a representation of the data.
  """,
        example: """
    // Example: RESTful API with HTTP methods
    // GET: Retrieve user data
    GET /api/users

    // POST: Create a new user
    POST /api/users

    // PUT: Update an existing user
    PUT /api/users/{id}

    // DELETE: Delete a user
    DELETE /api/users/{id}

    // Example of a simple GET request in Node.js using Express:
    const express = require('express');
    const app = express();

    app.get('/api/users', (req, res) => {
      res.json({ users: [{ id: 1, name: 'John Doe' }, { id: 2, name: 'Jane Doe' }] });
    });

    app.listen(3000, () => {
      console.log('Server running on http://localhost:3000');
    });
  """
    )





  ];
}

