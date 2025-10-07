class LoginState {
  final bool isLoading;
  final Map<String, String> errors;

  const LoginState({
    this.isLoading = false,
    this.errors = const {},
  });

  LoginState copyWith({
    bool? isLoading,
    Map<String, String>? errors,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      errors: errors ?? this.errors,
    );
  }
}
