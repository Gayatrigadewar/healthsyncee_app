import 'package:flutter/material.dart';
import 'package:hs/set_profile_screen.dart';

class TermsConditionsScreen extends StatefulWidget {
  @override
  _TermsConditionsScreenState createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  bool _isChecked = false;

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
        title: Text('Terms and Conditions'),
      ),
      backgroundColor: Color(0xFF9EB384),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms and Conditions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('1. Random term and condition text'),
            Text('2. Random term and condition text'),
            Text('3. Random term and condition text'),
            Text('4. Random term and condition text'),
            Text('5. Random term and condition text'),
            Text('6. Random term and condition text'),
            Text('7. Random term and condition text'),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Text('I agree'),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isChecked
                  ? () {
                // Navigate to the 4th screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SetProfileScreen(),
                  ),
                );
              }
                  : null,
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // White background color
              ),
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
