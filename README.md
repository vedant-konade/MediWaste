# MediWaste
Medical Waste classifier app

Overview:

MediWaste is an innovative mobile application designed to classify and manage medical waste efficiently using state-of-the-art machine learning techniques. This application aims to streamline waste categorization, reduce environmental impact, and promote safer disposal practices within the healthcare sector.

By leveraging Flutter for the frontend and YOLOv8 for waste classification, MediWaste delivers a seamless and intuitive user experience for healthcare workers, waste management professionals, and environmental agencies.

Features
Medical Waste Classification
Use advanced machine learning (YOLOv8) to accurately classify different types of medical waste in real-time.

User Authentication
Secure login and registration using Firebase Authentication.

Interactive Dashboard
Track and visualize waste disposal statistics.

Offline Mode
Perform waste classification even without an active internet connection.

Multi-Platform Support
Designed for both Android and iOS devices using Flutter.

Technologies Used:

Frontend: Flutter (Dart)
Backend: Firebase (Authentication, Cloud Storage)
Machine Learning Model: YOLOv8
Database: Firestore
Design and Prototyping: Figma


How It Works
Image Capture:
Users capture an image of medical waste using the app's built-in camera feature.

Classification:
The YOLOv8 model processes the image to classify the waste type (e.g., sharps, infectious, pathological).

Result Display:
The app displays the classification result, along with guidelines for proper disposal.

Data Storage:
Classification data is securely stored in Firestore for tracking and analysis.

Future Enhancements
Integration with Disposal Services:
Partnering with waste disposal companies for automated pickup requests.

Multilingual Support:
Adding support for regional languages to reach a broader audience.

Advanced Analytics:
Providing detailed insights and reports for healthcare organizations.

AI Model Updates:
Regular updates to improve classification accuracy.


