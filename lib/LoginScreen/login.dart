import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orderscreen/ConstantValues/buttons.dart';
import 'package:orderscreen/ConstantValues/colors.dart';
import 'package:orderscreen/ConstantValues/inputContainer.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obsecureText = true;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(screenBackgroundColor),
        body: ListView(children: [_loginContent()]),
      ),
    );
  }

  Widget _loginContent() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, left: 25.0, right: 25.0, bottom: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'image/khajaghar.svg',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Text(
              'Login to your Account',
              style: mediumTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Text("Welcome back, you've been missed", style: subTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: InputContainer(
                prefixIcon: Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(
                              color: Colors.grey.shade200,
                              width: 1.0,
                              style: BorderStyle.solid)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 10.0),
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        size: 20.0,
                      ),
                    )),
                hintText: 'Email or Phone',
                labelText: null,
                onValidate: null,
                controller: null),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: InputContainer(
                prefixIcon: Container(
                  margin: EdgeInsets.only(right: 8.0),
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: Colors.grey.shade200,
                            width: 1.0,
                            style: BorderStyle.solid)),
                  ),
                  child: Icon(
                    Icons.lock_outline,
                    size: 25.0,
                  ),
                ),
                hintText: 'Password',
                labelText: null,
                obsecureText: _obsecureText,
                suffix: GestureDetector(
                    child: Icon(
                        _obsecureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 15.0),
                    onTap: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    }),
                onValidate: null,
                controller: null),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20.0,
                child: Checkbox(
                    value: checkboxValue,
                    onChanged: (bool newValue) {
                      setState(() {
                        checkboxValue = newValue;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 18.0,
                  left: 10.0,
                ),
                child: Text(
                  'Remember me',
                  style: superSubTextStyle,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 18.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot your Password?',
                      style: superSubTextStyle,
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ButtonClass(
              title: 'Login',
              onPressed: () {
                // Navigator.pushNamed(context, '/register');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Or Login with',
              style: superSubTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 40.0,
                    color: Color(0xff3B5998),
                  ),
                ),
                SizedBox(width: 25.0),
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.google,
                    size: 40.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextButton(
                child: Text(
                  'New to KhajaGhar? Register Now',
                  style: superSubTextStyle,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                }),
          )
        ],
      ),
    );
  }
}
