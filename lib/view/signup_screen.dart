import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController goalController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Begin New Journey',
                  style: blackTextStyle.copyWith(
                      fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 50.0, bottom: 50),
                    width: 120.0,
                    height: 120.0,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: primaryColor)),
                    child: Image.asset('assets/images/image_profile.png'),
                  ),
                ),
                Text(
                  'Full Name',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  cursorColor: primaryColor,
                  controller: nameController,
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
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Goal',
                  style: greyTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  cursorColor: primaryColor,
                  controller: goalController,
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
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: double.infinity,
                  height: 45.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(65.0),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style:
                          whiteTextStyle.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Back to Sign In',
                      style:
                          greyTextStyle.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
