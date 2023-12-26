import 'package:flutter/material.dart';
import 'package:to_do_list/utils/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      content: SizedBox(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                hintText: "Add a new task"),
          ),

          //buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(onPressed: onSave, text: "Save"),
              MyButton(onPressed: onCancel, text: "Cancel")
            ],
          )
        ]),
      ),
    );
  }
}
