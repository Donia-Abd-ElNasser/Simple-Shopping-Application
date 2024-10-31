

import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/custom_form_text_field.dart';
import '../widgets/custon_button.dart';
import '../widgets/show_snack_bar.dart';


class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({super.key});
  static String id = 'Register Page';

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  String? email;

  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  // Image.asset(
                  //   'assets/scholar.png',
                  const SizedBox(height: 100,),
                   const Text(
                    "Welcome!\n"
                    "Sign up to Start Shopping \n",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFormTextField(
                      onChange: (data) {
                        email = data;
                      },
                      text: 'Email'),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFormTextField(
                      onChange: (data) {
                        password = data;
                      },
                      text: 'Password'),
                  const SizedBox(
                    height: 15,
                  ),
                  SigningButton(
                      onTap: () async {
                        print('ya mosahel');

                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {});

                          try {
                            await UserAuth();
                        Navigator.pushNamed(context,LoginScreen.id,arguments: email);
                            ShowSnackBar(context, 'Success');
                            print('offffffffffffffffffff');
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              ShowSnackBar(context,
                                  ' password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              ShowSnackBar(context,
                                  'account already exists for that email.');
                            }
                          } catch (e) {
                            ShowSnackBar(context, 'There was an error');
                          }
                        }
                        // else {

                        // }
                        isLoading = false;
                        setState(() {
                         
                        });
                      },
                      ButtonText: 'Sign up'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'already have an account? ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Future<void> UserAuth() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }

  
}
