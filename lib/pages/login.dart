import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:project_motion/widgets/custom_bottom.dart';
import 'package:project_motion/widgets/custom_text_fields.dart';

import '../controller/login_controller.dart';

void main() {
  runApp(const MyLogin());
}

class MyLogin extends GetView<LoginController> {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: controller.checkLoginStatus(), // Cek status login
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.data == true) {
          // Jika sudah login, arahkan ke dashboard
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Get.offNamed('/home');
          });
          return const SizedBox(); // Tidak perlu menampilkan apa-apa jika sudah login
        }
        return GetBuilder<LoginController>(
          init: LoginController(),
          builder: (_) {
            return Scaffold(
              body: Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Lottie Animation
                      SizedBox(
                        height: 200.h,
                        child: Container(
                          width: 265.9,
                          height: 280,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Lottie.asset(
                            'assets/animation/animasi.json',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Welcome!',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'Happy Shopping All',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: const Color(0xFF707070),
                            ),
                      ),
                      const SizedBox(height: 20),
                      // Email Input
                      CustomTextField(
                        hintText: 'Email',
                        icon: const Icon(
                          Icons.email_outlined,
                          color: Color(0xFF344E41),
                        ),
                        textInputType: TextInputType.emailAddress,
                        controller: controller.usernameController,
                      ),
                      const SizedBox(height: 20),
                      // Password Input
                      CustomTextField(
                        hintText: 'Password',
                        icon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xFF344E41),
                        ),
                        isPassword: true,
                        controller: controller.passwordController,
                      ),
                      const SizedBox(height: 40),
                      // Login Button
                      controller.isLoading
                          ? const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 4,
                              ),
                              child: CircularProgressIndicator(
                                color: Color(0xFF00623B),
                              ),
                            )
                          : CustomButton(
                              text: 'Login',
                              onTap: () {
                                controller.login();
                              },
                            ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.offNamed("/register");
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(color: Color(0xFF00623B)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
