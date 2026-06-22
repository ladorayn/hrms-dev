import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_email.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_password.dart';
import 'package:hrms_mobile/core/widgets/toastbar.dart';
import 'package:hrms_mobile/features/app/application_init.dart';
import 'package:hrms_mobile/features/auth/presentation/providers/login/login_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> handleLogin() async {
    final l10n = AppLocalizations.of(context)!;
    final email = emailController.text;
    final password = passwordController.text;

    try {
      final success =
          await ref.read(loginProvider.notifier).submit(email, password);

      if (success && mounted) {
        ref.invalidate(appStartupProvider);
        context.go(RoutePaths.dashboard);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).clearSnackBars();
        showCustomToast(
            context, l10n.loginFailed(e.toString()), ToastType.error);
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(content: Text(l10n.loginFailed(e.toString()))),
        // );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);
    final l10n = AppLocalizations.of(context)!;

    final validationErrors = loginState.errors;

    return Scaffold(
      resizeToAvoidBottomInset: true, // important
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: IColors.light.background,
                ),
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 0.4,
                      colors: [
                        IColors.light.background,
                        Colors.white.withValues(alpha: 0.2),
                        Colors.white.withValues(alpha: 1)
                      ],
                      stops: const [0.7, 0.8, 1.0],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Center(
                child: SingleChildScrollView(
                  // 👈 makes it scrollable
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Logo',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      ITextFieldEmail(
                        label: l10n.formEmail,
                        hintText: l10n.formHintEmail,
                        controller: emailController,
                        errorText: validationErrors['email'],
                        onChanged: (val) {},
                      ),
                      ITextFieldPassword(
                        label: l10n.formPassword,
                        hintText: l10n.formHintPassword,
                        controller: passwordController,
                        errorText: validationErrors['password'],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () => context.push(RoutePaths.resetPassword),
                            child: Text(
                              l10n.resetPassword,
                              style:
                                  TextStyle(color: IColors.light.primary.main),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 60),
                      loginState.isLoading
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: handleLogin,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: IColors.light.primary.main,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                minimumSize: Size(
                                  MediaQuery.of(context).size.width * 0.8,
                                  50,
                                ),
                              ),
                              child: Text(
                                // UPDATED: Using the localization key for the button
                                l10n.signIn,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
