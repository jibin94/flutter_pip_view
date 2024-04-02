import 'package:flutter/material.dart';
import 'package:flutter_pip_view/form_page.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Expanded(
                child: Center(
                  child: Text(
                      'This is the background page!. If you tap on the floating screen, it stops floating. Navigation works as expected.'),
                ),
              ),
              MaterialButton(
                color: Theme.of(context).primaryColor,
                child: const Text('Next Page',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FormPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
