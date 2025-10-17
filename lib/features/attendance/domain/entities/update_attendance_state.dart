class UpdateAttendanceState {
  final bool isLoading;
  final Map<String, String> errors;

  const UpdateAttendanceState({
    this.isLoading = false,
    this.errors = const {},
  });

  UpdateAttendanceState copyWith({
    bool? isLoading,
    Map<String, String>? errors,
  }) {
    return UpdateAttendanceState(
      isLoading: isLoading ?? this.isLoading,
      errors: errors ?? this.errors,
    );
  }
}
