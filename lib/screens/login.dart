import 'package:clockwise/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  navigateToRegister() {
    GoRouter.of(context).go("/register");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: peach,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/images/clockwise_title.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 35, color: blue),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: navigateToRegister,
                  child: const Text("SignUp",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 90, 89, 89),
                      )),
                ),
                const SizedBox(
                  width: 150,
                ),
                const Text("Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 90, 89, 89),
                    )),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Email",
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
