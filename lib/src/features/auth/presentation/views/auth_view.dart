import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:smart_save/src/core/extensions/context.extension.dart';
import 'package:smart_save/src/features/auth/presentation/views/login_view.dart';
import 'package:smart_save/src/shared/widgets/button.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(50),
              Expanded(
                child: Image.asset(
                  "assets/girl.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Gap(20),
              Align(
                child: Text(
                  "Organize your bookmarks across all apps",
                  style: context.medium20,
                  textAlign: TextAlign.center,
                ),
              ),
              const Gap(40),
              AppButton(
                text: "Continue with Email",
                icon: const Icon(
                  Icons.mail_rounded,
                  size: 18,
                ),
                onPressed: () => context.push(const LoginView()),
              ),
              const Gap(10),
              AppButton(
                text: "Google",
                icon: SvgPicture.asset("assets/google.svg", width: 14),
                onPressed: () {},
                type: ButtonType.outlined,
              ),
              const Gap(20),
              Text(
                "By continuing, you agree to our Terms of Service and Privacy Policy",
                style: context.normal12.copyWith(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
