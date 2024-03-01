import 'package:flutter/material.dart';

class KeyboardHeight extends StatefulWidget {
  const KeyboardHeight({super.key});

  @override
  State<KeyboardHeight> createState() => _KeyboardHeightState();
}

class _KeyboardHeightState extends State<KeyboardHeight> {
  @override
  Widget build(BuildContext context) {
    var keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Keyboard Height Using MediaQuery"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(7),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('$keyboardHeight'),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Using copyWith $keyboardHeight',
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                },
                child: const Text("Tap to hide keyboard"))
          ],
        ));
  }
}
