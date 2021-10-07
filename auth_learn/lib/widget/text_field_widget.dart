import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget{
  final TextEditingController nameController;
  final IconData? icon;
  final IconButton? btnSuffixIcon;
  final String hintText;
  final bool passwordVisible;
  final bool validate;

  TextFieldWidget({
    Key? key,
    required this.nameController,
    this.icon, this.btnSuffixIcon, required this.hintText, required this.passwordVisible, required this.validate
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !passwordVisible,
      decoration: InputDecoration(
          hintText: hintText,
          errorText: validate ? 'Заполните все поля' : null,
          icon: Icon(icon),
          suffixIcon: btnSuffixIcon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0))),
      controller: nameController,
    );
  }
}