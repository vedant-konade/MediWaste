import 'package:flutter/material.dart';
import 'dart:io';

class ResultScreen extends StatelessWidget {
  final File imageFile;
  final String classificationResult;
  final double accuracy;

  ResultScreen({required this.imageFile, required this.classificationResult, required this.accuracy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classification Result'),
      ),
      body: Column(
        children: [
          Image.file(imageFile, height: 200),
          SizedBox(height: 20),
          Text('Classification: $classificationResult', style: TextStyle(fontSize: 20)),
          Text('Accuracy: ${(accuracy * 100).toStringAsFixed(2)}%'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Save the result or navigate back
            },
            child: Text('Save Result'),
          ),
        ],
      ),
    );
  }
}
