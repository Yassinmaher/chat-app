import 'package:chat_app/screens/home_screen.dart';
import 'package:chat_app/screens/password_reset_screen.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:chat_app/widgets/InputField.dart';
import 'package:flutter/material.dart';

import '../widgets/FormButton.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool _isRememberMeChecked = false;

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
                'Sign In',
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
                        inputAction: TextInputAction.done,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _isRememberMeChecked,
                                side: const BorderSide(
                                  color: Colors.white60,
                                ),
                                activeColor: Colors.white60,
                                onChanged: (value) {
                                  setState(() {
                                    _isRememberMeChecked = value!;
                                  });
                                },
                              ),
                              const Text('Remember Me'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PasswordReset(),
                                ),
                              );
                            },
                            child: const Text(
                              'Forgot Your Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      FormButton(
                        title: 'Login',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          );
                        },
                        child: const Text(
                          'Don\'t Have An Account? Register here',
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
