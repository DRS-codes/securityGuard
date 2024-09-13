
import 'package:assignment/clockin.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Clock1 extends StatefulWidget {
  const Clock1({super.key});

  @override
  State<Clock1> createState() => _ClockState();
}

class _ClockState extends State<Clock1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43, 0, 124),
        foregroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_time_filled,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Clock In/Out'),
              ],
            ),
            IconButton(
                onPressed: () {
                  showpopup(context);
                },
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ))
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 43, 0, 124),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 500,
              color: Color.fromARGB(255, 43, 0, 124),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 43, 0, 124),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.79,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 100),
                                  child: DottedBorder(
                                    borderType: BorderType.RRect,
                                    radius: Radius.circular(150),
                                    padding: EdgeInsets.all(16),
                                    strokeWidth: 10,
                                    dashPattern: [40, 20],
                                    color: Colors.green,
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('lib/2.jpg'),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(150)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  'Verify To Clock In/Out',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: Text(
                                    'Please ensure your head is positioned within the circle for accurate facial scanning',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'PHOTO',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(150),
                                        border: Border.all(
                                            width: 2,
                                            color: Color.fromARGB(
                                                255, 255, 209, 59))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 255, 209, 59),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Center(
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Mycol(),
                                                  ),
                                                );
                                              },
                                              icon: Icon(
                                                Icons.camera_alt,
                                                color: Colors.white,
                                                size: 40,
                                              )),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: FaIcon(
                                    FontAwesomeIcons.cameraRotate,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showpopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.07,
              left: MediaQuery.of(context).size.width * 0.3,
              child: Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Material(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star),
                            Text('Message from HR'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Text('Notification Setting'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Text('About'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
