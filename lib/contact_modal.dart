// contact_modal.dart
import 'package:flutter/material.dart';

class ContactModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Get in Touch"),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(decoration: InputDecoration(hintText: "Your Name")),
              TextField(decoration: InputDecoration(hintText: "Your Email")),
              TextField(decoration: InputDecoration(hintText: "Message"), maxLines: 3),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text("Cancel")),
        ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Send")),
      ],
    );
  }
}