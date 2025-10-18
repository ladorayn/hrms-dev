import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_email.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_password.dart';
import 'package:hrms_mobile/features/auth/data/models/change_password/request/change_password_request_model.dart';
import 'package:hrms_mobile/features/auth/data/models/reset_password/request/reset_password_request.dart';
import 'package:hrms_mobile/features/auth/domain/entities/reset_password_state.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/reset_password/reset_password_provider.dart';

class ResetPasswordCreateScreen extends ConsumerWidget {
  final String? token;
  final String email;
  final String? currentPassword;
  final bool isFirstLogin;

  const ResetPasswordCreateScreen({
    super.key,
    this.token,
    required this.email,
    this.currentPassword,
    this.isFirstLogin = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final resetPasswordState = ref.watch(resetPasswordProvider);

    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    final validationErrors = resetPasswordState.errors;

    ref.listen<ResetPasswordState>(
      resetPasswordProvider,
      (previous, next) {
        if (!next.isLoading && next.errors.isEmpty) {
          context.goNamed(RoutePaths.resetPasswordSuccessName);
        }

        if (next.errors['general'] != null) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next.errors['general']!)),
          );
        }
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  l10n.resetPasswordCreate_title,
                  style: theme.textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.resetPasswordCreate_subtitle,
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 60),
                if (!isFirstLogin) ...[
                  ITextFieldEmail(
                    label: l10n.formEmail,
                    hintText: l10n.formHintEmail,
                    controller: emailController,
                    onChanged: (val) {},
                  ),
                ],
                ITextFieldPassword(
                  label: l10n.formPassword,
                  hintText: l10n.formHintPassword, // ADDED: Hint text
                  controller: passwordController,
                  errorText: validationErrors['new_password'],
                ),
                ITextFieldPassword(
                  label: l10n.formPasswordConfirmation,
                  controller: confirmPasswordController,
                ),
                const SizedBox(height: 60),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (isFirstLogin == true) {
                        final request = ChangePasswordRequest(
                          currentPassword: currentPassword ?? '',
                          newPassword: passwordController.text,
                          newPasswordConfirmation:
                              confirmPasswordController.text,
                        );
                        ref
                            .read(resetPasswordProvider.notifier)
                            .changeNewPassword(request);
                      } else {
                        final request = ResetPasswordRequest(
                          email: emailController.text,
                          token: token ?? '',
                          password: passwordController.text,
                          passwordConfirmation: confirmPasswordController.text,
                        );
                        ref
                            .read(resetPasswordProvider.notifier)
                            .submitNewPassword(request);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: IColors.light.primary.main,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.8, 50),
                    ),
                    child: Text(
                      l10n.resetPassword,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
