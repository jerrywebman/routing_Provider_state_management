import 'package:flutter/material.dart';
import 'package:routing/screens/first_screen.dart';
import 'package:routing/screens/second_screen.dart';
//step 2
import 'package:provider/provider.dart';
import 'package:routing/providers/count_provider.dart';

void main() {
  //step 3
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Counter(),
    ),
    //more can still come in
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}
