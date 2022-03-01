import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstatemanagement/providers/counter_providers.dart';

import 'providers/shopping_card.dart';
import 'screen/first_screen.dart';
import 'screen/second_screen.dart';

void main() {
runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => ShoppingCard()),
      ],
      child: MyApp(),
    )
);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     initialRoute: '/',
      routes: {
        '/':(context)=>MyHomePage(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

