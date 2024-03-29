import 'package:flutter/material.dart';
import 'package:rescue_wheel/emergency1.dart';
import 'package:rescue_wheel/signup.dart';

class LoginPag extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPag> {
  final _formKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 32, 78,1),
        foregroundColor: const Color.fromRGBO(255, 255,255, 1),
        actions: [
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {
              // Handle emergency call functionality (dial emergency number)
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
            color: Color.fromARGB(255, 226, 227, 230),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20.0),
                        SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Username',
                              hintText: 'Enter your Username',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(255,32,78,1),
                                fontWeight: FontWeight.bold),
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(255,32,78,1),
                                fontWeight: FontWeight.bold),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 32, 78,1),
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(93,14,65,1),
                                  width: 3,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _username = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your Password',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(255,32,78,1),
                                fontWeight: FontWeight.bold),
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(255,32,78,1),
                                fontWeight: FontWeight.bold),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 32, 78,1),
                                  width: 3,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(93,14,65,1),
                                  width: 3,
                                ),
                              ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _password = value!;
                          },
                        ),
                        const SizedBox(height: 20.0),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(255, 32, 78,1),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Login',style: TextStyle(fontSize: 13.0),),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Simulate login process (replace with your authentication)
                              if (_username == 'admin' && _password == 'admin') {
                                // Navigate to emergency page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => EmergencyPage()),
                                );
                              } else {
                                // Show error message
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Invalid username or password'),
                                  ),
                                );
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextButton(
                    child: const Text('New User? Sign Up', style: TextStyle(fontSize: 15.0,color:Color.fromRGBO(255, 32, 78,1)),),
                    onPressed: () {
                      
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const SignUpPage()),
                       );
                    },
                  ),
                ],
              ),
            ),
          ),
      ),
      
    );
  }
}
