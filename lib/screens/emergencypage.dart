import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

import 'calculator.dart';

class EmergencyPage extends StatefulWidget {
   EmergencyPage({super.key});

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  final String apiU = 'http://192.168.137.138:5000/send_alert'; // Replace with your Flask API endpoint
  final String fixedRecipientNumber = '+916303082900';
  final quickActions = QuickActions();
  @override
  void initState(){
    super.initState();
    quickActions.setShortcutItems([
      ShortcutItem(type: 'LOW', localizedTitle: 'LOW') ,
      ShortcutItem(type: 'HIGH', localizedTitle: 'HIGH'),
      ShortcutItem(type: 'SEVERE', localizedTitle: 'SEVERE'),
    ]);
    quickActions.initialize((type) {
      if(type=='LOW')
      {
        sendAlert();
      }
      if(type=='HIGH')
      {
        makeEmergencyCall();
      }
      if(type=='SEVERE')
      {
        sendAlert();
        makeEmergencyCall();
      }

    });
  }



  http.Client client = http.Client();

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


  final String apiUrl = 'http://192.168.137.138:5000/make_call'; // Replace with your Flask API endpoint
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f4f3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xfff8f4f3),
        title: Text('EMERGENCY',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff4d3228),fontFamily: 'Alegraya'),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context)=>CalculatorApplication()));
            },
            icon: Icon(Icons.calculate_outlined,size: 40,color: Color(0xff4d3228),)
        ),],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:  EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 10,),

              Center(child: Text('The type of severity you select will act and inform the respective authorities',style: TextStyle(fontSize: 15,fontFamily: 'Outfit',color: Color(0xff4d3228)),)),
               SizedBox(
                height: 20,
              ),


              //LOW

              GestureDetector(
                onTap: (){
                  sendAlert();
                },
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff9bb168),
                    borderRadius:
                     BorderRadius.all(Radius.circular(40)),
                  ),
                  child:  Center(
                    child: Text(
                      'LOW',
                      style: TextStyle(
                        color: Color(0xfffcfefd),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20,
              ),

              //high

              GestureDetector(
                onTap: (){
                  makeEmergencyCall();
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffee7e1c),
                    borderRadius:
                     BorderRadius.all(Radius.circular(40)),
                  ),
                  height: 150,
                  child:  Center(
                    child: Text(
                      'HIGH',
                      style: TextStyle(
                        color:  Color(0xfffcfefd),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20,
              ),


              //severe

              GestureDetector(
                onTap: (){
                  sendAlert();
                  makeEmergencyCall();

                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffa18fff),
                    borderRadius:
                     BorderRadius.all(Radius.circular(40)),
                  ),
                  height: 150,
                  child:  Center(
                    child: Text(
                      'SEVERE',
                      style: TextStyle(
                        color:  Color(0xfffcfefd),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
