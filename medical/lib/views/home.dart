// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:medical/utils/doctorsList.dart';
// import 'package:medical/utils/hospitalActivities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(iconSize: 22, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.house_outlined, color: Colors.black54),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined, color: Colors.black54),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none, color: Colors.black54),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined, color: Colors.black54),
            label: ''),
      ]),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: 10),

            // User name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Funnn",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/images/q.jpg"),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),

            // How do you fill card
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/surgeon.png",
                    width: 90,
                    height: 90,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          "Fill out your medical right now",
                          style: TextStyle(color: Colors.black87, fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        child: Container(
                          width: 150,
                          height: 35,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Main column seperator
            SizedBox(height: 10),

            // Search bar par
            Container(
              padding: EdgeInsets.only(left: 15.0),
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(95, 179, 173, 173),
                  borderRadius: BorderRadius.circular(15.0)),
              // width: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "How can we help you?",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),

            // Main column seperator
// Main column separator - Replaced with a drop-down list (ExpansionTile)
            SingleChildScrollView(
              child: ExpansionTile(
                title: Text(
                  'Main List',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                children: [
                  ListTile(
                    leading:Icon(Icons.cleaning_services),
                    title: Text('Dentist'),
                    onTap: () {
                      // Handle Dentist item click event here
                      // You can navigate to a new screen or perform any other action.
                      print('Dentist clicked');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.thermostat),
                    title: Text('Surgeon'),
                    onTap: () {
                      // Handle Surgeon item click event here
                      // You can navigate to a new screen or perform any other action.
                      print('Surgeon clicked');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.science),
                    title: Text('Physiologist'),
                    onTap: () {
                      // Handle Therapy item click event here
                      // You can navigate to a new screen or perform any other action.
                      print('Therapy clicked');
                    },
                  ),
                  // ListTile(
                  //   leading: Image.asset("assets/images/hormones.png"),
                  //   title: Text('Physiologist'),
                  //   onTap: () {
                  //     // Handle Physiologist item click event here
                  //     // You can navigate to a new screen or perform any other action.
                  //     print('Physiologist clicked');
                  //   },
                  // ),
                ],
              ),
            ),

            // Main column seperator
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Doctor list",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.black45, fontSize: 15),
                ),
              ],
            ),

            // Main seperator
            SizedBox(
              height: 20,
            ),

            Container(
              height: 185,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorList(
                    image: "assets/images/q.jpg",
                    name: "Lonla Joel",
                    post: "Therapist",
                    experience: 4,
                  ),
                  DoctorList(
                    image: "assets/images/knife.png",
                    name: "Killer",
                    post: "Therapist",
                    experience: 4,
                  ),
                  DoctorList(
                    image: "assets/images/wm.jpg",
                    name: "Tiomela Lyze",
                    post: "Odontologist",
                    experience: 4,
                  ),
                  DoctorList(
                    image: "assets/images/doctor3.png",
                    name: "Brownson",
                    post: "Surgeon",
                    experience: 4,
                  ),
                  DoctorList(
                    image: "assets/images/doctor4.png",
                    name: "Zok Guy",
                    post: "Ophtamologist",
                    experience: 4,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
