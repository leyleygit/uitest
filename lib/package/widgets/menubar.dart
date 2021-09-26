import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          image: DecorationImage(
              image: AssetImage('assets/img/profile.jpg'), fit: BoxFit.cover)),
    );
  }
}

class EISlocation extends StatelessWidget {
  const EISlocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.5,
                offset: Offset(0, 2.0),
                blurRadius: 2)
          ]),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              'EIS POIPET',
              style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              LineIcons.searchLocation,
              color: Colors.grey,
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}

class Request extends StatelessWidget {
  const Request({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.5,
                offset: Offset(0, 2.0),
                blurRadius: 2)
          ]),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              'Request',
              style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              LineIcons.pen,
              color: Colors.grey,
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}

class Attendance extends StatelessWidget {
  const Attendance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.5,
                offset: Offset(0, 2.0),
                blurRadius: 2)
          ]),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              'Attendance',
              style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              LineIcons.calendar,
              color: Colors.grey,
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}

class Exam extends StatelessWidget {
  const Exam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.5,
                offset: Offset(0, 2.0),
                blurRadius: 2)
          ]),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              'Exam',
              style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.note_outlined,
              color: Colors.grey,
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}

class Homebutton extends StatelessWidget {
  const Homebutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.5,
                offset: Offset(0, 2.0),
                blurRadius: 2)
          ]),
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Home',
              style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              width: 5,
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
