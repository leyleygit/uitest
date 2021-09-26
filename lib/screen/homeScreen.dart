import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uilogin/package/themecolors.dart';
import 'package:uilogin/package/widgets/menubar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.bg2,
      body: Row(
        children: [
          //Home
          Expanded(
            flex: 3,
            child: Container(
              width: size.width,
              height: size.height,
              color: MyTheme.bg2,
              //color: Colors.red,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //menu bar
                  Row(
                    children: [
                      //profile
                      Profile(),
                      SizedBox(
                        width: 20,
                      ),
                      //home button
                      Homebutton(),
                      //space
                      Expanded(
                        child: Container(),
                        flex: 2,
                      ),
                      Exam(),
                      SizedBox(
                        width: 20,
                      ),
                      //attendace
                      Attendance(),

                      SizedBox(
                        width: 20,
                      ),
                      //Request
                      Request(),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      EISlocation(),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Color(0xffD2D2D2),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //body
                  Container(
                    width: 900,
                    height: 800,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Color(0xffE9E9EA))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            //my classroom
                            Container(
                              //color: Colors.grey,
                              width: 160,
                              height: 70,
                              child: Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      LineIcons.school,
                                      color: Color(0xff889af5),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('MY CLASSROOM',
                                        style: GoogleFonts.ubuntu(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                              flex: 1,
                            ),
                            //year
                            Container(
                              // color: Colors.grey,
                              width: 200,
                              height: 70,
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(
                                      LineIcons.calendar,
                                      color: Color(0xff889Af5),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('YEAR :',
                                        style: GoogleFonts.ubuntu(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff000000))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 70,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xffEEF3FC),
                                            borderRadius:
                                                BorderRadius.circular(7.0)),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('2021',
                                                  style: GoogleFonts.ubuntu(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Color(0xff09AE03))),
                                              Icon(
                                                LineIcons.arrowDown,
                                                color: Colors.black,
                                                size: 15,
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                              flex: 1,
                            ),
                            //search classroom
                            Container(
                              width: 300,
                              height: 40,
                              child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      suffixIcon: TextButton(
                                        child: Icon(
                                          LineIcons.arrowCircleRight,
                                          color: Color(0xff889Af5),
                                        ),
                                        onPressed: () {},
                                      ),
                                      hintText: 'SEARCH CLASSROOM',
                                      hintStyle: GoogleFonts.ubuntu(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 12),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                              color: Color(0xff889Af5))))),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                        Divider(
                          height: 0,
                          color: Color(0xffE9E9EA),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            //room
                            Container(
                              width: 150,
                              height: 70,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'room',
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                              flex: 1,
                            ),
                            //category class
                            Container(
                              width: 170,
                              height: 70,
                              //color: Colors.grey,
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.grid_view_outlined,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'category class',
                                      style: GoogleFonts.ubuntu(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                              flex: 2,
                            ),
                            //total section
                            Container(
                              width: 170,
                              height: 70,
                              child: Center(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer_rounded,
                                      size: 18,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'total section',
                                      style: GoogleFonts.ubuntu(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            )
                          ],
                        ),
                        Divider(
                          height: 0,
                          color: Color(0xffD2D2D2),
                          thickness: 0.5,
                        ),
                        Container(
                          width: 900,
                          height: 650,
                          // color: Colors.pink[100],
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 1,
                                            blurRadius: 3.0,
                                            offset: Offset(0.0, 2.0))
                                      ],
                                      color: MyTheme.activecolor,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text('room 1-04',
                                            style: GoogleFonts.ubuntu(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Expanded(
                                          child: Container(),
                                          flex: 1,
                                        ),
                                        Text(
                                          'G5 T3&T4 Level 9 Adults',
                                          style: GoogleFonts.ubuntu(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Expanded(
                                          child: Container(),
                                          flex: 2,
                                        ),
                                        Text(
                                          '3H',
                                          style: GoogleFonts.ubuntu(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //Incomming class
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalDivider(
                    color: Color(0xffD2D2D2),
                    thickness: 1,
                    width: 0,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Column(
                    children: [
                      Text('hi')
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
