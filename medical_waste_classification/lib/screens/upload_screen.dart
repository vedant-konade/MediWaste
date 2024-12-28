import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../services/api_service.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? _image;
  Map<String, dynamic>? _classificationResult;

  Future<void> _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
      _classifyImage(File(pickedImage.path));
    }
  }

  void _classifyImage(File image) async {
    var apiService = ApiService();
    var result = await apiService.classifyImage(image);
    setState(() {
      _classificationResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload and Classify")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_image != null) Image.file(_image!, height: 200),
          if (_classificationResult != null)
            Text("Classification Result: ${_classificationResult!['predictions']}"),
          ElevatedButton(
            onPressed: _pickImage,
            child: Text("Choose Image"),
          ),
        ],
      ),
    );
  }
}
