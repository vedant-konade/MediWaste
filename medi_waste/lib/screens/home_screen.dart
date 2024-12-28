import 'package:flutter/material.dart';
import 'package:medi_waste/Screens/upload_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WasteGuardian',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.camera_alt,
                    color: Colors.white), // Icon color set to white
                label: Text(
                  'Upload Medical Waste Image',
                  style:
                      TextStyle(color: Colors.white), // Text color set to white
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromRGBO(0, 137, 123, 1), // Button background color
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  // Navigate to the UploadScreen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            UploadScreen()), // UploadScreen will be the next screen
                  );
                },
              ),
              SizedBox(height: 20),
              Text('Recent Classifications:',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              // Add recent classifications list here
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Classification History'),
              onTap: () {
                // Navigate to History screen
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
