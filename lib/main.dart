import 'package:feb_29/loading_fonts.dart';
import 'package:feb_29/task_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: const TextTheme(bodyLarge: TextStyle(fontSize: 10)),
        useMaterial3: true,
      ),
      home:  TaskList()
    );
  }
}
