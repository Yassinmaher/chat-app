import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final Function validator;
  final String hintText;
  final bool isPassword;
  final TextInputType inputType;
  final TextInputAction inputAction;

  const InputField({
    Key? key,
    required this.validator,
    required this.hintText,
    required this.inputType,
    required this.inputAction,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => widget.validator(value),
      keyboardType: widget.inputType,
      textInputAction: widget.inputAction,
      obscureText: widget.isPassword && !isPasswordVisible,
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: const Color.fromRGBO(0, 0, 0, 0.25),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
                color: Colors.white60,
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
              )
            : null,
      ),
    );
  }
}
