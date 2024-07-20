import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_save/src/core/config/theme/colors.dart';
import 'package:smart_save/src/core/extensions/context.extension.dart';
import 'package:smart_save/src/shared/widgets/back_button.dart';
import 'package:smart_save/src/shared/widgets/button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              const AppBackButton(),
              const Gap(35),
              Text(
                "Welcome!\nLet's get started",
                style: context.thick22,
              ),
              const Gap(20),
              Text(
                "Please enter your email address to get started, an email will be sent to you to access your account.",
                style: context.normal12,
              ),
              const Gap(40),
              TextField(
                style: context.medium12,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 19),
                  hintText: "e.g smart@save.com",
                  prefixIcon: const Icon(
                    Icons.mail_outline_rounded,
                    size: 18,
                  ),
                  isDense: true,
                  hintStyle:
                      context.medium12.copyWith(color: AppColors.mildWhite),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: AppColors.mildWhite),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: AppColors.mildWhite),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: AppColors.primaryColor),
                  ),
                  filled: true,
                  fillColor: context.bgColor,
                ),
              ),
              const Spacer(),
              AppButton(
                text: "Proceed",
                onPressed: () {},
                type: ButtonType.filled,
              ),
              const Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
