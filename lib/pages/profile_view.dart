import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_motion/widgets/custom_bottom.dart';

import '../controller/profile_controller.dart';

class MyProfile extends GetView<ProfileController> {
  const MyProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('ProfileView'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu_rounded),
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    height: kToolbarHeight - 16.h,
                    fit: BoxFit.contain,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed("/cart");
                    },
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                    ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
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
                      text: 'Logout',
                      onTap: () {
                        controller.logout();
                      },
                    ),
              const Expanded(child: SizedBox()),
            ],
          ),
        );
      },
    );
  }
}
