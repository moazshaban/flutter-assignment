import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key, this.onHome});

  final VoidCallback? onHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.contact_mail_outlined,
                size: 76, color: Color(0xFF0F766E)),
            SizedBox(height: 20),
            Text(
              "Contact Page",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF102A43),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Get in touch with me!",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF627D98),
              ),
            ),
            SizedBox(height: 24),
            FilledButton.icon(
              onPressed: onHome,
              icon: const Icon(Icons.home_outlined),
              label: const Text('Back to Home'),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
