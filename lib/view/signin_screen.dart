import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:job_app/model/user_model.dart';
import 'package:job_app/providers/auth/auth_provider.dart';
import 'package:job_app/providers/user/user_provider.dart';
import 'package:provider/provider.dart';

import '../theme.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), backgroundColor: redColor)
      );
    }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Build Your Career',
                  style: blackTextStyle.copyWith(
                      fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/image_sign_in.png',
                    width: 270.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Email',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  cursorColor: primaryColor,
                  controller: emailController,
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
                      fillColor: formColor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color: EmailValidator.validate(emailController.text)
                                ? primaryColor
                                : Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                            color: EmailValidator.validate(emailController.text)
                                ? primaryColor
                                : Colors.red),
                      ),
                      hintText: ''),
                  style: EmailValidator.validate(emailController.text)
                      ? purpleTextStyle
                      : redTextStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Password',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  obscureText: true,
                  cursorColor: primaryColor,
                  controller: passwordController,
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 26.0, vertical: 20),
                      fillColor: formColor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: ''),
                  style: purpleTextStyle,
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 45.0,
                  child: isLoading ? Center(child: CircularProgressIndicator()) : TextButton(
                    onPressed: () async {
                      if(emailController.text.isEmpty ||
                          passwordController.text.isEmpty ){
                        showError('Tidak boleh kosong');
                      }else{
                        setState(() {
                          isLoading = true;
                        });
                        UserModel user = await authProvider.login(emailController.text,
                            passwordController.text);
                        if(user == null){
                          showError('Login gagal');
                        }else{
                          userProvider.user = user;
                          Navigator.pushNamedAndRemoveUntil(context,
                              '/home', (route) => false);
                        }
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(65.0),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
