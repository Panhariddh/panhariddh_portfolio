// profile_section.dart
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage("assets/images/mypfp.jpg"),
            ),
            SizedBox(height: 10),
            Text("Welcome to my portfolio", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            Text("Hi, I'm", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
            Text("CHEA Oudompanhariddh", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.blue)),
            Text("Backend Developer", style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700)),
            Text("Backend developer skilled in designing robust,", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
            Text("scalable, and efficient server-side applications. ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
            //
          ],
        ),
      ],
    ); 
  }
}