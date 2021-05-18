import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orderscreen/ConstantValues/buttons.dart';
import 'package:orderscreen/ConstantValues/colors.dart';
import 'package:orderscreen/ConstantValues/inputContainer.dart';

class AccountRegister extends StatefulWidget {
  @override
  _AccountRegisterState createState() => _AccountRegisterState();
}

class _AccountRegisterState extends State<AccountRegister> {
  bool _obsecureText = true;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(screenBackgroundColor),
        body: ListView(children: [_registerContent()]),
      ),
    );
  }

  Widget _registerContent() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 25.0,
        right: 25.0,
        bottom: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Sign Up',
            style: bigTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              'Create a new account',
              style: subTextStyle,
            ),
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
                hintText: "Full Name",
                labelText: null,
                onValidate: null,
                controller: null),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: InputContainer(
                textInputType: TextInputType.emailAddress,
                prefixIcon: Container(
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: Colors.grey.shade200,
                            width: 1.0,
                            style: BorderStyle.solid)),
                  ),
                  child: Icon(
                    Icons.email_outlined,
                    size: 25.0,
                  ),
                ),
                hintText: "Email",
                labelText: null,
                onValidate: null,
                controller: null),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: InputContainer(
                textInputType: TextInputType.number,
                prefixIcon: Container(
                    margin: EdgeInsets.only(
                      right: 8.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(
                              color: Colors.grey.shade200,
                              width: 1.0,
                              style: BorderStyle.solid)),
                    ),
                    child: CountryCodePicker(
                      initialSelection: '+977',
                      hideMainText: true,
                      showFlag: true,
                      showDropDownButton: true,
                      showCountryOnly: true,
                      flagWidth: 20.0,
                      padding: EdgeInsets.all(0.0),
                    )),
                hintText: 'Phone Number',
                labelText: null,
                onValidate: null,
                controller: null),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
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
                        size: 20.0),
                    onTap: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    }),
                onValidate: null,
                controller: null),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
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
                  child: Icon(
                    Icons.lock_outline,
                    size: 25.0,
                  ),
                ),
                hintText: 'Confirm Password',
                labelText: null,
                obsecureText: _obsecureText,
                suffix: GestureDetector(
                    child: Icon(
                        _obsecureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 20.0),
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
            mainAxisAlignment: MainAxisAlignment.start,
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
                padding: const EdgeInsets.only(top: 18.0, left: 10.0),
                child: Text(
                  ' I agree to given Terms and Conditions',
                  style: superSubTextStyle,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ButtonClass(
              title: 'Register',
              onPressed: () {
                // Navigator.pushNamed(context, '/register');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Or Sign up with',
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
                  'Already Registered? Login now',
                  style: superSubTextStyle,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                }),
          )
        ],
      ),
    );
  }
}
