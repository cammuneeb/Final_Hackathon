import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void register() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;

      final String username = usernameController.text;
      final String email = emailController.text;
      final String password = passwordController.text;
      try {
        final UserCredential user = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        await db
            .collection("users")
            .doc(user.user.uid)
            .set({"email": email, "username": username});
        print("User is Registered");
         Navigator.of(context).pushNamed("/Login");
      } catch (e) {
        
      }
    }

    return Scaffold(
      body: Container(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 30),
              child: Column(
          children: [
            Text("Sign Up!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,
             color: Colors.cyan, fontStyle: FontStyle.italic),),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Username'),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Email'),
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your Password'),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: register, child: Text("Sign Up")),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Row(
                children: [
                  Container(child: Text("Already have an account?")),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                    child: Text('Sign In'),
                  )
                ],
              )
          ],
        ),
            )),
      ),
    );
  }
}
