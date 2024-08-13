import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../utils/colors.dart';

class ResourcePage extends StatefulWidget {
  const ResourcePage({super.key});

  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {

  _launchURL1() async {
    const url = "tel://10920"; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL2() async {
    const url = "tel://(011) 24373736"; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL3() async {
    const url = "tel://7827170170"; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL4() async {
    const url = "tel://1091"; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL5() async {
    const url = 'https://www.domesticshelters.org/en-in/domestic-abuse-help-in-india'; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL6() async {
    const url = "tel://011 26692700"; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL7() async {
    const url = 'http://www.menwelfare.in/'; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL8() async {
    const url = 'https://www.daaman.org/'; // Replace with the URL you want to open
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xfff8f4f3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xfff8f4f3),
        title: Text('RESOURCES',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff4d3228),fontFamily: 'Alegraya'),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('You can refer these resources in case of any help you will need:',style: TextStyle(fontSize: 15,fontFamily: 'Outfit',color: Color(0xff4d3228)),),
            ),
            Text('Youtube Videos on Self-Defence',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff4d3228),fontFamily: 'Alegraya')),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: 'ERMZRMqQmVI',
                          flags: const YoutubePlayerFlags(
                            autoPlay: false,
                            mute: true,
                          ),
                        ),
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.blue,
                        progressColors: const ProgressBarColors(
                            playedColor: Colors.blue,
                            handleColor: Colors.blueAccent
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: 'S32KxQK0Ydg',
                          flags: const YoutubePlayerFlags(
                            autoPlay: false,
                            mute: true,
                          ),
                        ),
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.blue,
                        progressColors: const ProgressBarColors(
                            playedColor: Colors.blue,
                            handleColor: Colors.blueAccent
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: '70vtcFQwnVM',
                          flags: const YoutubePlayerFlags(
                            autoPlay: false,
                            mute: true,
                          ),
                        ),
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.blue,
                        progressColors: const ProgressBarColors(
                            playedColor: Colors.blue,
                            handleColor: Colors.blueAccent
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId: 'pndPbpHLpos',
                          flags: const YoutubePlayerFlags(
                            autoPlay: false,
                            mute: true,
                          ),
                        ),
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.blue,
                        progressColors: const ProgressBarColors(
                            playedColor: Colors.blue,
                            handleColor: Colors.blueAccent
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('Websites/NGOs',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff4d3228),fontFamily: 'Alegraya')),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL5();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFFfe814b), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFfe814b), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    'Domestic Shelters',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL6();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFFfe814b), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFfe814b), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    'Jagori NGO',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL7();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFFfe814b), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFfe814b), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    "Men's Welfare",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL8();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFFfe814b), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFfe814b), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    "Daaman",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Text('Helpline Numbers',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xff4d3228),fontFamily: 'Alegraya')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL1();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFF9bb168), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF9bb168), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    'Shakti Shalini: 10920',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL2();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFF9bb168), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF9bb168), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    "Women's shelter: 24373736",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL3();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFF9bb168), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF9bb168), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    "National Commission for Women Helpline: 7827170170",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                onPressed: () {
                  _launchURL4();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, backgroundColor: Color(0xFF9bb168), // Solid background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Optional: Rounded corners
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF9bb168), // Solid background color
                    borderRadius: BorderRadius.circular(12), // Match button shape
                  ),
                  padding: EdgeInsets.all(16.0), // Add padding to the container
                  child: Text(
                    "Police Helpline: 1091",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, // Text color
                      fontFamily: 'Outfit', // Font family
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    ));
  }
}
