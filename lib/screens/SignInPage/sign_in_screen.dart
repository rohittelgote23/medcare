import 'package:flutter/material.dart';
import 'package:medcare/screens/homescreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obsecureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  String? _errorEmailText;
  String? _errorPasswordText;

  void _validateEmail(String value) {
    setState(() {
      if (value != "rohit@gmail.com") {
        _errorEmailText = "Incorrect Email Address";
      } else {
        _errorEmailText = null;
      }
    });
  }

  void _validatePass(String value) {
    setState(() {
      if (value != "12345678") {
        _errorPasswordText = "Password Don't Match";
      } else {
        _errorPasswordText = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue[100],
                    child: Icon(
                      Icons.local_pharmacy,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Adhicine',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  // Sign In Text
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Email Field
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline, color: Colors.teal),
                      hintText: 'Enter Email Address',
                      errorText: _errorEmailText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onChanged: _validateEmail,
                  ),
                  SizedBox(height: 10),
                  // Password Field
                  TextField(
                    controller: _passController,
                    obscureText: _obsecureText,
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.lock_outline_rounded, color: Colors.teal),
                      hintText: 'Password',
                      errorText: _errorPasswordText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obsecureText
                              ? Icons.visibility_off_outlined
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obsecureText = !_obsecureText;
                          });
                        },
                      ),
                    ),
                    onChanged: _validatePass,
                  ),

                  // Forgot Password
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 25),
                  // Sign In Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  // OR Divider
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey.shade400)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey.shade400)),
                    ],
                  ),
                  SizedBox(height: 20),

                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/google.png',
                      height: 24,
                    ),
                    label: Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(color: Colors.grey.shade400, width: 1),
                    ),
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Adhicine?'),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {}, // Add navigation here
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
