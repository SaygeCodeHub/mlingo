import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';

class StatusChip extends StatelessWidget {
  final String text;
  final Color color;
  const StatusChip({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: spacingMedium, vertical: spacingXSmall),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .statusTextStyle
              .copyWith(color: color)),
    );
  }
}
