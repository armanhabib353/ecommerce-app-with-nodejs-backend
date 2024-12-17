import 'package:arman_ecommerce_node_backend/view/screens/authentication/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false; // Password visibility state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login Your Account",
                      style: GoogleFonts.eagleLake(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          fontSize: 23,
                        ),
                      )),
                  Text(
                    " Explore the world exclusives",
                    style: GoogleFonts.abrilFatface(
                        textStyle: const TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.2,
                      fontSize: 14,
                    )),
                  ),
                  Image.asset(
                    "assets/images/Illustration.png",
                    width: 200,
                    height: 200,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600, letterSpacing: 0.2),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Email";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9)),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        labelText: "Enter your Email",
                        labelStyle: GoogleFonts.nunito(
                            fontSize: 14, letterSpacing: 0.1),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/icons/email.png",
                            width: 20,
                            height: 20,
                          ),
                        )),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your Password";
                      } else {
                        return null;
                      }
                    },
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9)),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      labelText: "Enter your Password",
                      labelStyle:
                          GoogleFonts.nunito(fontSize: 14, letterSpacing: 0.1),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/icons/password.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible; // Toggle visibility
                            });
                          },
                          icon: Icon(_isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      if (_globalKey.currentState!.validate()) {
                        print("Correct");
                      } else {
                        print("Failed");
                      }
                    },
                    child: Container(
                        width: 319,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color(0xFF102DE1),
                              Color(0xFF10E1C9),
                            ])),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 278,
                              top: 19,
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 12,
                                      color: const Color(0xFF103DE5),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 220,
                              bottom: 20,
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 12,
                                      color: const Color(0xFF103DE5),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 220,
                              top: 20,
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 12,
                                      color: const Color(0xFF103DE5),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 250,
                              bottom: 20,
                              child: Opacity(
                                opacity: 0.3,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 12,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 260,
                                top: 29,
                                child: Opacity(
                                  opacity: 0.3,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 3),
                                        color: const Color(0xFF103DE5)),
                                  ),
                                )),
                            Positioned(
                                right: 8,
                                top: 36,
                                child: Opacity(
                                  opacity: 0.3,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(width: 7),
                                        color: const Color(0xFF103DE5)),
                                  ),
                                )),
                            const Center(
                                child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ],
                        )),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Need an Account? ",
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                          color: Colors.black,
                          letterSpacing: 0.2,
                          fontSize: 14,
                        )),
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisterScreen();
                          }));
                        },
                        child: Text(
                          " Sign Up",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 14,
                          )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
