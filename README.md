# 1.1 Switch Dark Theme to Light Theme

<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/6085c50f-a9fc-40fb-8041-3dc65927dcd2" height=65% width=22%>
<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/358928af-65ba-4fa1-8230-2d9d3a33f278" height=65% width=22%>
<br><br>

# Example

```bash
theme: ThemeData.light(),
darkTheme: ThemeData.dark(),
themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
```

# 1.2 Create Registration Page using Stepper Widget

<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/d5e771d6-40bc-4f33-9cbe-4aa891d2b8ed" height=65% width=22%>
<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/28812f1f-3a5f-4d1a-a6d0-b2224e9bf2b8" height=65% width=22%>

# 1.3 Provider Tree

## 1) What is State?

Information that can be read synchronously when the widget is built and might change during the lifetime of the widget.

## 2) What is State Management?

State management in Dart and Flutter is all about managing the data that the app will render and how it will respond to user input. It's about tracking changes to the state and updating the UI to reflect these changes.

The state management categorizes into two conceptual types, which are given below:
### (i) `Ephemeral State` :- This state is also known as UI State or local state. It is a type of state which is related to the specific widget, or you can say that it is a state that contains in a single widget. In this kind of state, you do not need to use state management techniques.

## Example
```bash
class MyHomepage extends StatefulWidget {  
  @override  
  MyHomepageState createState() => MyHomepageState();  
}  
  
class MyHomepageState extends State<MyHomepage> {  
  String _name = "Sahil";  
  
  @override  
  Widget build(BuildContext context) {  
    return RaisedButton(  
        child: Text(_name),  
        onPressed: () {  
           setState(() {  
              _name = _name == "Sahil" ? "Vishal" : "Mayank";  
           });  
         },  
      );  
  }  
}  
```



### (ii) `App State` :- It is a type of state that we want to share across various parts of our app and want to keep between user sessions. Thus, this type of state can be used globally.

The simplest example of app state management can be learned by using the provider package. The state management with the provider is easy to understand and requires less coding. A provider is a third-party library. Here, we need to understand three main concepts to use this library.

Package for Provider

```bash
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version
```

-------------------------------------------------------------------------------------------------------------------------

- `ChangeNotifier` :- ChangeNotifier is a simple class, which provides change notification to its listeners. It is easy to understand, implement, and optimized for a small number of listeners. It is used for the listener to observe a model for changes. In this, we only use the notifyListener() method to inform the listeners.

## Example of ChangeNotifier

```bash
class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  
```

-------------------------------------------------------------------------------------------------------------------------

- `ChangeNotifierProvider` :- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.

## Example of ChangeNotifierProvider

```bash
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: ThemeData(  
        primarySwatch: Colors.indigo,  
      ),  
      home: ChangeNotifierProvider<CounterModel>(  
        builder: (_) => CounterModel(),  
        child: CounterView(),  
      ),  
    );  
  }  
}  
```

-------------------------------------------------------------------------------------------------------------------------

- `Consumer` :- It just calls the provider in a new widget and delegates its build implementation to the builder.

## Example of Consumer

```bash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
```
