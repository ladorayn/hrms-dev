import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_email.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/auth/domain/entities/reset_password_state.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/reset_password/reset_password_provider.dart';

class ResetPasswordEmailScreen extends ConsumerWidget {
  const ResetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final emailController = TextEditingController();
    final resetPasswordState = ref.watch(resetPasswordProvider);

    ref.listen<ResetPasswordState>(resetPasswordProvider, (previous, next) {
      final wasLoading = previous?.isLoading == true;
      final nowLoadedSuccessfully =
          wasLoading && !next.isLoading && next.errors.isEmpty;

      if (nowLoadedSuccessfully) {
        ScaffoldMessenger.of(context).clearSnackBars();
        showCustomToast(context, l10n.resetPasswordEmail_linkSentSnackbar,
            ToastType.success);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     // UPDATED
        //     content: Text(l10n.resetPasswordEmail_linkSentSnackbar),
        //     behavior: SnackBarBehavior.floating,
        //   ),
        // );

        context.pushNamed(
          RoutePaths.resetPasswordCheckEmailName,
          extra: emailController.text,
        );
      }
      final hasNewError =
          (previous?.errors.isEmpty ?? true) && next.errors.isNotEmpty;

      if (hasNewError) {
        // UPDATED: Added fallback for unknown errors
        final errorMessage = next.errors['general'] ??
            next.errors.values.firstOrNull ??
            l10n.errorUnknown;
        ScaffoldMessenger.of(context).clearSnackBars();
        showCustomToast(context, errorMessage, ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(errorMessage),
        //     backgroundColor: Colors.redAccent,
        //     behavior: SnackBarBehavior.floating,
        //   ),
        // );
      }
    });

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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.resetPasswordEmail_body,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 12),
              ITextFieldEmail(
                label: l10n.formEmail,
                hintText: l10n.formHintEmail, // ADDED: Hint text
                controller: emailController,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: resetPasswordState.isLoading
                    ? null
                    : () {
                        ref
                            .read(resetPasswordProvider.notifier)
                            .requestReset(emailController.text);
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: IColors.light.primary.main,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.8, 50),
                ),
                child: resetPasswordState.isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    // UPDATED
                    : Text(l10n.continueButton,
                        style: const TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
