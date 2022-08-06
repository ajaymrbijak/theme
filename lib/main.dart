// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:theme/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trending Offers",
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text("Trending")),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructorsP
                Text("Trending Offers",
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                // const Themesof(),
                ElevatedButton(
                  child: const Text('Show Snackbar'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Awesome Snackbar!'),
                        action: SnackBarAction(
                          label: 'Action',
                          onPressed: () {
                            // Code to execute.
                          },
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
