import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_save/src/core/extensions/context.extension.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      borderRadius: BorderRadius.circular(5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 15,
            ),
            const Gap(5),
            Text(
              "Back",
              style: context.medium12,
            ),
          ],
        ),
      ),
    );
  }
}
