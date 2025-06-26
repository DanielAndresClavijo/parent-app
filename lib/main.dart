import 'package:flutter/material.dart';
import 'package:micro_app_one/micro_app_one.dart';
import 'package:common_ui/common_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modular Super App',
      theme: CommonUITheme.getTheme(),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Welcome to the Modular Super App!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              Card(
                elevation: 4,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MicroAppPage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Icon(Icons.apps, size: 48),
                        SizedBox(height: 16),
                        Text(
                          'Micro App One',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Click to open the first micro application.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MicroAppPage extends StatelessWidget {
  const MicroAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Micro App One'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(child: MicroAppOneWidget()),
    );
  }
}
