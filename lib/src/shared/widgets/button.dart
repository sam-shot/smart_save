import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_save/src/core/extensions/context.extension.dart';

enum ButtonType { filled, outlined }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool? isLoading;
  final bool? isDisabled;
  final double? width;
  final ButtonType? type;
  final Widget? icon;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.width,
    this.icon,
    this.type = ButtonType.filled,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isDisabled! || isLoading! ? null : onPressed,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
        side: type == ButtonType.filled
            ? BorderSide.none
            : BorderSide(
                color: Colors.white.withOpacity(0.7),
                width: type == ButtonType.outlined ? 1 : 0,
              ),
      ),
      color: type == ButtonType.filled ? context.primaryColor : null,
      minWidth: width ?? double.infinity,
      child: isLoading!
          ? const CircularProgressIndicator()
          : Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[icon!, const Gap(8)],
                  Text(
                    text,
                    style: context.medium12,
                  ),
                ],
              ),
            ),
    );
  }
}
