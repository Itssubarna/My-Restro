import 'package:bmi/HomePage.dart';
import 'package:bmi/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Hello Lads,",style: TextStyle(color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold),
          ),
          Text('Welcome to Mero App',
          style: const TextStyle(color: Colors.black,fontSize: 40,
          fontWeight: FontWeight.bold)),
          SizedBox(
            height:44,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Email",
              prefixIcon: Icon(Icons.mail, color: Colors.black)
            ),
          ),
            SizedBox(
            height:26,
          ),
          TextField(
             obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock, color: Colors.black),
             
            ),
          ),

          SizedBox(
            height:30,
          ),
           Container(
            child: RawMaterialButton(
            onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup()));
            },
            child: const Text('Dont have an account? Sign Up!',
            style: TextStyle(color: Colors.grey,
            fontSize: 15,fontWeight: FontWeight.bold),
            )),
          ),



          const SizedBox(
            height: 70,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color.fromARGB(255, 99, 240, 228),
              padding: EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text)
                .then((value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                })
                .catchError((error) {
                  print("Error: ${error.toString()}");
                });
            },
            child: const Text('Login',
            style: TextStyle(color: Colors.grey,
            fontSize: 15,fontWeight: FontWeight.bold),
            )),
          ),
        ],
        )
          ),
      )
    );
  }
}