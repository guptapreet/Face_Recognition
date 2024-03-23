import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
// import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'face_detector_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title), // Using the provided title from widget
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Center(
      child: SizedBox(
        width: 350,
        height: 80,
        child: OutlinedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(BorderSide(
              color: Colors.blue,
              width: 1.0,
              style: BorderStyle.solid,
            )),
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  FaceDetectorPage(options: FaceDetectorOptions()),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconWidget(Icons.arrow_forward_ios),
              Text(
                'Go to Face Detector',
                style: TextStyle(fontSize: 20),
              ),
              _buildIconWidget(Icons.arrow_back_ios),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconWidget(final IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(
        icon,
        size: 24,
      ),
    );
  }
}
