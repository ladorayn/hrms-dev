class RequestState {
  final bool isLoading;
  final Map<String, String> errors;

  const RequestState({
    this.isLoading = false,
    this.errors = const {},
  });

  RequestState copyWith({
    bool? isLoading,
    Map<String, String>? errors,
  }) {
    return RequestState(
      isLoading: isLoading ?? this.isLoading,
      errors: errors ?? this.errors,
    );
  }
}
