import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/constants/color_constant.dart';
import 'package:jobsphere/background/controllers/layout_controller.dart';
import 'package:jobsphere/pages/auth/register_page.dart';
import 'package:jobsphere/pages/auth/widgets/auth_divider.dart';
import 'package:jobsphere/pages/auth/widgets/change_button.dart';
import 'package:jobsphere/pages/auth/widgets/confirm_button.dart';
import 'package:jobsphere/pages/auth/widgets/email_input.dart';
import 'package:jobsphere/pages/auth/widgets/password_input.dart';
import 'package:jobsphere/pages/auth/widgets/social_login_widgets.dart';
import 'package:jobsphere/pages/home/home_page.dart';
import 'package:jobsphere/pages/widgets/loading/loading_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LayoutController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackground,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      height: 440.00,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/images/playstore.png',
                                fit: BoxFit.cover,
                                width: 90.0,
                                height: 90.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          EmailInput(
                            controller: emailController,
                            node: focusEmail,
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          PasswordInput(
                            controller: passwordController,
                            node: focusPassword,
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          ConfirmButton(
                            text: 'Login',
                            onPressed: () {
                              Get.dialog(const LoadingDialog());
                              c.predictJob();
                              Future.delayed(const Duration(seconds: 3), () => Get.offAll(const HomePage()));
                            }
                          ),
                          TextButton(
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black,),
                            ),
                            onPressed: () => Get.snackbar('Auth', 'Forget password click', snackPosition: SnackPosition.BOTTOM),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextButton(
                  child: const Text(
                    "Not have account?",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              ChangeButton(
                text: 'Register',
                onPressed: () => Get.to(const RegisterPage()),
              ),
              const AuthDivider(),
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
