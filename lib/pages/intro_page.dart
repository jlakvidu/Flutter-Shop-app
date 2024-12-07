import 'package:flutter/material.dart';
import 'package:shop_app/constants/colors.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80, bottom: 80, top: 120),
            child: Image.asset("assets/avacado.png"),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16,),
          const Text("Fresh items Everyday",
            style: TextStyle(
                color: Colors.grey,
              fontSize: 15,
            ),
          ),

          const Spacer(),

          GestureDetector(
            onTap: ()=> Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context){
                return const HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColor.purple,
                borderRadius: BorderRadius.circular(8)
              ),
              padding: const EdgeInsets.all(24),
              child: const Text("Get started", style: TextStyle(color: Colors.white),),
            ),
          ),

          const Spacer(),

        ],
      ),
    );
  }
}
