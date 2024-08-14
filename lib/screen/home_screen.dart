import 'package:flutter/material.dart';
import 'package:live_exam/widgets/custom_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Text Styling',
              style: customTextStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Experiment with text styles',
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'You clicked the button!',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
              child: const Text(
                'Click Me',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: const TextSpan(
                text: 'Welcome to ',
                children: [
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
