import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/auth/widgets/auth_divider.dart';
import 'package:jobsphere/pages/auth/widgets/confirm_button.dart';
import 'package:jobsphere/pages/auth/widgets/email_input.dart';
import 'package:jobsphere/pages/auth/widgets/name_input.dart';
import 'package:jobsphere/pages/auth/widgets/password_input.dart';
import 'package:jobsphere/pages/auth/widgets/social_login_widgets.dart';
import 'package:jobsphere/pages/home/home_page.dart';
import 'package:jobsphere/pages/widgets/loading/loading_dialog.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final FocusNode focusName = FocusNode();
  final FocusNode focusConfirmPassword = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  LayoutController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackground,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 90),
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Card(
                    elevation: 2.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: SizedBox(
                      width: 300.00,
                      height: 480.00,
                      child: Column(
                        children: <Widget>[
                          NameInput(
                            node: focusName,
                            controller: nameController,
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          EmailInput(
                            node: focusEmail,
                            controller: emailController,
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          PasswordInput(
                            node: focusPassword,
                            controller: passwordController,
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          PasswordInput(
                            node: focusPassword,
                            controller: passwordController,
                            hint: "Confirm password",
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          ConfirmButton(
                              text: 'Register',
                              onPressed: () {
                                Get.dialog(const LoadingDialog());
                                c.predictJob();
                                Future.delayed(const Duration(seconds: 3), () => Get.offAll(const HomePage()));
                              }
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const AuthDivider(),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Sign up with",
                  style: TextStyle(
                      color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialLoginWidgets(
                    icon: 'facebook',
                    onTap: () => Get.snackbar('Social', 'Facebook Login Clicked', snackPosition: SnackPosition.BOTTOM),
                  ),
                  SocialLoginWidgets(
                    icon: 'instagram',
                    onTap: () => Get.snackbar('Social', 'Instagram Login Clicked', snackPosition: SnackPosition.BOTTOM),
                  ),
                  SocialLoginWidgets(
                    icon: 'github',
                    onTap: () => Get.snackbar('Social', 'Github Login Clicked', snackPosition: SnackPosition.BOTTOM),
                  ),
                  SocialLoginWidgets(
                    icon: 'google',
                    onTap: () => Get.snackbar('Social', 'Google Login Clicked', snackPosition: SnackPosition.BOTTOM),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
