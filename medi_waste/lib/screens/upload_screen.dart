import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload Medical Waste Image',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal, // AppBar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.teal.shade300,
              Colors.teal.shade700
            ], // Gradient color
          ),
        ),
        padding: EdgeInsets.all(16), // Padding for layout spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Page Title
            Text(
              'Select an Image to Classify',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Image Preview Section (only if an image is selected)
            _image != null
                ? Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.file(_image!, fit: BoxFit.cover),
                      ),
                      SizedBox(height: 20),
                    ],
                  )
                : SizedBox(), // No image preview if no image is selected

            // Upload Button
            ElevatedButton.icon(
              icon: Icon(Icons.photo_library, color: Colors.white),
              label: Text(
                'Choose Image',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal.shade600, // Button color
                padding: EdgeInsets.symmetric(
                    horizontal: 24, vertical: 12), // Button padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: _pickImage, // Image picker function
            ),
            SizedBox(height: 20),

            // Instruction Text
            Text(
              'Select an image of medical waste for classification.',
              style: TextStyle(fontSize: 16, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
