import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var allergy_free;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [

          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              // Add your profile picture here
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF9EB384),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Medical records
                _buildSquareWidget('Medical Records', Icons.local_hospital),
                // Lab results
                _buildSquareWidget('Lab Results', Icons.local_pharmacy),
                // Allergy information
                _buildSquareWidget('Allergy Info', Icons.note),
              ],
            ),
            SizedBox(height: 40),
            // Second row of containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Living will
                _buildSquareWidget('Living Will', Icons.assignment),
                // Insurance details
                _buildSquareWidget('Insurance Details', Icons.local_offer),
                // Add Docs
                _buildSquareWidget('Add Docs', Icons.add_circle_outline),
              ],
            ),
            SizedBox(height: 16),
            // Bottom row of icons with text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconWithText('Doc Vault', Icons.folder),
                _buildIconWithText('Share Docs', Icons.share),
                _buildIconWithText('Trackers', Icons.track_changes),
                _buildIconWithText('Location', Icons.location_on),
                _buildIconWithText('Contact Us', Icons.contact_phone),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareWidget(String text, IconData iconData) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 40),
          SizedBox(height: 8),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildIconWithText(String text, IconData iconData) {
    return Column(
      children: [
        Icon(iconData, size: 30),
        SizedBox(height: 4),
        Text(text),
      ],
    );
  }
}
