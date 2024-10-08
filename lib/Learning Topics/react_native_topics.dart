import '../../Model/learning_topics.dart';
import 'package:next_round/Common Components/learner_type.dart';

class ReactNativeTopics {
  static List<LearningDetail> learningDetails = [

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is React Native?",
        answer: "React Native is an open-source framework developed by Facebook for building mobile applications using JavaScript and React. It allows developers to build apps for Android and iOS platforms using a single codebase.",
        example: """
      import React from 'react';
      import { Text, View } from 'react-native';

      const App = () => (
        <View>
          <Text>Hello, React Native!</Text>
        </View>
      );

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are the core components of React Native?",
        answer: "Core components in React Native include View, Text, Image, TextInput, ScrollView, FlatList, and others. These components are building blocks used to create user interfaces.",
        example: """
      import React from 'react';
      import { View, Text, Image } from 'react-native';

      const App = () => (
        <View>
          <Text>Welcome to React Native!</Text>
          <Image source={{ uri: 'https://example.com/image.jpg' }} style={{ width: 200, height: 200 }} />
        </View>
      );

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How does styling work in React Native?",
        answer: "React Native uses JavaScript objects to define styles, which are similar to CSS. The `StyleSheet` API is often used for managing styles in a structured manner.",
        example: """
      import React from 'react';
      import { Text, View, StyleSheet } from 'react-native';

      const App = () => (
        <View style={styles.container}>
          <Text style={styles.text}>Hello, styled world!</Text>
        </View>
      );

      const styles = StyleSheet.create({
        container: {
          flex: 1,
          justifyContent: 'center',
          alignItems: 'center',
        },
        text: {
          fontSize: 24,
          color: 'blue',
        },
      });

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is JSX in React Native?",
        answer: "JSX (JavaScript XML) is a syntax extension for JavaScript, which allows you to write HTML-like code in your JavaScript. It is used to define UI components in React Native.",
        example: """
      import React from 'react';
      import { Text, View } from 'react-native';

      const App = () => (
        <View>
          <Text>Hello from JSX!</Text>
        </View>
      );

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle user input in React Native?",
        answer: "User input is handled in React Native using the `TextInput` component, where the value can be stored and modified using state variables.",
        example: """
      import React, { useState } from 'react';
      import { TextInput, View, Text } from 'react-native';

      const App = () => {
        const [inputValue, setInputValue] = useState('');

        return (
          <View>
            <TextInput value={inputValue} onChangeText={setInputValue} placeholder="Type something" />
            <Text>You typed: {inputValue}</Text>
          </View>
        );
      };

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between View and ScrollView in React Native?",
        answer: "`View` is a container that holds other components, whereas `ScrollView` is a container that can hold components and allows them to scroll when the content exceeds the available screen space.",
        example: """
      import React from 'react';
      import { View, ScrollView, Text } from 'react-native';

      const App = () => (
        <ScrollView>
          <Text>Scrollable content</Text>
          {/* Add more components here */}
        </ScrollView>
      );

      export default App;
      """
    ),

    // Data Structures

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle lists in React Native?",
        answer: "React Native provides `FlatList` and `SectionList` components to handle lists efficiently, especially with large data sets.",
        example: """
      import React from 'react';
      import { FlatList, Text, View } from 'react-native';

      const App = () => {
        const data = [{ key: 'Apple' }, { key: 'Banana' }, { key: 'Orange' }];

        return (
          <FlatList
            data={data}
            renderItem={({ item }) => <Text>{item.key}</Text>}
          />
        );
      };

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the key property in FlatList, and why is it important?",
        answer: "The `key` property is a unique identifier for list items in React Native. It helps React efficiently update the list by tracking changes in the individual items.",
        example: """
      const data = [{ key: 'Apple' }, { key: 'Banana' }, { key: 'Orange' }];
      // Each item in the array must have a unique 'key' property
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you optimize FlatList performance in React Native?",
        answer: "You can optimize `FlatList` performance by using `keyExtractor`, `getItemLayout`, and implementing pagination or lazy loading with `onEndReached`.",
        example: """
      import React from 'react';
      import { FlatList, Text } from 'react-native';

      const App = () => {
        const data = Array.from({ length: 1000 }, (_, i) => ({ key: i.toString(), value: i }));

        return (
          <FlatList
            data={data}
            keyExtractor={(item) => item.key}
            renderItem={({ item }) => <Text>{item.value}</Text>}
            onEndReached={() => console.log('Reached end of list')}
          />
        );
      };

      export default App;
      """
    ),

    // Storage

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is AsyncStorage in React Native?",
        answer: "AsyncStorage is a simple, asynchronous, unencrypted, persistent storage system for key-value pairs in React Native.",
        example: """
      import AsyncStorage from '@react-native-async-storage/async-storage';

      const storeData = async (value) => {
        try {
          await AsyncStorage.setItem('key', value);
        } catch (error) {
          console.error('Error saving data');
        }
      };

      const getData = async () => {
        try {
          const value = await AsyncStorage.getItem('key');
          console.log(value);
        } catch (error) {
          console.error('Error retrieving data');
        }
      };
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you clear data from AsyncStorage in React Native?",
        answer: "You can clear data from `AsyncStorage` using the `removeItem` or `clear` functions.",
        example: """
      import AsyncStorage from '@react-native-async-storage/async-storage';

      const clearData = async () => {
        try {
          await AsyncStorage.removeItem('key');
        } catch (error) {
          console.error('Error removing data');
        }
      };

      const clearAllData = async () => {
        try {
          await AsyncStorage.clear();
        } catch (error) {
          console.error('Error clearing storage');
        }
      };
      """
    ),

    // Security

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you secure sensitive data in React Native?",
        answer: "For securing sensitive data, you can use libraries such as `react-native-keychain` or secure storage mechanisms like `react-native-encrypted-storage`.",
        example: """
      import * as Keychain from 'react-native-keychain';

      const saveCredentials = async () => {
        await Keychain.setGenericPassword('username', 'password');
      };

      const getCredentials = async () => {
        const credentials = await Keychain.getGenericPassword();
        if (credentials) {
          console.log('Username:', credentials.username);
        }
      };
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is App Transport Security (ATS) in React Native for iOS?",
        answer: "App Transport Security (ATS) enforces secure communication over the network by requiring apps to use HTTPS. ATS is enabled by default in React Native for iOS apps.",
        example: """
      // You can disable ATS for certain domains in your Info.plist file.
      // <key>NSAppTransportSecurity</key>
      // <dict>
      //     <key>NSAllowsArbitraryLoads</key>
      //     <true/>
      // </dict>
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the purpose of SafeAreaView in React Native?",
        answer: "SafeAreaView is a component that renders content within the safe area boundaries of a device to avoid UI obstruction from notches, status bars, or navigation bars.",
        example: """
      import React from 'react';
      import { SafeAreaView, Text } from 'react-native';

      const App = () => (
        <SafeAreaView>
          <Text>This is safe from notches!</Text>
        </SafeAreaView>
      );

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle platform-specific code in React Native?",
        answer: "React Native provides the Platform module to detect whether the app is running on iOS or Android. You can use conditional logic to load platform-specific code.",
        example: """
      import React from 'react';
      import { Platform, Text, View } from 'react-native';

