// action_buttons.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ActionButtons extends StatefulWidget {
  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              iconSize: MaterialStateProperty.all(50),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 150, vertical: 15),
              ),
            ),
            // onPressed: (){
            
            // },
            onPressed: () async {
              final Uri url = Uri.parse(
                "https://www.linkedin.com/in/oudompanhariddh-chea-8542b2253",
              ); 
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Could not launch URL")));
              }
            },
            child: Text(
              "Hire Me!",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(height: 10),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              ),
              side: MaterialStateProperty.all(
      BorderSide(color: Colors.blue, width: 2),
    ),
            ),
            onPressed: () async {
              final Uri url = Uri.parse(
                "https://www.linkedin.com/in/oudompanhariddh-chea-8542b2253",
              ); 
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Could not launch URL")));
              }
            },
            // onPressed: (){},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Download CV", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                Icon(Icons.download, color: Colors.blue),
                SizedBox(width: 8),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}