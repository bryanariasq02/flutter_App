import 'package:flutter/material.dart';

class Custom_TextFormField extends StatelessWidget {
  Custom_TextFormField(
      {Key? key, required this.NameForm, required this.NameVar})
      : super(key: key);

  String NameForm;
  TextEditingController NameVar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
        controller: NameVar,
        decoration: InputDecoration(hintText: NameForm),
      ),
    );
  }
}
