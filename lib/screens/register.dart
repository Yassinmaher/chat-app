import 'package:chat_app/widgets/InputField.dart';
import 'package:flutter/material.dart';

import '../widgets/FormButton.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(23, 27, 35, 1.0),
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Register',
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
                            return 'Name field is required';
                          }
                          return null;
                        },
                        hintText: 'Name',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email field is required';
                          }
                          return null;
                        },
                        hintText: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password field is required';
                          }
                          return null;
                        },
                        hintText: 'Password',
                        isPassword: true,
                        inputType: TextInputType.visiblePassword,
                        inputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      InputField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Confirm Password field is required';
                          }
                          return null;
                        },
                        hintText: 'Confirm Password',
                        isPassword: true,
                        inputType: TextInputType.visiblePassword,
                        inputAction: TextInputAction.done,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      FormButton(
                        title: 'Register',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Register in progress'),
                              ),
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Already Have An Account? Sign in here',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                            fontSize: 12.0,
                          ),
                        ),
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
