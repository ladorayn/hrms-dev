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

  void handleLogin() async {
    final email = emailController.text;
    final password = passwordController.text;

    await ref.read(loginProvider.notifier).submit(email, password);

    ref.invalidate(appStartupProvider); // refresh app state
    if (ref.read(loginProvider).hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login failed")),
      );
    } else {
      context.go(RoutePaths.dashboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: IColors.light.background,
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
