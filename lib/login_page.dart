import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Login'),
      backgroundColor: Colors.blueAccent, 
      centerTitle: true, 
),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[50]!, Colors.blue[200]!], 
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              Text(
                'WELCOME GUYS!!!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent, 
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.blueAccent), 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), 
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.blueAccent),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blueAccent),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30),
             ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blueAccent, 
    foregroundColor: Colors.white, 
    padding: EdgeInsets.symmetric(vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), 
    ),
  ),
  onPressed: () {
    
    if (usernameController.text == "kinan" &&
        passwordController.text == "123") {
      Navigator.pushNamed(context, '/kelompok');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Username atau Password salah"),
        backgroundColor: Colors.redAccent,
      ));
    }
  },
  child: Text(
    'Login',
    style: TextStyle(fontSize: 18), 
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
