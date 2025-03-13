import 'package:budget_app/components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_button/sign_button.dart';

import '../view_model.dart';

class LoginViewWeb extends HookConsumerWidget {
  const LoginViewWeb({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(viewModel);
    final double deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/login_image.png", width: deviceHeight / 2.6),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: deviceHeight / 5.5),
                  Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                    width: 200.0,
                  ),
                  SizedBox(height: 40.0),
                  EmailAndPasswordField(),
                  SizedBox(height: 30.0),
                  RegisterAndLogin(),
                  SizedBox(height: 30.0),
                  //Google SignIn
                  GoogleSignInButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
