import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:shesafe/screens/calculator.dart';
import 'package:shesafe/screens/login_screens/login_screen.dart';
import 'package:shesafe/screens/login_screens/profile.dart';
import 'package:shesafe/profile_page.dart';
import 'package:shesafe/screens/resource.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:http/http.dart' as http;

import '../utils/colors.dart';
import 'emergencypage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final String apiU = 'http://192.168.29.193:5000/send_alert'; // Replace with your Flask API endpoint
  final String fixedRecipientNumber = '+919354101897'; // Replace with your fixed recipient number

  Future<void> sendAlert() async {
    try {
      final response = await http.post(
        Uri.parse(apiU),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'recipient_number': fixedRecipientNumber}),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final messageSid = data['message_sid'];

        // Handle success, you can display a message or take further actions
        print('Alert message sent to fixed recipient. SID: $messageSid');
      } else {
        // Handle error
        print('Failed to send alert: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
      print('Error: $e');
    }
  }
  final String apiUrl = 'http://192.168.29.193:5000/make_call'; // Replace with your Flask API endpoint
  Future<void> makeEmergencyCall() async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: '{}', // An empty JSON object as the body
      );

      if (response.statusCode == 200) {
        // Handle success, you can display a message or take further actions
        print('Emergency call initiated.');
      } else {
        // Handle error
        print('Failed to make the emergency call. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exceptions
      print('Error: $e');
    }
  }

  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: <Widget>[
          EmergencyPage(),
          ResourcePage(),
          ContactsPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.house,
                color: _currentIndex == 0 ? headingColor : Color(0xffd3c2b8),
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.youtube,
                color: _currentIndex == 1 ? headingColor : Color(0xffd3c2b8),
              ),
              onPressed: () => _onItemTapped(1),
            ),
            SizedBox(width: 40), // Space for the FAB
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.phone,
                color: _currentIndex == 2 ? headingColor : Color(0xffd3c2b8),
              ),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.userLarge,
                color: _currentIndex == 3 ? headingColor : Color(0xffd3c2b8),
              ),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the central button
        },
        child: Icon(Icons.add,color: Color(0xffd3c2b8),),
        backgroundColor: headingColor,
        shape: CircleBorder(),
      ),

    );
  }
}
