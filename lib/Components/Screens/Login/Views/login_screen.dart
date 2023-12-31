import 'package:decora/Components/Model/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Utils/global.dart';
import '../../../Helpers/ApiHelper/login_api.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? pass;
  TextEditingController email_c = TextEditingController();
  TextEditingController pass_c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(18),
                  height: h * .82,
                  width: w,
                  child: Column(
                    children: [
                      Container(
                        height: h * .15,
                        width: w * .29,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("lib/Assets/Group 426.png"),
                          fit: BoxFit.cover,
                        )),
                      ),
                      Text(
                        "Hello There",
                        style: Global.size17,
                      ),
                      Text("Welcome Back", style: Global.size35),
                      SizedBox(
                        height: h * .04,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Valid Password";
                          } else {
                            return null;
                          }
                        },
                        controller: email_c,
                        onSaved: (val) {
                          email = val!;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter email or phone number",
                          hintStyle: Global.size16,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color(0xffB8B8B8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter Valid Password";
                          } else {
                            return null;
                          }
                        },
                        controller: pass_c,
                        onSaved: (val) {
                          pass = val!;
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Color(0xff888888),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Password",
                          hintStyle: Global.size16,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color(0xff888888),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .005,
                      ),
                      Row(
                        children: [
                          Text(""),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('forpass');
                            },
                            child: Center(
                              child: Text(
                                "Forget Password?",
                                style: Global.size15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();

                            Users user = Users(
                              email: email!,
                              password: pass!,
                            );

                            bool? isLogin = await LoginApiHelper.loginApiHelper
                                    .login(
                                        email: email_c.text,
                                        password: pass_c.text) ??
                                false;

                            if (isLogin != null) {
                              Get.offNamedUntil('/home', (routes) => false);
                            } else {
                              Get.snackbar("Decora", "Login Failed");
                            }
                          } else {
                            Get.snackbar(
                              "Decora",
                              "Login Failed",
                              backgroundColor: Colors.redAccent.withOpacity(.5),
                            );
                          }
                        },
                        child: Container(
                          height: h * .07,
                          width: w,
                          decoration: BoxDecoration(
                            color: Color(0xffE4A11B),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: Global.size19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? Please ",
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontSize: 15,
                              color: Color(0xff888888),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/entergmail');
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontSize: 15,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: h * .18,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Assets/image 2.png"),
                      fit: BoxFit.cover,
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
