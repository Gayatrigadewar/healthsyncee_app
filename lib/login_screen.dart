import 'package:flutter/material.dart';

import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Login'),
      ),
      backgroundColor: Color(0xFF9EB384), // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'HealthSynee',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: Text(
                'Take the charge of your health',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 16),
            Container(
              // Mobile number input container
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to OTP screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
