import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;

  const DetailsPage({
    Key? key,
    required this.title,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(title, style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 64, color: Colors.white),
              SizedBox(height: 24),
              Text(
                title,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text('Details page for $title', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
