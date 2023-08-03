import 'package:flutter/material.dart';
import 'package:medical/views/home.dart';

class Started extends StatelessWidget {
  const Started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset(
                "assets/images/start.jpg",
                // height: 50,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Container(
              // height: 90,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text(
                      "All specialists in one app",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(right: 78.0),
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Find your doctor and make an appointment with one tap",
                        // ignore: prefer_const_constructors
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              // ignore: prefer_const_constructors
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 400,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15.0)),
                          // ignore: prefer_const_constructors
                          child: Center(
                            // ignore: prefer_const_constructors
                            child: Text(
                              "Get Started",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    )
                    // InkWell(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