      const App = () => {
        return (
          <View>
            <Text>{Platform.OS === 'ios' ? 'Hello iOS' : 'Hello Android'}</Text>
          </View>
        );
      };

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is Flexbox in React Native?",
        answer: "Flexbox is a layout system in React Native that makes it easier to design UIs across different screen sizes. It allows you to arrange components in rows or columns and control their size and alignment.",
        example: """
      import React from 'react';
      import { View, Text } from 'react-native';

      const App = () => (
        <View style={{ flexDirection: 'row', justifyContent: 'space-between' }}>
          <Text>Item 1</Text>
          <Text>Item 2</Text>
          <Text>Item 3</Text>
        </View>
      );

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle images in React Native?",
        answer: "React Native provides the Image component for handling images. You can use the source prop to specify the image source, either locally or from a remote URL.",
        example: """
      import React from 'react';
      import { Image, View } from 'react-native';

      const App = () => (
        <View>
          <Image source={{ uri: 'https://example.com/myimage.jpg' }} style={{ width: 200, height: 200 }} />
        </View>
      );

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is `react-navigation` in React Native?",
        answer: "react-navigation is a popular library used for routing and navigation in React Native apps. It allows for stack, tab, and drawer navigations.",
        example: """
      import * as React from 'react';
      import { NavigationContainer } from '@react-navigation/native';
      import { createStackNavigator } from '@react-navigation/stack';

      const Stack = createStackNavigator();

      const HomeScreen = ({ navigation }) => (
        <View>
          <Text>Home Screen</Text>
        </View>
      );

      function App() {
        return (
          <NavigationContainer>
            <Stack.Navigator>
              <Stack.Screen name="Home" component={HomeScreen} />
            </Stack.Navigator>
          </NavigationContainer>
        );
      }

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you manage global state in React Native?",
        answer: "React Native uses third-party libraries like Redux or Context API to manage global state across the application.",
        example: """
      import React, { createContext, useContext, useState } from 'react';

      const GlobalStateContext = createContext();

      const GlobalStateProvider = ({ children }) => {
        const [state, setState] = useState("Initial State");

        return (
          <GlobalStateContext.Provider value={{ state, setState }}>
            {children}
          </GlobalStateContext.Provider>
        );
      };

      const SomeComponent = () => {
        const { state, setState } = useContext(GlobalStateContext);
        return (
          <View>
            <Text>{state}</Text>
            <Button title="Change State" onPress={() => setState("Updated State")} />
          </View>
        );
      };

      export { GlobalStateProvider, SomeComponent };
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What is the difference between `TouchableOpacity` and `TouchableHighlight`?",
        answer: "`TouchableOpacity` reduces the opacity of the component when pressed, while `TouchableHighlight` adds a highlight effect (background color change) when pressed.",
        example: """
      import React from 'react';
      import { Text, TouchableOpacity, TouchableHighlight, View } from 'react-native';

      const App = () => (
        <View>
          <TouchableOpacity onPress={() => alert('TouchableOpacity pressed')}>
            <Text>Press me (Opacity)</Text>
          </TouchableOpacity>
          
          <TouchableHighlight onPress={() => alert('TouchableHighlight pressed')} underlayColor="lightgray">
            <Text>Press me (Highlight)</Text>
          </TouchableHighlight>
        </View>
      );

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle text input in React Native?",
        answer: "Text input is handled using the `TextInput` component. It provides props like `onChangeText` to capture the user's input.",
        example: """
      import React, { useState } from 'react';
      import { TextInput, View, Text } from 'react-native';

      const App = () => {
        const [text, setText] = useState('');

        return (
          <View>
            <TextInput placeholder="Type here" onChangeText={text => setText(text)} value={text} />
            <Text>You typed: {text}</Text>
          </View>
        );
      };

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you implement conditional rendering in React Native?",
        answer: "Conditional rendering can be done using standard JavaScript logic like ternary operators or `if` statements to decide which component to render.",
        example: """
      import React, { useState } from 'react';
      import { View, Text, Button } from 'react-native';

      const App = () => {
        const [isVisible, setIsVisible] = useState(true);

        return (
          <View>
            {isVisible ? <Text>Visible Text</Text> : <Text>Text Hidden</Text>}
            <Button title="Toggle" onPress={() => setIsVisible(!isVisible)} />
          </View>
        );
      };

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you handle errors in React Native?",
        answer: "Errors in React Native can be handled using try-catch blocks or by using JavaScript error boundary techniques for UI errors.",
        example: """
      import React from 'react';
      import { Text, View } from 'react-native';

