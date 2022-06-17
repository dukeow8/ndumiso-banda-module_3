import 'package:flutter/material.dart';
import 'package:ndumiso_banda_module_3/login.dart';

import 'package:ndumiso_banda_module_3/dashboard.dart';
import 'package:ndumiso_banda_module_3/main.dart';

class SecondFeatureScreen extends StatefulWidget {
  const SecondFeatureScreen({Key? key}) : super(key: key);

  @override
  State<SecondFeatureScreen> createState() => _SecondFeatureScreenState();
}

class _SecondFeatureScreenState extends State<SecondFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          'Mtn: Second Feature Screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Welcome to \n\n SECOND FEATURE SCREEN',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Tap the EXIT button below to exit the app.'
                      '\n\nTap the BACK TO HOME button below to go back to Dashboard.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        // ignore: prefer_const_constructors
                        builder: (context) => MyApp(),
                      ),
                    );
                  },
                  child: const Text(
                    'Exit',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(
                      color: Colors.white,
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
