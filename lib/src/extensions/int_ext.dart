import 'package:intl/intl.dart';


extension VxIntExtension on int? {

  /// Formats the integer with thousand separators.
  ///
  /// This method adds commas to the integer part of the number
  /// to separate thousands, millions, etc.
  ///
  /// Example:
  /// ```dart
  /// int value = 1234567;
  /// String result = value.formatWithSeparator();
  /// print(result); // Outputs: 1,234,567
  /// ```
  ///
  /// Returns:
  /// A string representation of the integer with thousand separators.
  String thousandsSeparator() {
    if(this == null) return '';
    String formattedIntegerPart = NumberFormat("#,##0").format(this);
    return formattedIntegerPart;
  }
}
