import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_email.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/reset_password/reset_password_provider.dart';

// TODO: Create and import the reset password provider
// import 'package:hrms_mobile/features/auth/presentation/providers/reset_password_provider.dart';

class ResetPasswordEmailScreen extends ConsumerWidget {
  const ResetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    // final resetPasswordState = ref.watch(resetPasswordProvider);
    // final resetPasswordNotifier = ref.read(resetPasswordProvider.notifier);
    final emailController = TextEditingController();
    final resetPasswordState = ref.watch(resetPasswordProvider);

    ref.listen<AsyncValue<void>>(resetPasswordProvider, (previous, next) {
      if (next.hasError) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${next.error}')),
        );
      } else if (!next.isLoading && next.hasValue) {
        // On success, show the "Check your email" screen
        // You would navigate to a new screen here. For now, we pop.
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Reset link sent! Check your email.')),
        );
        context.pushNamed(
          RoutePaths.resetPasswordCheckEmailName,
          extra: emailController.text,
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.resetPassword,
          style: theme.textTheme.titleLarge?.copyWith(
            color: colorScheme.primary, // Recolor to primary
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false, // Align title to the left
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onBackground),
          // Use context.go() to navigate back to the login screen
          onPressed: () => context.go(RoutePaths.login),
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
                "Enter your registered email to reset password",
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 12),
              ITextFieldEmail(
                label: l10n.formEmail,
                controller: emailController,
              ),
              SizedBox(
                height: 60,
              ),
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
                    : const Text("Continue",
                        style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
