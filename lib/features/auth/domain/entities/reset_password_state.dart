class ResetPasswordState {
  final bool isLoading;
  final Map<String, String> errors;

  const ResetPasswordState({
    this.isLoading = false,
    this.errors = const {},
  });

  ResetPasswordState copyWith({
    bool? isLoading,
    Map<String, String>? errors,
  }) {
    return ResetPasswordState(
      isLoading: isLoading ?? this.isLoading,
      errors: errors ?? this.errors,
    );
  }
}
