import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SafeArea(
            child: Center(
              child: Column(children: [
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                      children: [
                        TextSpan(
                            text: "Happy", style: TextStyle(color: Colors.red)),
                        TextSpan(text: " to see you back!"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Connect to your account",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                      prefixIcon: IconButton(
                        icon: Icon(Icons.mail),
                        onPressed: () {
                          // action à effectuer lors du clic sur l'icône
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'password',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                      prefixIcon: IconButton(
                        icon: Icon(Icons.password),
                        onPressed: () {
                          // action à effectuer lors du clic sur l'icône
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 41),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: 143,
                    ),
                    const SizedBox(width: 11),
                    Text(
                      "OU",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 11),
                    Container(
                      color: Colors.grey,
                      height: 1,
                      width: 143,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // Action à exécuter lorsque le bouton est cliqué
                      },
                      child: Container(
                          padding: EdgeInsets.all(5),
                          width: 55.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 167, 167),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Image.asset(
                              'images/googleicone-removebg-preview.png')),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        // Action à exécuter lorsque le bouton est cliqué
                      },
                      child: Container(
                          width: 55.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 172, 167, 167),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Image.asset("images/fbicone.png")),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        // Action à exécuter lorsque le bouton est cliqué
                      },
                      child: Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 172, 167, 167),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Image.asset('images/appleicone.png')),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                TextButton(
                  onPressed: () {},
                  child: Text("Commencez"),
                  style: TextButton.styleFrom(
                      fixedSize: Size(200, 50),
                      primary: Colors.white,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    text: 'Vous n\'avez pas de compte ? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Enregistrez vous',
                        style: TextStyle(
                          color: Colors.orange,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
