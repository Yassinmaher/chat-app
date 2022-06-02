import 'package:chat_app/screens/sign_in_screen.dart';
import 'package:chat_app/widgets/InputField.dart';
import 'package:flutter/material.dart';

import '../widgets/FormButton.dart';

class PasswordReset extends StatelessWidget {
  PasswordReset({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Password Reset',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      InputField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email field is required';
                          }
                          return null;
                        },
                        hintText: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.done,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      FormButton(
                        title: 'Send Email',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignIn(),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
