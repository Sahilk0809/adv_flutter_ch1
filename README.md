# 1.1 Switch Dark Theme to Light Theme

<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/6085c50f-a9fc-40fb-8041-3dc65927dcd2" height=65% width=22%>
<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/358928af-65ba-4fa1-8230-2d9d3a33f278" height=65% width=22%>
<br>
<a href="https://github.com/Sahilk0809/adv_flutter_ch1/blob/master/lib/screens/Lec-1.1/view/dark_theme.dart"> Click here for the source code </a>
<br>

# Example

```bash
theme: ThemeData.light(),
darkTheme: ThemeData.dark(),
themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
```

# 1.2 Create Registration Page using Stepper Widget

<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/d5e771d6-40bc-4f33-9cbe-4aa891d2b8ed" height=65% width=22%>
<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/28812f1f-3a5f-4d1a-a6d0-b2224e9bf2b8" height=65% width=22%>

## Description

Flutter Stepper widget! This widget provides a smooth, guided experience for multi-step forms, allowing users to navigate through each step with ease. Perfect for any app requiring structured data input, the Stepper widget enhances user experience with its intuitive design and seamless functionality.

<a href="https://github.com/Sahilk0809/adv_flutter_ch1/tree/master/lib/screens/Lec-1.2/view"> Click for the source code </a>

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

## Provider Tree

<img src="https://github.com/sanjuafre123/adv_flutter_ch1/assets/148860124/5dd9c104-239c-49ae-9af2-7b0753d3dbeb" height=65%>


# 1.4 Provider & Change Theme using Provider and Shared Preferences

<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/dd622482-5de2-4bb1-8f15-541094e2c4d0" height=65% width=22%>
<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/4adb7169-1f74-4014-aebd-82f42a7ef422" height=65% width=22%>

## Description

Explore our latest Flutter project featuring dynamic light and dark themes using the Provider package! This setup allows users to switch seamlessly between themes, enhancing accessibility and user preference. Provider ensures efficient state management, making theme changes smooth and responsive. Perfect for modern apps prioritizing user experience and customization.

<a href="https://github.com/Sahilk0809/adv_flutter_ch1/blob/master/lib/screens/Lec-1.4/view/change_theme.dart"> Click here for the source code </a>

https://github.com/user-attachments/assets/1d5e0e9d-ee29-46b9-97d6-6d1bfd2dd217

# 1.5 Quotes Data Solving with Provider

<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/bf222b48-ee25-4c8e-b740-a9fba4e6b70f" height=65% width=22%>
<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/b50590a9-ed23-41b0-9b5e-a876032caecd" height=65% width=22%>
<img src="https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/ca77077c-651c-490d-abe0-a067614bbd14" height=65% width=22%>

<a href="https://github.com/Sahilk0809/adv_flutter_ch1/tree/master/lib/screens/Lec-1.5"> Click here for the source code </a>

https://github.com/Sahilk0809/adv_flutter_ch1/assets/149374235/d6258d32-b449-4c86-a2d9-53abf294ded7

# 1.5 One Time Intro Screen in Flutter 

<img src="https://github.com/user-attachments/assets/4007b3ef-6160-46ec-ae4f-8aca2e303e68" height=65% width=22%>
<img src="https://github.com/user-attachments/assets/519fac02-bb4c-4d4c-9c4a-8bcbcfcde358" height=65% width=22%>
<img src="https://github.com/user-attachments/assets/25570e2e-c49b-4784-956a-390ef20b9fc0" height=65% width=22%>
<img src="https://github.com/user-attachments/assets/246dd64f-f366-4426-b59b-6a3fa97817de" height=65% width=22%>

## Description

A one-time intro screen implemented with SharedPreferences in Flutter ensures that users only see the introductory content the first time they open the app. SharedPreferences is used to store a flag indicating whether the intro has been shown. Upon subsequent app launches, the app checks this flag and bypasses the intro if it has already been viewed, providing a smoother user experience by taking users directly to the main content.

<a href="https://github.com/Sahilk0809/adv_flutter_ch1/tree/master/lib/screens/Lec-1.5(2)"> Click here for the source code </a>

https://github.com/user-attachments/assets/4be9323b-e71b-493c-b7dc-1d9efcb9acb6


# 1.6 Contact Us Page With Interaction

## Example

```bash
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherProvider extends ChangeNotifier{

  void phoneLauncher()
  {
    Uri uri = Uri.parse('tel: +91 8153826814');
    launchUrl(uri);
  }
  void mailLauncher()
  {
    Uri uri = Uri.parse('mailto: rk4852115@gmail.com');
    launchUrl(uri);
  }
  void linkLauncher()
  {
    Uri uri = Uri.parse('https://www.linkedin.com/in/sahil-kashyap-125817298/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void instLauncher()
  {
    Uri uri = Uri.parse('https://www.instagram.com/sahil_kashyap_0809/');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
  void gitLauncher()
  {
    Uri uri = Uri.parse('https://github.com/Sahilk0809');
    launchUrl(uri,mode: LaunchMode.inAppWebView);
  }
}
```

<img src="https://github.com/user-attachments/assets/d69a956a-aa5f-4cae-92ec-fee548b76de9" height=65% width=22%>

## Description

A "Contact Us" page built with Flutter provides users with essential contact information and interactive features. It includes details such as phone number, email address, and links to social media profiles.

<a href="https://github.com/Sahilk0809/adv_flutter_ch1/tree/master/lib/screens/Lec-1.6"> Click here for the source code </a>

https://github.com/user-attachments/assets/827e59b6-3550-4be5-9b66-7b5b4848c5b1

# 1.7 Photo Gallery With Biometric Authentication

## Example

```bash
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class GalleryScreenProvider extends ChangeNotifier{
  final localAuth = LocalAuthentication();
  bool didAuthenticate = false;

  Future<void> authentication() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      'device not supported';
    }
    try {
      didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Please authenticate to access secure data',
      );
      didAuthenticate = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
```

<img src="https://github.com/user-attachments/assets/55372b67-ad0f-4232-ac3f-e5d5b727a652" height=65% width=22%>
<img src="https://github.com/user-attachments/assets/17333f51-b0a5-4c84-8a43-53f2eb28de05" height=65% width=22%>


## Description

A photo gallery with biometric authentication provides a secure way to access and manage your photos. Using advanced biometric methods like fingerprint or facial recognition, this gallery ensures that only authorized users can view or modify the images. This combination of security and convenience offers peace of mind, knowing that personal photos are protected from unauthorized access.

<a href="https://github.com/Sahilk0809/adv_flutter_ch1/tree/master/lib/screens/Lec-1.7"> Click here for the source code </a>

https://github.com/user-attachments/assets/63766bca-071d-4d8c-918e-321c48b25370
