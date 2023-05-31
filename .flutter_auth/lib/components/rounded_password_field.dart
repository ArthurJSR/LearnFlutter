import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_Field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: const InputDecoration(
        icon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: kPrimaryColor,
        ),
        border: InputBorder.none,
      ),
    ));
  }
}
