import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/forgot_password_page.dart';
import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';
import 'package:flutter_ecommerce_app/src/pages/register_page.dart';
import 'package:flutter_ecommerce_app/src/widgets/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkedValue = false;
  bool register = true;
  List textfieldsStrings = [
    "", //email
    "", //password
  ];

  final _emailKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();

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
                            'Welcome Back',
                            style: GoogleFonts.poppins(
                              color: const Color(0xff1D1617),
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.01),
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.015,
                          vertical: size.height * 0.025,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordPage()),
                            );
                          },
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              color: const Color(0xffADA4A5),
                              decoration: TextDecoration.underline,
                              fontSize: size.height * 0.02,
                            ),
                          ),
                        ),
                      ),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(top: size.height * 0.085),
                        child: ButtonWidget(
                          text: "Login",
                          backColor: const [
                            Color(0xffE65829),
                            Color(0xffE65829)
                          ],
                          textColor: const [
                            Colors.white,
                            Colors.white,
                          ],
                          onPressed: () async {
                            //validation for login
                            if (_emailKey.currentState!.validate()) {
                              if (_passwordKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage(
                                            title: '',
                                          )),
                                );
                              }
                            }
                          },
                        ),
                      ),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(
                          top: size.height * 0.15,
                        ),
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
                              text: "Don’t have an account yet? ",
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
                                      builder: (context) => RegisterPage()),
                                ),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    foreground: Paint()
                                      ..shader = const LinearGradient(
                                        colors: <Color>[
                                          Color(0xffE65829),
                                          Color(0xffE65829),
                                        ],
                                      ).createShader(
                                        const Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0),
                                      ),
                                    // color: const Color(0xffC58BF2),
                                    fontSize: size.height * 0.018,
                                  ),
                                ),
                              ),
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
