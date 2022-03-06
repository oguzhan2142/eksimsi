import 'package:eksimsi/components/app_button.dart';
import 'package:eksimsi/controller/sign_in_controller.dart';
import 'package:eksimsi/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SignInController>(
        init: SignInController(),
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 150,
              ),
              Image.asset('assets/icons/logo.png'),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Ekşimsi',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              AppButton(
                onPressed: controller.signIn,
                iconPath: 'assets/icons/google_icon.png',
                width: MediaQuery.of(context).size.width * 0.85,
                title: 'Google İle Giriş',
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Veya',
                style: TextStyle(
                  color: primary.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: controller.skip,
                child: Text(
                  'Giriş Yapmadan Devam Et',
                  style: TextStyle(
                    color: primary.withOpacity(0.5),
                    fontSize: 12,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
