import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText, labelText, helperText;
  final IconData? icon, suffixIcon;
  final TextInputType? keyboard;
  final bool obscureText;
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboard,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboard,
      obscureText: obscureText,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if (value == null) return 'Campo Requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '3 caracteres',
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
