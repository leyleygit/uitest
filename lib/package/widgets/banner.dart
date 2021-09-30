import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class incommingclassWidget extends StatelessWidget {
  const incommingclassWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      // color: Colors.blue,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 1,
                        blurRadius: 3.0,
                        offset: Offset(0.0, 2.0))
                  ],
                  border:
                      Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Friday',
                          style: GoogleFonts.ubuntu(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '13:30-14:30',
                          style: GoogleFonts.ubuntu(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'S-02-G-5 T-3&4 Level 11 Adult',
                    style: GoogleFonts.ubuntu(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    height: 0,
                    color: Color(0xffD2D2D2),
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        height: 30,
                        child: Center(child: Icon(Icons.calendar_today_rounded,color: Colors.white,size: 17,),),
                        decoration: BoxDecoration(color: colorSubclass[index],borderRadius: BorderRadius.circular(4.0)),
                      ),
                      Text(
                        'English Core',
                        style: GoogleFonts.ubuntu(
                            color: colorSubclass[index], fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Color> colorSubclass = [
  Color(0xff071A50),
  Color(0xff6D7E90),
  Color(0xff6D7E90),
  Color(0xff6D7E90),
  Color(0xff6D7E90),
  Color(0xff6D7E90),
];
