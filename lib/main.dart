import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/pages/home.dart';

void main() {
  //function
  // void is return Type of main
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // method
    // Widget is return Type of build  and return type can be void int Widget(Component)
    bringVegetable(thela: true);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 66, 58, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  bringVegetable({@required bool thela: false, int rupees = 100}) {
    //@required and required
    print("thela $thela rupees $rupees");
  }
}
