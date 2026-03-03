import 'package:flutter/material.dart';

class appStructure extends StatefulWidget {
  const appStructure({super.key});

  @override
  State<appStructure> createState() => _MyAppState();
}

class _MyAppState extends State<appStructure> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise 4',

      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 4 - App Structure'),
          actions: [
            Row(
              children: [
                const Text("Dark"),
                Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),

        body: const Center(
          child: Text(
            'This is a simple screen with theme toggle.',
            style: TextStyle(fontSize: 18),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('FAB Pressed!'),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}