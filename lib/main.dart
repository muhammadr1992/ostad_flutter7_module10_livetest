import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling and Snackbar'),
        ),
        body: TextStylingExample(),
      ),
    );
  }
}

class TextStylingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 32, // Larger font size for title
              fontWeight: FontWeight.bold, // Bold font
            ),
          ),
          SizedBox(height: 10), // Spacer between title and subtitle
          Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 18, // Smaller font size for subtitle
              fontStyle: FontStyle.italic, // Italic font
            ),
          ),
          SizedBox(height: 20), // Spacer between subtitle and button
          TextButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('You clicked the button!'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Click Me'),
          ),
        ],
      ),
    );
  }
}