import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isCheck = false;
  final _formKey = GlobalKey<FormState>();
  FocusNode _accNode = FocusNode();
  FocusNode _passNode = FocusNode();
  bool _isAccIconColorTextField = false;
  bool _isPassIconColorTextField = false;
  @override
  void initState() {
    _accNode.addListener(() {
      print("Has focus: ${_accNode.hasFocus}");
      setState(() {
        _isAccIconColorTextField = _accNode.hasFocus;
      });
    });
    _passNode.addListener(() {
      setState(() {
        _isPassIconColorTextField = _passNode.hasFocus;
      });
    });
    super.initState();
  }

  final ButtonStyle styles =
      ElevatedButton.styleFrom(textStyle: GoogleFonts.ubuntu());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Stack(
            children: [
              Container(
                //color: Colors.red,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Teach Book',
                        style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.7)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Form(
                          child: Column(
                        key: _formKey,
                        children: [
                          // account
                          Container(width: 350,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              focusNode: _accNode,
                              decoration: InputDecoration(
                                  prefixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 20),
                                      child: Icon(
                                        Icons.person_outline_outlined,
                                        color: _isAccIconColorTextField
                                            ? Colors.indigo
                                            : Colors.grey,
                                      )),
                                  hintStyle: GoogleFonts.ubuntu(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  hintText: 'Your login or e-mail',
                                  //hintTextDirection: TextDirection.rtl,
                                  //border: UnderlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.indigo, width: 2))),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //password
                          Container(
                            width: 350,
                            child: TextFormField(
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                focusNode: _passNode,
                                decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, left: 10),
                                      child: Icon(
                                        Icons.vpn_key_rounded,
                                        color: _isPassIconColorTextField
                                            ? Colors.indigo
                                            : Colors.grey,
                                      ),
                                    ),
                                    hintText: 'Password',
                                    hintStyle: GoogleFonts.ubuntu(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                    //hintTextDirection: TextDirection.rtl,
                                    //border: UnderlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.indigo, width: 2)))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: 350,
                              height: 50,
                              // color: Colors.grey,
                              child: Row(
                                children: [
                                  Checkbox(
                                      value: _isCheck,
                                      activeColor: Colors.indigo,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _isCheck = value!;
                                        });
                                      }),
                                  Text(
                                    'Remember',
                                    style: GoogleFonts.ubuntu(),
                                  ),
                                  Expanded(child: Container()),
                                  UnconstrainedBox(
                                      child: InkWell(
                                          onTap: () {},
                                          child: OutlinedButton(
                                            child: Text(
                                              "Sing in",
                                              style: GoogleFonts.ubuntu(),
                                            ),
                                            style: OutlinedButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor: Colors.indigo,
                                              onSurface: Colors.orangeAccent,
                                            ),
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      content: Text(
                                                          'Processing Data')),
                                                );
                                              }
                                            },
                                          )))
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ))
                    ],
                  ),
                ),
                height: size.height,
                width: size.width / 3,
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Icon(
                  Icons.timeline,
                  size: 30,
                  color: Colors.indigo,
                ),
              )
            ],
          ),
          
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/login5.jpg'),
                    fit: BoxFit.scaleDown)),
          ))
        ],
      ),
    );
  }
}
