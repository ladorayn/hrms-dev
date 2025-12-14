import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
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
        // This was already correct
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
              l10n.resetPasswordCheckEmail_title,
              style: theme.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              l10n.resetPasswordCheckEmail_body,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),
            RichText(
              text: TextSpan(
                style: theme.textTheme.bodyMedium,
                children: [
                  TextSpan(text: l10n.resetPasswordCheckEmail_didNotReceive),
                  TextSpan(
                    text: l10n.resetPasswordCheckEmail_resend,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ref
                            .read(resetPasswordProvider.notifier)
                            .requestReset(email);
                        showCustomToast(
                            context,
                            l10n.resetPasswordCheckEmail_resendingSnackbar,
                            ToastType.info);
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(
                        //       content: Text(l10n
                        //           .resetPasswordCheckEmail_resendingSnackbar)),
                        // );
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
