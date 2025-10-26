class CountryCode {
  final String code;
  final String name;

  const CountryCode({
    required this.code,
    required this.name,
  });

  @override
  String toString() {
    return '$code ($name)';
  }
}
