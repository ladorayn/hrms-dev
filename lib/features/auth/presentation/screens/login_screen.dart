import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms_mobile/application/l10n/app_localizations.dart';
import 'package:hrms_mobile/application/theme/i_colors.dart';
import 'package:hrms_mobile/core/routes/route_paths.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_email.dart';
import 'package:hrms_mobile/core/widgets/text_field/variants/i_text_field_password.dart';
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

  void handleLogin() {
    final email = emailController.text;
    final password = passwordController.text;

    ref.read(loginProvider.notifier).submit(email, password);
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);
    final l10n = AppLocalizations.of(context)!;

    ref.listen<AsyncValue>(loginProvider, (previous, next) {
      if (next is AsyncError) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${next.error}')),
        );
      } else if (previous is AsyncLoading && next is AsyncData) {
        ref.invalidate(appStartupProvider);
        context.go(RoutePaths.dashboard);
      }
    });
    return Scaffold(
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
                filter:
                    ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0), // stronger blur
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo Company
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.width * 0.15,
                      color: IColors.dark.background,
                    ),
                    const SizedBox(height: 40),
                    ITextFieldEmail(
                      label: l10n.formEmail,
                      hintText: l10n.formHintEmail,
                      controller: emailController,
                      onChanged: (val) {},
                    ),
                    ITextFieldPassword(
                      label: l10n.formPassword,
                      hintText: l10n.formHintPassword,
                      controller: passwordController,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      GestureDetector(
                        onTap: () => context.go(
                          RoutePaths.resetPassword,
                        ),
                        child: Text(
                          l10n.resetPassword,
                          style: TextStyle(color: IColors.light.primary.main),
                        ),
                      ),
                    ]),
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
                                  MediaQuery.of(context).size.width * 0.8, 50),
                            ),
                            child: const Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
