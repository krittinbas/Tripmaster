import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient setup for smooth blending
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color.fromARGB(255, 196, 228, 255),
                  ],
                  stops: [0.4, 1.0],
                ),
              ),
            ),
          ),
          // Image at the bottom stretching upward
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 320,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/screens/background2.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          // Content overlay with text, fields, and button
          Positioned.fill(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    // Title text
                    const Text(
                      'Create an account',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Already have an account link
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          TextSpan(
                            text: "Sign in",
                            style: const TextStyle(
                              color: Color(0xFF6B852F),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Sign in tapped');
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Username, Phone number, Email, Password, Confirm Password fields
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon:
                            Icon(Icons.visibility_off, color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon:
                            Icon(Icons.visibility_off, color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Terms and conditions checkbox
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          activeColor: const Color(
                              0xFF00164F), // Set the active color for checkbox
                          checkColor: Colors
                              .white, // Set the checkmark color inside the checkbox
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'I agree to all ',
                              style: const TextStyle(
                                  fontSize: 14, color: Color(0xFF00164F)),
                              children: [
                                TextSpan(
                                  text: 'terms & conditions',
                                  style:
                                      const TextStyle(color: Color(0xFF6B852F)),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Terms & Conditions tapped');
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Register Button
                    ElevatedButton(
                      onPressed: () {
                        // Add your register logic here
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        minimumSize: const Size(216, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: const Color(0xFF00164F),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
