import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myplants/business/redux/app_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myplants/presentation/pages/homepage.dart';
import 'package:myplants/constants/apptheme.dart';
import 'package:myplants/routes/router_generator.dart';

Store<AppState> store;
void main() {
  store = Store(
    initialState: AppState.initialState(),
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      return Container();
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return CircularProgressIndicator();
    }

    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: appTheme(),
        onGenerateRoute: RouterGenerator.generateRoute,
      ),
    );
  }
}
