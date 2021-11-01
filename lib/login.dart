import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController =
        TextEditingController(text: "abdulmuneeb989@gmail.com");
    final TextEditingController passwordController =
        TextEditingController(text: "12345678");

    void login() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;

      final String email = emailController.text;
      final String password = passwordController.text;
      try {
        final UserCredential user = await auth.signInWithEmailAndPassword(
            email: email, password: password);
        final DocumentSnapshot snapshot =
            await db.collection("users").doc(user.user.uid).get();
        final data = snapshot.data();

        Navigator.of(context).pushNamed("/MyDrawer");
      } catch (e) {
        print("Error");
      }
    }

    return Scaffold(
      body: Container(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
          child: Column(
            children: [
              Text(
                "Sign In!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.cyan,
                    fontStyle: FontStyle.italic),
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
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: login, child: Text("Log In")),
              SizedBox(
                height: 20,
                width: 20,
              ),
              Row(
                children: [
                  Container(child: Text("Don't have an account?")),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text('Sign Up'),
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

// Widget sbtn() {
// return    TextButton(
//     style: ButtonStyle(
//       foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
//     ),
//     onPressed: () {Navigator.of(context).pushNamed("/Signup()");},
//     child: Text('Sign Up'),
//   );
// }
