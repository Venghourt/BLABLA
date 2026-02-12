import 'package:flutter/material.dart';
import 'package:blabla/theme/theme.dart';

enum ButtonVariant { primary, secondary }

class BlaButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final ButtonVariant variant;

  const BlaButton({
    super.key,
    required this.label,
    required this.variant,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPrimary = variant == ButtonVariant.primary;

    final backgroundColor = isPrimary
        ? BlaColors.backGroundColor
        : BlaColors.backgroundAccent;

    final contentColor = isPrimary ? BlaColors.white : BlaColors.primary;

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
      onPressed: () {},
      icon: icon != null
          ? Icon(icon, color: contentColor)
          : const SizedBox.shrink(),
      label: Text(
        label,
        style: BlaTextStyles.label.copyWith(color: contentColor),
      ),
    );
  }
}
