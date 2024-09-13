import 'package:assignment/sites.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
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
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 43, 0, 124),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              child: Container(
                height: 100,
                width: 500,
                color: Color.fromARGB(255, 43, 0, 124),
              ),
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
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.85,
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sites(),
                                ),
                              );
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 209, 59),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          const Color.fromARGB(137, 66, 66, 66),
                                      blurRadius: 20,
                                      offset: Offset(8, 12)),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Clock In',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 30,
              left: MediaQuery.of(context).size.width * 0.1,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(8, 10),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Icon(
                            Icons.settings_outlined,
                            color: Color.fromARGB(255, 43, 0, 124),
                          ),
                        ),
                        Text(
                          'Total Working Hours',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Work',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('02:00Hrs')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Break',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('01:00Hrs')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Remaining',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('00:30Hrs')
                          ],
                        ),
                      ],
                    )
                  ],
                ),
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
