import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(
      {super.key, required this.title, required this.details, this.image});
  final String title;
  final String details;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff0ea4c9),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          16.0,
        ),
        child: Column(
          children: [
            if (image != null)
              Image.asset(
                image!,
                width: 300,
              ),
            SizedBox(
              height: 30,
            ),
            Text(details),
          ],
        ),
      ),
    );
  }
}
