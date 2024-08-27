import 'dart:async';

import 'package:clockwise/util/router.dart';
import 'package:clockwise/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  navigateToLogin()
  { 
   
    GoRouter.of(context).go('/login');
      
    
 
  }
 
  @override 
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: peach,
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/images/clockwise_title.png"),
            ),
            const SizedBox(height: 20,),
            const Text("Welcome",style:TextStyle(
              fontSize: 35,
              color: blue

            ) , 
            ),
             const SizedBox(height: 40,),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const Text("SignUp", style:TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 90, 89, 89),

            )),
                 const SizedBox(width : 150,),
                  GestureDetector(
                    onTap: navigateToLogin,
                    child:const  Text("Login" , style:TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 90, 89, 89),
                    
                                )),
                  )
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
           const TextField(
            decoration: InputDecoration(
              hintText: "Confirm Password",
      
            ),
          ),
          ElevatedButton(onPressed:(){}, child: Text("Register")),
          ],
        ),
        
      ),
    );
  }
}