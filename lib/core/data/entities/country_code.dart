class CountryCode {
  final String code;
  final String name;
  final int dialCode;
  final String isoCode;

  const CountryCode({
    required this.code,
    required this.dialCode,
    required this.name,
    required this.isoCode,
  });

  String get flag {
    if (isoCode.length != 2) return '🏴'; // Default flag
    final int firstLetter =
        isoCode.toUpperCase().codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter =
        isoCode.toUpperCase().codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  @override
  String toString() {
    return '$flag $code ($name)';
  }
}
