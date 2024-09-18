import 'package:flutter/material.dart';

import '../ui.dart';

class CoolButton extends StatelessWidget {
  const CoolButton({
    super.key,
    required this.content,
    this.leading,
    this.trailing,
  });

  final String content;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.of(context).spacing.sm,
        horizontal: AppTheme.of(context).spacing.l,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.full,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leading != null)
            Row(
              children: [
                leading!,
                SizedBox(
                  width: AppTheme.of(context).spacing.xs,
                ),
              ],
            ),
          Text(
            content,
            style: AppTheme.of(context).typography.label.copyWith(
                  color: AppTheme.of(context).text.inverse,
                ),
          ),
          if (trailing != null)
            Row(
              children: [
                SizedBox(
                  width: AppTheme.of(context).spacing.xs,
                ),
                trailing!,
              ],
            ),
        ],
      ),
    );
  }
}
