import 'package:flutter/material.dart';
import 'package:main_module/core/router_register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
  //  return SplashScreen();
}

final _route = RouterRegister.getInstance().router;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Go Router',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: _route,
    );
  }
}

