import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';

class IFooterButton extends ConsumerWidget {
  final String text;
  final VoidCallback? onPressed;

  final String? secondaryText;
  final VoidCallback? onSecondaryPressed;

  const IFooterButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.secondaryText,
    this.onSecondaryPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Determine if the secondary button should be shown
    final bool showSecondaryButton =
        secondaryText != null && secondaryText!.isNotEmpty;

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              color: Colors.grey.shade300,
              height: 1,
              thickness: 1,
            ),
            // Padding around the button(s)
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (showSecondaryButton) ...[
                    // 1. Secondary Outlined Button
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: IColors.light.primary.main,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(
                          color: IColors.light.primary.main,
                          width: 1.5,
                        ),
                      ),
                      onPressed: onSecondaryPressed,
                      child: Text(secondaryText!),
                    ),
                    const SizedBox(height: 10),
                  ],

                  // 2. Primary Elevated Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: IColors.light.primary.main,
                      foregroundColor: Colors.white,
                      disabledBackgroundColor: Colors.grey.shade200,
                      disabledForegroundColor: Colors.grey.shade500,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: onPressed,
                    child: Text(text),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