      const App = () => {
        try {
          throw new Error('Test Error');
        } catch (error) {
          return <Text>Error: {error.message}</Text>;
        }
      };

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "How do you refresh data in FlatList?",
        answer: "You can refresh data in `FlatList` by using the `refreshing` prop and the `onRefresh` function to handle pull-to-refresh actions.",
        example: """
      import React, { useState } from 'react';
      import { FlatList, Text, View, RefreshControl } from 'react-native';

      const App = () => {
        const [refreshing, setRefreshing] = useState(false);
        const [data, setData] = useState([{ key: 'Item 1' }, { key: 'Item 2' }]);

        const onRefresh = () => {
          setRefreshing(true);
          setTimeout(() => {
            setData([{ key: 'Item 3' }, { key: 'Item 4' }]);
            setRefreshing(false);
          }, 2000);
        };

        return (
          <FlatList
            data={data}
            renderItem={({ item }) => <Text>{item.key}</Text>}
            refreshControl={<RefreshControl refreshing={refreshing} onRefresh={onRefresh} />}
          />
        );
      };

      export default App;
      """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "Explain the concept of props in React Native.",
        answer: "Props (short for properties) are a way to pass data from parent to child components in React Native. They are immutable and are used to customize and configure child components based on their parent’s requirements.",
        example: """
  import React from 'react';
  import { Text, View } from 'react-native';

  const ChildComponent = (props) => {
    return (
      <View>
        <Text>{props.message}</Text>
      </View>
    );
  };

  const ParentComponent = () => {
    return (
      <ChildComponent message="Hello from Parent" />
    );
  };

  export default ParentComponent;
  """
    ),

    LearningDetail(
        learnerType: LearnerType.beginner,
        question: "What are state and setState in React Native?",
        answer: "State is a JavaScript object that represents the current condition or data of a component. setState is a method provided by React Native to update the state of a component, triggering a re-render of the UI based on the updated state.",
        example: """
  import React, { useState } from 'react';
  import { Text, Button, View } from 'react-native';

  const App = () => {
    const [count, setCount] = useState(0);

    return (
      <View>
        <Text>Count: {count}</Text>
        <Button title="Increase" onPress={() => setCount(count + 1)} />
      </View>
    );
  };

  export default App;
  """
    ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How does React Native handle navigation between screens?",
  answer: "React Native provides various navigation libraries such as React Navigation and React Native Navigation for handling navigation between screens. These libraries allow developers to define navigation stacks, tabs, and drawers to navigate between different parts of the application.",
  example: """
  // Example using React Navigation
  import * as React from 'react';
  import { Button, View, Text } from 'react-native';
  import { NavigationContainer } from '@react-navigation/native';
  import { createStackNavigator } from '@react-navigation/stack';

  function HomeScreen({ navigation }) {
    return (
      <View>
        <Text>Home Screen</Text>
        <Button
          title="Go to Details"
          onPress={() => navigation.navigate('Details')}
        />
      </View>
    );
  }

  function DetailsScreen() {
    return (
      <View>
        <Text>Details Screen</Text>
      </View>
    );
  }

  const Stack = createStackNavigator();

  function App() {
    return (
      <NavigationContainer>
        <Stack.Navigator initialRouteName="Home">
          <Stack.Screen name="Home" component={HomeScreen} />
          <Stack.Screen name="Details" component={DetailsScreen} />
        </Stack.Navigator>
      </NavigationContainer>
    );
  }

  export default App;
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Explain the concept of Redux in React Native and its benefits.",
  answer: "Redux is a state management library commonly used with React Native (and React) applications. It provides a centralized store to manage the state of the entire application, making it easier to maintain and debug complex state logic. Redux enables predictable state management and facilitates communication between components.",
  example: """
  // Example using Redux in React Native

  // actions.js
  export const increment = () => ({
    type: 'INCREMENT'
  });

  // reducer.js
  const initialState = { count: 0 };

  const counterReducer = (state = initialState, action) => {
    switch (action.type) {
      case 'INCREMENT':
        return { ...state, count: state.count + 1 };
      default:
        return state;
    }
  };

  export default counterReducer;

  // store.js
  import { createStore } from 'redux';
  import counterReducer from './reducer';

  const store = createStore(counterReducer);

  export default store;

  // App.js
  import React from 'react';
  import { Provider, useSelector, useDispatch } from 'react-redux';
  import { Text, Button, View } from 'react-native';
  import store from './store';
  import { increment } from './actions';

  const Counter = () => {
    const count = useSelector(state => state.count);
    const dispatch = useDispatch();

    return (
      <View>
        <Text>Count: {count}</Text>
        <Button title="Increment" onPress={() => dispatch(increment())} />
      </View>
    );
  };

  const App = () => (
    <Provider store={store}>
      <Counter />
    </Provider>
  );

  export default App;
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How can you improve performance in a React Native FlatList?",
  answer: "To improve performance in a FlatList, you can use techniques such as setting the `keyExtractor` prop, limiting re-renders by using `shouldComponentUpdate`, and optimizing the number of rendered items using `initialNumToRender`.",
  example: """
    <FlatList
      data={data}
      keyExtractor={(item) => item.id}
      initialNumToRender={10}
      shouldComponentUpdate={(nextProps) => nextProps.data !== this.props.data}
    />
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you persist Redux state in a React Native app?",
  answer: "To persist Redux state across app sessions, you can use libraries like `redux-persist`. It saves the state to AsyncStorage and rehydrates it on app restart.",
  example: """
    import { persistStore, persistReducer } from 'redux-persist';
    import AsyncStorage from '@react-native-async-storage/async-storage';
    import { createStore } from 'redux';

    const persistConfig = {
      key: 'root',
      storage: AsyncStorage,
    };

    const persistedReducer = persistReducer(persistConfig, rootReducer);

    const store = createStore(persistedReducer);
    const persistor = persistStore(store);
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What are React Native Hooks, and how can you use them for state management?",
  answer: "React Native Hooks such as `useState` and `useEffect` allow you to manage state and lifecycle methods in functional components, replacing class-based components for cleaner code.",
  example: """
    import React, { useState, useEffect } from 'react';
    import { Text, Button } from 'react-native';

    const Counter = () => {
      const [count, setCount] = useState(0);

      useEffect(() => {
        console.log('Component mounted or updated');
      }, [count]);

      return (
        <>
          <Text>Count: {count}</Text>
          <Button onPress={() => setCount(count + 1)} title="Increment" />
        </>
      );
    };
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you manage side effects in React Native with Redux Saga?",
  answer: "Redux Saga is a middleware that handles side effects in your application, such as asynchronous actions like API calls.",
  example: """
    import { call, put, takeEvery } from 'redux-saga/effects';
    import { fetchData } from './api';

    function* fetchDataSaga(action) {
      try {
        const data = yield call(fetchData, action.payload);
        yield put({ type: 'FETCH_SUCCESS', data });
      } catch (e) {
        yield put({ type: 'FETCH_FAILURE', message: e.message });
      }
    }

    function* mySaga() {
      yield takeEvery('FETCH_REQUEST', fetchDataSaga);
    }

    export default mySaga;
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you handle deep linking in React Native?",
  answer: "Deep linking allows the app to respond to URLs and open specific screens within the app. You can use React Navigation’s deep linking integration to handle this.",
  example: """
    import { NavigationContainer } from '@react-navigation/native';

    const linking = {
      prefixes: ['myapp://'],
      config: {
        screens: {
          Home: 'home',
          Profile: 'profile/:id',
        },
      },
    };

    export default function App() {
      return (
        <NavigationContainer linking={linking}>
          {/* screens go here */}
        </NavigationContainer>
      );
    }
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What are higher-order components (HOC) in React Native?",
  answer: "A higher-order component (HOC) is a function that takes a component and returns a new component with additional props or functionality.",
  example: """
    function withUser(Component) {
      return function EnhancedComponent(props) {
        const user = { name: 'John' }; // Mock user data
        return <Component {...props} user={user} />;
      };
    }

    const UserProfile = ({ user }) => <Text>{user.name}</Text>;

    export default withUser(UserProfile);
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you optimize image loading in React Native?",
  answer: "You can optimize image loading in React Native by using the `react-native-fast-image` library, which supports caching and image optimization features.",
  example: """
    import FastImage from 'react-native-fast-image';

    <FastImage
      style={{ width: 100, height: 100 }}
      source={{
        uri: 'https://example.com/your-image.jpg',
        priority: FastImage.priority.high,
      }}
    />
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is the purpose of the VirtualizedList in React Native?",
  answer: "The VirtualizedList in React Native provides a base implementation for rendering large lists efficiently by only rendering visible items.",
  example: """
    import { VirtualizedList } from 'react-native';

    const getItem = (data, index) => data[index];
    const getItemCount = (data) => data.length;

    <VirtualizedList
      data={yourData}
      renderItem={({ item }) => <Text>{item.name}</Text>}
      getItem={getItem}
      getItemCount={getItemCount}
    />
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you implement secure authentication in React Native using OAuth?",
  answer: "To implement secure OAuth-based authentication, you can use the `react-native-app-auth` library, which handles OAuth flows for authentication providers like Google, Facebook, etc.",
  example: """
    import { authorize } from 'react-native-app-auth';

    const config = {
      clientId: 'your-client-id',
      redirectUrl: 'your-app://redirect',
      scopes: ['openid', 'profile'],
      serviceConfiguration: {
        authorizationEndpoint: 'https://auth-server.com/authorize',
        tokenEndpoint: 'https://auth-server.com/token',
      },
    };

    const login = async () => {
      try {
        const result = await authorize(config);
        console.log(result.accessToken);
      } catch (error) {
        console.error(error);
      }
    };
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is a Context API in React Native, and how does it work?",
  answer: "The Context API allows you to share values (such as themes or user data) across your component tree without passing props manually through each component.",
  example: """
    import React, { createContext, useState } from 'react';

    const ThemeContext = createContext();

    const App = () => {
      const [theme, setTheme] = useState('light');

      return (
        <ThemeContext.Provider value={{ theme, setTheme }}>
          <ChildComponent />
        </ThemeContext.Provider>
      );
    };

    const ChildComponent = () => {
      const { theme } = React.useContext(ThemeContext);
      return <Text>{theme}</Text>;
    };
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you handle background tasks in React Native?",
  answer: "You can handle background tasks using libraries like `react-native-background-fetch` or `react-native-background-timer` to schedule and execute background tasks.",
  example: """
    import BackgroundFetch from 'react-native-background-fetch';

    BackgroundFetch.configure(
      { minimumFetchInterval: 15 },
      async (taskId) => {
        console.log('Background fetch executed');
        BackgroundFetch.finish(taskId);
      },
      (error) => {
        console.log('Background fetch failed:', error);
      }
    );
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How do you handle push notifications in React Native?",
  answer: "You can handle push notifications in React Native using services like Firebase Cloud Messaging (FCM) along with `react-native-push-notification` to schedule and manage notifications.",
  example: """
    import messaging from '@react-native-firebase/messaging';

    messaging().onMessage(async (remoteMessage) => {
      console.log('A new message arrived:', JSON.stringify(remoteMessage));
    });
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What are functional components in React Native, and why are they preferred over class components?",
  answer: "Functional components are stateless, lightweight components. With the introduction of React Hooks, functional components can now handle state and lifecycle methods, making them more concise than class components.",
  example: """
    import React, { useState } from 'react';
    import { Text, Button } from 'react-native';

    const Counter = () => {
      const [count, setCount] = useState(0);

      return (
        <>
          <Text>{count}</Text>
          <Button title="Increment" onPress={() => setCount(count + 1)} />
        </>
      );
    };
    """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Discuss the benefits and drawbacks of using Expo for React Native development.",
  answer: "Expo simplifies React Native development by providing pre-built components, tools, and services that allow quick setup without native module configuration. It supports over-the-air updates and offers APIs to access device features. However, it has drawbacks like limited native module support, larger app sizes due to its runtime, and dependency on Expo services for updates.",
  example: """
    // Example: Setting up an Expo project
    expo init MyNewApp
    cd MyNewApp
    expo start
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Explain the concept of 'props drilling' and how to avoid it.",
  answer: "Props drilling happens when props are passed from a parent component to deeply nested child components, leading to cluttered code. It can be avoided using the Context API or Redux to manage and share state across components without directly passing props down the tree.",
  example: """
    // Example: Using React's Context API
    const MyContext = React.createContext();

    function Parent() {
      const value = "Hello";
      return (
        <MyContext.Provider value={value}>
          <Child />
        </MyContext.Provider>
      );
    }

    function Child() {
      const value = useContext(MyContext);
      return <Text>{value}</Text>;
    }
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Explain the role of managed and bare workflows in Expo.",
  answer: "Expo's managed workflow simplifies development by handling most configurations and native dependencies. The bare workflow, however, gives full control over native code, allowing for deeper customizations. The bare workflow is better suited for apps requiring native modules or extensive customizations.",
  example: """
    // Switching from managed to bare workflow
    expo eject
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is the importance of gesture handling for creating rich and responsive user interfaces in React Native?",
  answer: "Gesture handling enhances user interfaces by providing natural, fluid interactions like swipes, pinches, and drags. Libraries like `react-native-gesture-handler` enable smooth gesture-based interactions, making it essential for rich UIs such as carousels, pull-to-refresh, or swiping between screens.",
  example: """
    import { GestureHandlerRootView } from 'react-native-gesture-handler';
    import { PanGestureHandler } from 'react-native-gesture-handler';

    const MyComponent = () => (
      <GestureHandlerRootView>
        <PanGestureHandler onGestureEvent={handleGesture}>
          <View style={styles.box} />
        </PanGestureHandler>
      </GestureHandlerRootView>
    );
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How can you handle offline storage in a React Native app?",
  answer: "Offline storage in React Native can be handled using `AsyncStorage` for key-value storage, or more robust solutions like `react-native-sqlite-storage` for SQLite databases, or Realm for NoSQL databases. For complex data, local databases can enhance performance.",
  example: """
    import AsyncStorage from '@react-native-async-storage/async-storage';

    const storeData = async (value) => {
      try {
        await AsyncStorage.setItem('@storage_Key', value);
      } catch (e) {
        // saving error
      }
    };

    const getData = async () => {
      try {
        const value = await AsyncStorage.getItem('@storage_Key');
        if(value !== null) {
          console.log(value);
        }
      } catch(e) {
        // error reading value
      }
    };
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Discuss the role of 'shouldComponentUpdate' in React Native.",
  answer: "`shouldComponentUpdate` is a lifecycle method used to control whether a component should update and re-render when its props or state changes. It can improve performance by preventing unnecessary renders.",
  example: """
    class MyComponent extends React.Component {
      shouldComponentUpdate(nextProps, nextState) {
        return nextProps.someValue !== this.props.someValue;
      }

      render() {
        return <Text>{this.props.someValue}</Text>;
      }
    }
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How can you achieve responsive design in React Native?",
  answer: "Responsive design in React Native can be achieved using Flexbox for dynamic layouts, the `Dimensions` API for screen size detection, and libraries like `react-native-responsive-screen` for responsive styling. These methods ensure layouts adapt to different screen sizes and orientations.",
  example: """
    import { Dimensions } from 'react-native';

    const { width, height } = Dimensions.get('window');

    const styles = StyleSheet.create({
      container: {
        width: width * 0.8, // 80% of the screen width
        height: height * 0.2, // 20% of the screen height
      },
    });
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What is the purpose of the 'PixelRatio' module in React Native?",
  answer: "The `PixelRatio` module helps scale the app's UI based on the pixel density of the device. It ensures consistent visual appearance across devices with different screen densities.",
  example: """
    import { PixelRatio } from 'react-native';

    const fontSize = PixelRatio.get() <= 2 ? 14 : 18;
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Explain the concept of 'NativeBase' and how it simplifies React Native development.",
  answer: "NativeBase is an open-source UI component library for React Native. It simplifies app development by providing a set of pre-designed, customizable components like buttons, cards, and modals. NativeBase ensures consistency across platforms and reduces development time by eliminating the need to write custom UI code.",
  example: """
    import { Button } from 'native-base';

    const MyButton = () => (
      <Button onPress={() => console.log('Pressed')}>Click Me</Button>
    );
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How can you implement a custom font in a React Native app?",
  answer: "To implement custom fonts, add the font files to the Android/iOS directories, link them using `react-native-link`, and specify the `fontFamily` in the Text component.",
  example: """
    const styles = StyleSheet.create({
      text: {
        fontFamily: 'CustomFont',
      },
    });

    const CustomText = () => <Text style={styles.text}>Hello World</Text>;
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Explain the purpose of the 'AppState' module in React Native.",
  answer: "The `AppState` module allows you to track the state of your app (foreground, background, or inactive). It is useful for performing tasks like pausing animations, refreshing data, or saving state when the app is minimized.",
  example: """
    import { AppState } from 'react-native';

    AppState.addEventListener('change', nextAppState => {
      if (nextAppState === 'background') {
        console.log('App is in background mode.');
      }
    });
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Describe the bridge communication in React Native.",
  answer: "The bridge in React Native allows communication between the JavaScript code and native platform code (iOS or Android). It facilitates asynchronous message passing between the two environments. Native modules can expose native functionality to the JavaScript side.",
  example: """
    import { NativeModules } from 'react-native';

    NativeModules.ToastExample.show('Hello from native!', NativeModules.ToastExample.LONG);
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "How does React Native achieve native performance?",
  answer: "React Native achieves native performance by mapping React components to native UI elements and using an asynchronous bridge to handle communication between JavaScript and native code. Heavy computations are done on the native side, ensuring smooth interactions.",
  example: """
    // React Native code for accessing a native module to perform a heavy task.
    NativeModules.HeavyTask.runHeavyComputation();
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "Explain the use of 'native modules' in React Native.",
  answer: "Native modules allow you to use platform-specific APIs and functionality in a React Native app. They bridge JavaScript code with native code, enabling access to native features like sensors, camera, and more.",
  example: """
    // JavaScript code to call a native module function
    NativeModules.CameraModule.takePicture();
  """
  ),

  LearningDetail(
  learnerType: LearnerType.intermediate,
  question: "What are the limitations of React Native?",
  answer: "While React Native is a powerful framework, it has some limitations like performance issues in complex tasks, limited access to native APIs, dependency on third-party libraries, and challenges in debugging and maintaining platform-specific designs.",
  example: """
    // React Native: Limitation with some native features requiring custom native modules
    NativeModules.CustomFeature.useNativeFeature();
  """
  ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement custom animations in React Native using the `Animated` API?",
        answer: "React Native's `Animated` API allows for smooth and highly performant animations. You can combine multiple animations using `Animated.timing`, `spring`, and `decay` for more complex interactions.",
        example: """
    import { Animated } from 'react-native';

    const MyAnimatedComponent = () => {
      const animatedValue = new Animated.Value(0);

      const startAnimation = () => {
        Animated.timing(animatedValue, {
          toValue: 1,
          duration: 1000,
          useNativeDriver: true,
        }).start();
      };

      return (
        <Animated.View style={{ opacity: animatedValue }}>
          <Text>Fade In</Text>
        </Animated.View>
      );
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you optimize React Native performance in large-scale applications?",
        answer: "For large-scale apps, optimizing performance can include using `FlatList` for long lists, minimizing re-renders with `React.memo`, using `shouldComponentUpdate`, lazy loading components, and optimizing images with `react-native-fast-image`.",
        example: """
    const MyList = ({ data }) => (
      <FlatList
        data={data}
        renderItem={({ item }) => <Text>{item.name}</Text>}
        keyExtractor={(item) => item.id}
        initialNumToRender={10}
        maxToRenderPerBatch={5}
        windowSize={10}
      />
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How does React Native handle multithreading and concurrency?",
        answer: "React Native is single-threaded for JavaScript execution but can use background threads for tasks like network requests or database operations using native modules or the `react-native-worker-threads` library.",
        example: """
    import Worker from 'react-native-worker-threads';

    const worker = new Worker('myWorker.js');
    worker.onmessage = (message) => {
      console.log(message);
    };
    worker.postMessage('Start long task');
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are Hermes and its benefits in React Native?",
        answer: "Hermes is a JavaScript engine optimized for running React Native apps on Android. It improves app startup time, memory usage, and overall performance by using features like bytecode precompilation and better garbage collection.",
        example: """
    // Enabling Hermes
    // android/app/build.gradle
    project.ext.react = [
      enableHermes: true  // Turn on Hermes
    ];
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement data encryption in React Native for secure storage?",
        answer: "For secure storage in React Native, you can use `react-native-encrypted-storage` for key-value data, which encrypts the data on disk using AES encryption. For more advanced security, you can create custom native modules using platform-specific encryption libraries.",
        example: """
    import EncryptedStorage from 'react-native-encrypted-storage';

    const storeSecureData = async (key, value) => {
      try {
        await EncryptedStorage.setItem(key, value);
      } catch (error) {
        console.log(error);
      }
    };

    const retrieveSecureData = async (key) => {
      try {
        return await EncryptedStorage.getItem(key);
      } catch (error) {
        console.log(error);
      }
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you use code splitting in React Native to reduce bundle size?",
        answer: "Code splitting in React Native can be achieved using dynamic imports and lazy loading components, which helps reduce the bundle size by loading components only when they are needed.",
        example: """
    import React, { Suspense, lazy } from 'react';
    const HeavyComponent = lazy(() => import('./HeavyComponent'));

    const MyComponent = () => (
      <Suspense fallback={<Text>Loading...</Text>}>
        <HeavyComponent />
      </Suspense>
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What are the key security risks in React Native, and how do you mitigate them?",
        answer: "Common security risks in React Native include data leaks, insecure storage, and unencrypted network traffic. Mitigation strategies include using HTTPS for all network requests, encrypting sensitive data with `react-native-encrypted-storage`, and securing authentication using OAuth or JWT tokens.",
        example: """
    // Example: Securing network traffic with HTTPS
    fetch('https://secure-api.com/data')
      .then(response => response.json())
      .then(data => console.log(data));
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle real-time data synchronization in React Native?",
        answer: "Real-time data synchronization can be handled using WebSockets, Firebase Realtime Database, or third-party libraries like `react-native-pusher` for integrating real-time push notifications and events.",
        example: """
    import { useEffect, useState } from 'react';
    import { WebSocket } from 'react-native';

    const MyComponent = () => {
      const [data, setData] = useState(null);
      const ws = new WebSocket('wss://example.com/socket');

      useEffect(() => {
        ws.onmessage = (e) => setData(e.data);
        return () => ws.close();
      }, []);

      return <Text>{data}</Text>;
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement efficient image caching in React Native?",
        answer: "Efficient image caching can be implemented using the `react-native-fast-image` library, which provides a performant image component with caching support and a priority system for loading images.",
        example: """
    import FastImage from 'react-native-fast-image';

    const MyImage = () => (
      <FastImage
        style={{ width: 200, height: 200 }}
        source={{
          uri: 'https://example.com/image.jpg',
          priority: FastImage.priority.high,
        }}
      />
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is the purpose of the `Reanimated` library in React Native?",
        answer: "`react-native-reanimated` is a powerful animation library that allows animations to run on the native thread, resulting in smoother performance compared to the default `Animated` API.",
        example: """
    import Animated, { useSharedValue, withTiming, useAnimatedStyle } from 'react-native-reanimated';

    const MyComponent = () => {
      const opacity = useSharedValue(0);

      const animatedStyle = useAnimatedStyle(() => ({
        opacity: withTiming(opacity.value, { duration: 500 }),
      }));

      return <Animated.View style={[{ width: 100, height: 100, backgroundColor: 'red' }, animatedStyle]} />;
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement state persistence across app restarts in React Native?",
        answer: "State persistence across app restarts can be achieved using libraries like `redux-persist`, which saves the Redux state to local storage or AsyncStorage and rehydrates it on app startup.",
        example: """
    import { persistStore, persistReducer } from 'redux-persist';
    import AsyncStorage from '@react-native-async-storage/async-storage';
    import { createStore } from 'redux';

    const persistConfig = {
      key: 'root',
      storage: AsyncStorage,
    };

    const persistedReducer = persistReducer(persistConfig, rootReducer);

    const store = createStore(persistedReducer);
    const persistor = persistStore(store);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "What is a memory leak in React Native, and how can you prevent it?",
        answer: "Memory leaks in React Native occur when references to objects are kept even after they are no longer needed. This can be prevented by properly cleaning up event listeners, timers, and avoiding retaining large objects unnecessarily.",
        example: """
    useEffect(() => {
      const interval = setInterval(() => {
        console.log('Interval running');
      }, 1000);

      return () => clearInterval(interval); // Cleanup
    }, []);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle large datasets efficiently in React Native?",
        answer: "Handling large datasets efficiently can be done using `FlatList` with pagination and on-demand loading of data. This reduces memory consumption by only rendering items that are currently visible.",
        example: """
    const MyList = () => (
      <FlatList
        data={data}
        renderItem={({ item }) => <Text>{item.name}</Text>}
        keyExtractor={(item) => item.id}
        onEndReached={loadMoreData}
        onEndReachedThreshold={0.5}
      />
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How can you handle the dynamic linking of libraries in a React Native project?",
        answer: "Dynamic linking of libraries in React Native can be handled using the `react-native link` command, which automates the linking of native modules. For more complex libraries or custom native modules, manual linking may be required, involving modification of native files directly.",
        example: """
    // Link a library automatically
    react-native link react-native-device-info

    // Manual linking requires modifying Android and iOS project files
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of 'Babel' and its role in React Native development.",
        answer: "Babel is a JavaScript compiler used in React Native to convert modern JavaScript (ES6+) into older versions (ES5) for compatibility across various platforms. It allows developers to use the latest language features like arrow functions, classes, and async/await in React Native while ensuring cross-platform support.",
        example: """
    // Babel config
    module.exports = {
      presets: ['module:metro-react-native-babel-preset'],
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the use of 'ErrorUtils' in error handling within a React Native app.",
        answer: "ErrorUtils is a utility in React Native for catching JavaScript errors that occur outside the normal execution flow, such as asynchronous errors. By using `ErrorUtils.setGlobalHandler`, you can set up a global error handler to catch and process unhandled exceptions, ensuring better error handling in production.",
        example: """
    ErrorUtils.setGlobalHandler((error, isFatal) => {
      if (isFatal) {
        console.error('Fatal error occurred: ', error);
      } else {
        console.warn('Non-fatal error: ', error);
      }
    });
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How would you implement a custom loading spinner in React Native?",
        answer: "A custom loading spinner in React Native can be created by using the `ActivityIndicator` component along with custom styles or additional UI elements. You can also create a reusable component that can be displayed during network requests or asynchronous tasks.",
        example: """
    const LoadingSpinner = ({ size = 'large', color = '#00ff00' }) => (
      <View style={styles.container}>
        <ActivityIndicator size={size} color={color} />
        <Text>Loading...</Text>
      </View>
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of 'code signing' and its importance in React Native app deployment.",
        answer: "Code signing is a security mechanism used to ensure the integrity and authenticity of an app during deployment. In React Native, code signing is required for both iOS (via provisioning profiles) and Android (via keystores) to ensure that the app has not been tampered with and is from a trusted source. It is essential for app store submission.",
        example: """
    // iOS code signing (Xcode)
    // Set up provisioning profiles and certificates for app signing.

    // Android code signing (build.gradle)
    signingConfigs {
      release {
        storeFile file("my-release-key.keystore")
        storePassword "password"
        keyAlias "my-key-alias"
        keyPassword "password"
      }
    }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the role of 'PureComponent' in React Native and when to use it.",
        answer: "`PureComponent` is a base class in React Native that optimizes rendering by automatically implementing shallow comparison of props and state. It prevents unnecessary re-renders when props or state have not changed, making it useful for components that receive the same data frequently.",
        example: """
    class MyPureComponent extends React.PureComponent {
      render() {
        return <Text>{this.props.name}</Text>;
      }
    }
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you create a custom transition animation between screens using 'react-navigation'?",
        answer: "You can create custom transition animations in `react-navigation` by configuring the `TransitionSpecs` and `screenInterpolator` properties. This allows you to define how one screen transitions into another, enabling unique user experiences.",
        example: """
    const MyStack = createStackNavigator();

    const customTransition = {
      gestureDirection: 'horizontal',
      transitionSpec: {
        open: { animation: 'timing', config: { duration: 500 } },
        close: { animation: 'timing', config: { duration: 500 } },
      },
      screenInterpolator: ({ current, next, layouts }) => {
        return {
          opacity: current.progress,
        };
      },
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the purpose of 'AccessibilityRole' and 'AccessibilityState' in React Native.",
        answer: "`AccessibilityRole` and `AccessibilityState` are attributes used to enhance the accessibility of components in React Native. `AccessibilityRole` defines the type of UI element (e.g., button, image, checkbox), and `AccessibilityState` defines the element's current state (e.g., checked, selected, disabled).",
        example: """
    <Button
      accessibilityRole="button"
      accessibilityState={{ disabled: false }}
      onPress={() => console.log('Pressed')}
    />
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle orientation changes in a React Native app?",
        answer: "Orientation changes in React Native can be handled using the `Dimensions` API or the `react-native-orientation` library. These tools allow you to detect orientation changes and adjust the layout or content of the app accordingly.",
        example: """
    import { Dimensions } from 'react-native';

    const { width, height } = Dimensions.get('window');

    useEffect(() => {
      const onChange = ({ window }) => {
        setWidth(window.width);
        setHeight(window.height);
      };
      Dimensions.addEventListener('change', onChange);

      return () => Dimensions.removeEventListener('change', onChange);
    }, []);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the purpose of the 'ImageBackground' component and its benefits.",
        answer: "`ImageBackground` allows you to place an image as the background of a container while overlaying other UI elements on top of it. This is useful for creating visually rich layouts with custom backgrounds while maintaining flexibility in the overlayed content.",
        example: """
    <ImageBackground
      source={{ uri: 'https://example.com/background.jpg' }}
      style={{ width: '100%', height: '100%' }}
    >
      <Text style={{ color: 'white' }}>Overlay Text</Text>
    </ImageBackground>
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the role of 'ActivityIndicator' in indicating a loading state in a React Native app.",
        answer: "`ActivityIndicator` is a built-in component in React Native used to display a spinner that indicates an ongoing loading or processing state. It is commonly used during network requests or asynchronous operations to let users know that the app is busy.",
        example: """
    const MyComponent = () => {
      const [loading, setLoading] = useState(true);

      useEffect(() => {
        fetchData().then(() => setLoading(false));
      }, []);

      return (
        <View style={styles.container}>
          {loading ? <ActivityIndicator size="large" color="#0000ff" /> : <Text>Data Loaded</Text>}
        </View>
      );
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How would you handle the global app state without Redux or Context API?",
        answer: "You can handle global state in React Native without Redux or Context API by using React hooks like `useState` and `useReducer` in combination with a custom hook or a simple state management module. You could also use local state in a top-level component and pass it down via props.",
        example: """
    const GlobalStateProvider = ({ children }) => {
      const [state, setState] = useState({ loggedIn: false });

      const toggleLogin = () => {
        setState({ loggedIn: !state.loggedIn });
      };

      return (
        <GlobalStateContext.Provider value={{ state, toggleLogin }}>
          {children}
        </GlobalStateContext.Provider>
      );
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the use of 'LayoutDebugger' in identifying layout issues in a React Native app.",
        answer: "`LayoutDebugger` is a development tool used to visually inspect layout issues in React Native. It overlays borders and highlights layout boundaries, helping to diagnose problems like misaligned components, incorrect spacing, or layout overflow.",
        example: """
    // You can use the developer menu to enable "Show Layout Bounds"
    // It highlights the layout boundaries of all visible elements in the app.
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the use of 'react-native-svg' for rendering vector graphics in a React Native app.",
        answer: "`react-native-svg` is a library that allows you to render scalable vector graphics (SVG) in a React Native app. SVGs are resolution-independent and can scale without losing quality, making them ideal for rendering icons, illustrations, and complex shapes.",
        example: """
    import Svg, { Circle, Rect } from 'react-native-svg';

    const MySvgComponent = () => (
      <Svg height="100" width="100">
        <Circle cx="50" cy="50" r="40" stroke="blue" strokeWidth="2.5" fill="green" />
        <Rect x="25" y="25" width="50" height="50" stroke="red" strokeWidth="2" fill="yellow" />
      </Svg>
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you handle version updates and migrations in a React Native project?",
        answer: "Handling version updates and migrations in React Native involves updating dependencies, testing thoroughly, and managing breaking changes carefully. Use the `react-native upgrade` command, test for compatibility with existing code, and perform updates in a development branch to ensure stability.",
        example: """
    // Example workflow:
    git checkout -b update/react-native-version
    react-native upgrade
    // Test for compatibility and resolve issues before merging the update.
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the process of integrating React Native with existing native code in an app.",
        answer: "To integrate React Native with existing native code, you create a bridge between JavaScript and native code (Java for Android, Objective-C/Swift for iOS). You can expose native functionality to JavaScript using native modules, and embed React Native views into native screens using `ReactRootView`.",
        example: """
    // iOS Example: Exposing native functionality
    @objc(NativeModule)
    class NativeModule: NSObject {
      @objc
      func someNativeFunction() {
        // Native functionality
      }
    }

    // JavaScript: Using the native module
    import { NativeModules } from 'react-native';
    const { NativeModule } = NativeModules;
    NativeModule.someNativeFunction();
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Describe the process of handling deep linking in a React Native application.",
        answer: "Handling deep linking involves configuring the app to respond to custom URL schemes or universal links. React Native's `Linking` module is used to handle incoming URLs and navigate to specific screens or perform actions based on the link's data.",
        example: """
    useEffect(() => {
      const handleDeepLink = (event) => {
        const url = event.url;
        const route = url.replace(/.*?:\/\//g, '');
        // Navigate to a specific screen based on the route
      };

      Linking.addEventListener('url', handleDeepLink);

      return () => Linking.removeEventListener('url', handleDeepLink);
    }, []);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the purpose of 'FlatList' and 'SectionList' for efficient data rendering.",
        answer: "`FlatList` and `SectionList` are efficient data rendering components in React Native. `FlatList` is used for rendering large, flat lists of data, while `SectionList` is used for lists with sections. Both components use virtualization to render only the visible items, improving performance for large datasets.",
        example: """
    const MyList = () => (
      <FlatList
        data={data}
        renderItem={({ item }) => <Text>{item.name}</Text>}
        keyExtractor={item => item.id}
      />
    );

    const MySectionList = () => (
      <SectionList
        sections={sections}
        renderItem={({ item }) => <Text>{item.name}</Text>}
        renderSectionHeader={({ section }) => <Text>{section.title}</Text>}
        keyExtractor={item => item.id}
      />
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the use of 'Geolocation' in obtaining the user's current location in a React Native app.",
        answer: "`Geolocation` is used to obtain the user's current geographic location in React Native. The `navigator.geolocation` object provides methods to request the user's location and handle permissions. You can also subscribe to location updates for real-time tracking.",
        example: """
    navigator.geolocation.getCurrentPosition(
      position => {
        const { latitude, longitude } = position.coords;
        console.log(`Latitude: \${latitude}, Longitude: \${longitude}`);
      },
      error => console.error('Error:', error),
      { enableHighAccuracy: true, timeout: 20000, maximumAge: 1000 }
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How do you implement a sliding menu (drawer) navigation in a React Native app?",
        answer: "You can implement sliding drawer navigation using the `createDrawerNavigator` function from the `react-navigation` library. It creates a navigation structure where the menu slides in from the edge of the screen.",
        example: """
    const Drawer = createDrawerNavigator();

    const MyDrawer = () => (
      <Drawer.Navigator>
        <Drawer.Screen name="Home" component={HomeScreen} />
        <Drawer.Screen name="Settings" component={SettingsScreen} />
      </Drawer.Navigator>
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the concept of 'Imperative vs Declarative' animations in React Native.",
        answer: "Imperative animations require explicit instructions for each step of the animation process, whereas declarative animations describe the final state, and React Native handles the transitions. Declarative animations (using the `Animated` library) are preferred for simpler code and better performance.",
        example: """
    // Declarative example
    const opacity = useRef(new Animated.Value(0)).current;

    useEffect(() => {
      Animated.timing(opacity, {
        toValue: 1,
        duration: 1000,
        useNativeDriver: true,
      }).start();
    }, []);

    return <Animated.View style={{ opacity }} />;
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the concept of 'Bridgeless' architecture in React Native (Hermes engine).",
        answer: "The 'Bridgeless' architecture refers to the elimination of the traditional React Native JavaScript-to-native bridge. With the Hermes engine, JavaScript is executed more directly within the native environment, improving performance, reducing memory usage, and speeding up app startup times.",
        example: """
    // Enabling Hermes in Android (build.gradle)
    project.ext.react = [
      enableHermes: true
    ];
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the purpose of 'VirtualizedList' and how it improves performance in long lists.",
        answer: "`VirtualizedList` is a component used by `FlatList` and `SectionList` for rendering large lists efficiently. It only renders the items visible within the viewport, thus reducing memory usage and improving performance when working with large datasets.",
        example: """
    const MyVirtualizedList = () => (
      <VirtualizedList
        data={data}
        initialNumToRender={4}
        renderItem={({ item }) => <Text>{item.name}</Text>}
        keyExtractor={item => item.id}
        getItemCount={data => data.length}
        getItem={(data, index) => data[index]}
      />
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the role of 'NetInfo' in managing network connectivity in React Native.",
        answer: "`NetInfo` is a React Native module that provides information about the network connection state, such as whether the device is online or offline. It also allows you to monitor changes in connectivity and adapt the app’s behavior accordingly.",
        example: """
    import NetInfo from '@react-native-community/netinfo';

    const MyComponent = () => {
      const [isConnected, setIsConnected] = useState(true);

      useEffect(() => {
        const unsubscribe = NetInfo.addEventListener(state => {
          setIsConnected(state.isConnected);
        });

        return () => unsubscribe();
      }, []);

      return (
        <View>
          <Text>{isConnected ? "Online" : "Offline"}</Text>
        </View>
      );
    };
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How can you implement GraphQL with a React Native app?",
        answer: "You can use Apollo Client to implement GraphQL in React Native. Apollo Client provides tools to make GraphQL queries and mutations while managing the app’s local and remote data. This allows for efficient state management and server communication.",
        example: """
    import { ApolloClient, InMemoryCache, ApolloProvider, useQuery, gql } from '@apollo/client';

    const client = new ApolloClient({
      uri: 'https://example.com/graphql',
      cache: new InMemoryCache()
    });

    const GET_DATA = gql\`
      query GetData {
        data {
          id
          name
        }
      }
    \`;

    const MyComponent = () => {
      const { loading, error, data } = useQuery(GET_DATA);

      if (loading) return <Text>Loading...</Text>;
      if (error) return <Text>Error! {error.message}</Text>;

      return (
        <FlatList
          data={data.data}
          renderItem={({ item }) => <Text>{item.name}</Text>}
          keyExtractor={item => item.id}
        />
      );
    };

    export default () => (
      <ApolloProvider client={client}>
        <MyComponent />
      </ApolloProvider>
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the purpose of 'PanResponder' for handling touch gestures.",
        answer: "`PanResponder` in React Native allows you to handle complex touch gestures such as dragging, swiping, and pinching. It provides methods to handle the various stages of touch events like touch start, movement, and release.",
        example: """
    const pan = useRef(new Animated.ValueXY()).current;

    const panResponder = PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onPanResponderMove: Animated.event([null, { dx: pan.x, dy: pan.y }], { useNativeDriver: false }),
      onPanResponderRelease: () => {
        Animated.spring(pan, { toValue: { x: 0, y: 0 }, useNativeDriver: false }).start();
      }
    });

    return (
      <Animated.View
        {...panResponder.panHandlers}
        style={[pan.getLayout(), { width: 100, height: 100, backgroundColor: 'blue' }]}
      />
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Describe the use of the 'Animated' library for creating complex animations.",
        answer: "The `Animated` library in React Native is used for creating performant animations by manipulating views in a way that optimizes updates to the UI thread. It supports various animation types like `spring`, `timing`, and `decay` and is essential for creating fluid animations in your app.",
        example: """
    const fadeAnim = useRef(new Animated.Value(0)).current;

    useEffect(() => {
      Animated.timing(fadeAnim, {
        toValue: 1,
        duration: 1000,
        useNativeDriver: true,
      }).start();
    }, []);

    return (
      <Animated.View style={{ opacity: fadeAnim }}>
        <Text>Fade In</Text>
      </Animated.View>
    );
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the use of 'CodePush' for over-the-air updates in React Native.",
        answer: "`CodePush` allows React Native apps to receive updates over-the-air, bypassing the need for users to download a new version from the app store. This is useful for pushing minor updates or bug fixes without releasing a full app update.",
        example: """
    import codePush from 'react-native-code-push';

    class App extends React.Component {
      componentDidMount() {
        codePush.sync({
          updateDialog: true,
          installMode: codePush.InstallMode.IMMEDIATE
        });
      }

      render() {
        return <YourAppComponent />;
      }
    }

    export default codePush(App);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How would you implement biometric authentication in a React Native app?",
        answer: "To implement biometric authentication in React Native, you can use the `react-native-biometrics` library, which provides support for fingerprint, Face ID, and Touch ID authentication. This can add an additional layer of security to sensitive parts of your app.",
        example: """
    import ReactNativeBiometrics from 'react-native-biometrics';

    const rnBiometrics = new ReactNativeBiometrics();

    rnBiometrics.simplePrompt({ promptMessage: 'Confirm fingerprint' })
      .then(resultObject => {
        const { success } = resultObject;

        if (success) {
          console.log('User authenticated');
        } else {
          console.log('User cancelled biometric prompt');
        }
      })
      .catch(() => {
        console.log('Biometrics failed');
      });
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the purpose of 'InteractionManager' module in React Native.",
        answer: "`InteractionManager` in React Native helps manage long-running tasks that shouldn’t block user interactions. It defers expensive operations until interactions and animations are completed, ensuring a smoother UI experience.",
        example: """
    useEffect(() => {
      InteractionManager.runAfterInteractions(() => {
        // Expensive task like data loading
      });
    }, []);
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Discuss the concept of 'React Native Fabric' and its advantages.",
        answer: "`React Native Fabric` is an ongoing architectural redesign that aims to improve performance, reduce memory usage, and optimize synchronization between JavaScript and native threads. It provides a more efficient layout system and better concurrency handling.",
        example: """
    // Fabric is still under development and requires enabling the feature in your React Native project.
    // Use Fabric's APIs when building high-performance apps with complex layouts and animations.
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "How can you implement real-time synchronization in a React Native app?",
        answer: "Real-time synchronization in a React Native app can be implemented using WebSockets, Firebase Realtime Database, or GraphQL subscriptions. These technologies allow data to be updated instantly across clients and the server, ensuring real-time collaboration or updates.",
        example: """
    const socket = new WebSocket('ws://your-websocket-url');

    socket.onmessage = (event) => {
      console.log('Message from server: ', event.data);
    };

    // Send data to the server
    socket.send(JSON.stringify({ message: 'Hello Server' }));
  """
    ),

    LearningDetail(
        learnerType: LearnerType.advanced,
        question: "Explain the purpose of 'BackHandler' in handling Android back button events.",
        answer: "`BackHandler` in React Native is used to manage the Android hardware back button. You can use it to define custom behavior when the user presses the back button, such as navigating between screens or exiting the app.",
        example: """
    useEffect(() => {
      const backAction = () => {
        Alert.alert("Hold on!", "Are you sure you want to go back?", [
          {
            text: "Cancel",
            onPress: () => null,
            style: "cancel"
          },
          { text: "YES", onPress: () => BackHandler.exitApp() }
        ]);
        return true;
      };

      const backHandler = BackHandler.addEventListener("hardwareBackPress", backAction);

      return () => backHandler.remove();
    }, []);
  """
    ),
  ];
}