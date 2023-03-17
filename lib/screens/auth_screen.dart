import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 40),
              Image.asset('images/carte1.png'),
              const SizedBox(height: 30),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                  children: [
                    TextSpan(text: "Create an "),
                    TextSpan(
                        text: "account", style: TextStyle(color: Colors.red)),
                    TextSpan(text: " to start a brand new "),
                    TextSpan(
                        text: "adventure!",
                        style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                  textAlign: TextAlign.center,
                  "En continuant, j'accepte les conditions d'utilisation et la politique de confidentialite.",
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset("images/googleicone.png", height: 24.0),
                label: Text('Continuer avec Google'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    fixedSize: Size(250, 47),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
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
                      width: 55.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 172, 167, 167),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
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
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
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
                      child: Icon(
                        Icons.apple,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Vous avez déjà un compte ? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Se connecter',
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
        ));
  }
}
