import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/login_page.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';
import 'package:flutter_ecommerce_app/src/widgets/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkedValue = false;
  bool register = true;
  List textfieldsStrings = [
    "", //firstName
    "", //lastName
    "", //email
    "", //password
    "", //confirmPassword
  ];

  final _firstnamekey = GlobalKey<FormState>();
  final _lastNamekey = GlobalKey<FormState>();
  final _emailKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();
  final _confirmPasswordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.02),
                        child: Align(
                          child: Text(
                            'Hey there,',
                            style: GoogleFonts.poppins(
                              color: const Color(0xff1D1617),
                              fontSize: size.height * 0.02,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.015),
                        child: Align(
                            child: Text(
                          'Create an Account',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff1D1617),
                            fontSize: size.height * 0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
                      ),
                      buildTextField(
                        "First Name",
                        Icons.person_outlined,
                        false,
                        size,
                        (valuename) {
                          if (valuename.length <= 2) {
                            buildSnackError(
                              'Invalid name',
                              context,
                              size,
                            );
                            return '';
                          }
                          return null;
                        },
                        _firstnamekey,
                        0,
                      ),
                      buildTextField(
                        "Last Name",
                        Icons.person_outlined,
                        false,
                        size,
                        (valuesurname) {
                          if (valuesurname.length <= 2) {
                            buildSnackError(
                              'Invalid last name',
                              context,
                              size,
                            );
                            return '';
                          }
                          return null;
                        },
                        _lastNamekey,
                        1,
                      ),
                      Form(
                        child: buildTextField(
                          "Email",
                          Icons.email_outlined,
                          false,
                          size,
                          (valuemail) {
                            if (valuemail.length < 5) {
                              buildSnackError(
                                'Invalid email',
                                context,
                                size,
                              );
                              return '';
                            }
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}"
                                    r"~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
                                .hasMatch(valuemail)) {
                              buildSnackError(
                                'Invalid email',
                                context,
                                size,
                              );
                              return '';
                            }
                            return null;
                          },
                          _emailKey,
                          2,
                        ),
                      ),
                      Form(
                        child: buildTextField(
                          "Passsword",
                          Icons.lock_outline,
                          true,
                          size,
                          (valuepassword) {
                            if (valuepassword.length < 6) {
                              buildSnackError(
                                'Invalid password',
                                context,
                                size,
                              );
                              return '';
                            }
                            return null;
                          },
                          _passwordKey,
                          3,
                        ),
                      ),
                      Form(
                        child: buildTextField(
                          "Confirm Passsword",
                          Icons.lock_outline,
                          true,
                          size,
                          (valuepassword) {
                            if (valuepassword != textfieldsStrings[3]) {
                              buildSnackError(
                                'Passwords must match',
                                context,
                                size,
                              );
                              return '';
                            }
                            return null;
                          },
                          _confirmPasswordKey,
                          4,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.015,
                            vertical: size.height * 0.025,
                          ),
                          child: CheckboxListTile(
                            title: RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "By creating an account, you agree to our ",
                                    style: TextStyle(
                                      color: const Color(0xffADA4A5),
                                      fontSize: size.height * 0.015,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: InkWell(
                                      onTap: () {
                                        // ignore: avoid_print
                                        print('Conditions of Use');
                                      },
                                      child: Text(
                                        "Conditions of Use",
                                        style: TextStyle(
                                          color: const Color(0xffADA4A5),
                                          decoration: TextDecoration.underline,
                                          fontSize: size.height * 0.015,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " and ",
                                    style: TextStyle(
                                      color: const Color(0xffADA4A5),
                                      fontSize: size.height * 0.015,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: InkWell(
                                      onTap: () {
                                        // ignore: avoid_print
                                        print('Privacy Notice');
                                      },
                                      child: Text(
                                        "Privacy Notice",
                                        style: TextStyle(
                                          color: const Color(0xffADA4A5),
                                          decoration: TextDecoration.underline,
                                          fontSize: size.height * 0.015,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            activeColor: const Color(0xff7B6F72),
                            value: checkedValue,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue = newValue!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          )),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(top: size.height * 0.025)
                            ,
                        child: ButtonWidget(
                          text: "Register",
                          backColor: const [
                            Color(0xffE65829),
                            Color(0xffE65829)
                          ],
                          textColor: const [
                            Colors.white,
                            Colors.white,
                          ],
                          onPressed: () async {
                            if (register) {
                              //validation for register
                              if (_firstnamekey.currentState!.validate()) {
                                if (_lastNamekey.currentState!.validate()) {
                                  if (_emailKey.currentState!.validate()) {
                                    if (_passwordKey.currentState!.validate()) {
                                      if (_confirmPasswordKey.currentState!
                                          .validate()) {
                                        if (checkedValue == false) {
                                          buildSnackError(
                                              'Accept our Privacy Policy and Term Of Use',
                                              context,
                                              size);
                                        } else {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => MainPage(
                                                      title: '',
                                                    )),
                                          );
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          },
                        ),
                      ),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(top: size.height * 0.025),
                        child: Row(
                          //TODO: replace text logo with your logo
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'I',
                              style: GoogleFonts.poppins(
                                color: const Color(0xffE65829),
                                fontSize: size.height * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'SHOP',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: size.height * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account? ",
                              style: TextStyle(
                                color: const Color(0xff1D1617),
                                fontSize: size.height * 0.018,
                              ),
                            ),
                            WidgetSpan(
                              child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  ),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      foreground: Paint()
                                        ..shader = const LinearGradient(
                                          colors: <Color>[
                                            Color(0xffE65829),
                                            Color(0xffE65829),
                                          ],
                                        ).createShader(
                                          const Rect.fromLTWH(
                                            0.0,
                                            0.0,
                                            200.0,
                                            70.0,
                                          ),
                                        ),
                                      fontSize: size.height * 0.018,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool pwVisible = false;
  Widget buildTextField(
    String hintText,
    IconData icon,
    bool password,
    size,
    FormFieldValidator validator,
    Key key,
    int stringToEdit,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.05,
        decoration: BoxDecoration(
          color: const Color(0xffF7F8F8),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Form(
          key: key,
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              setState(() {
                textfieldsStrings[stringToEdit] = value;
              });
            },
            validator: validator,
            textInputAction: TextInputAction.next,
            obscureText: password ? !pwVisible : false,
            decoration: InputDecoration(
              errorStyle: const TextStyle(height: 0),
              hintStyle: const TextStyle(
                color: Color(0xffADA4A5),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                top: size.height * 0.012,
              ),
              hintText: hintText,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.005,
                ),
                child: Icon(
                  icon,
                  color: const Color(0xff7B6F72),
                ),
              ),
              suffixIcon: password
                  ? Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.005,
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            pwVisible = !pwVisible;
                          });
                        },
                        child: pwVisible
                            ? const Icon(
                                Icons.visibility_off_outlined,
                                color: Color(0xff7B6F72),
                              )
                            : const Icon(
                                Icons.visibility_outlined,
                                color: Color(0xff7B6F72),
                              ),
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildSnackError(
      String error, context, size) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.black,
        content: SizedBox(
          height: size.height * 0.02,
          child: Center(
            child: Text(error),
          ),
        ),
      ),
    );
  }
}
