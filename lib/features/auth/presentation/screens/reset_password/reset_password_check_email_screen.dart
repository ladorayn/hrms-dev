import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/reset_password/reset_password_provider.dart';

class ResetPasswordCheckEmailScreen extends ConsumerWidget {
  final String email;

  const ResetPasswordCheckEmailScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.resetPassword,
          style: theme.textTheme.titleLarge?.copyWith(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onBackground),
          onPressed: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please Check Your Email",
              style: theme.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "Reset password request link has been succesfully sent to your registered email.",
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),
            // Use RichText to have a clickable part of the text
            RichText(
              text: TextSpan(
                style: theme.textTheme.bodyMedium,
                children: [
                  const TextSpan(text: "Didn't receive an email? "),
                  TextSpan(
                    text: "Resend Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                    // Add a recognizer to make it clickable
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Re-hit the request reset API
                        ref
                            .read(resetPasswordProvider.notifier)
                            .requestReset(email);
                        // Show a snackbar for user feedback
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Resending reset link...')),
                        );
                      },
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
