import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';
import 'background_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PIPView(
      builder: (context, isFloating) {
        return Scaffold(
          resizeToAvoidBottomInset: !isFloating,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Expanded(
                      child: Center(child: Text('Hello flutter dev!'))),
                  MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      'Start pip view',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      PIPView.of(context)!
                          .presentBelow(const BackgroundScreen());

                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
