import 'package:flutter/material.dart';

class Edit_Text_Field extends StatefulWidget
{
  final TextEditingController controller;
  final String hint_text;
  final bool ispass;
  final TextInputType type;
  const Edit_Text_Field({super.key, required this.controller, required this.hint_text, required this.ispass, required this.type});

  @override
  State<Edit_Text_Field> createState() => _Edit_Text_FieldState();
}

class _Edit_Text_FieldState extends State<Edit_Text_Field> {

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: Border.all(
          color: Colors.grey,
          width: 0.5
        )
      ),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: widget.hint_text,
          border: InputBorder.none,
          filled: true,
          contentPadding: EdgeInsets.all(8),
        ),
        keyboardType: widget.type,
        obscureText: widget.ispass,
      ),
    );
  }
}
