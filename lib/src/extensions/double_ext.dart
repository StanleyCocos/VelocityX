import 'package:intl/intl.dart';
import 'package:velocity_x/src/extensions/int_ext.dart';

extension VxDoubleExtension on double? {
  /// Formats the integer part of a number with thousand separators.
  ///
  /// This method adds commas to the integer part of the number
  /// to separate thousands, millions, etc., but leaves the
  /// decimal part (if any) untouched.
  ///
  /// Example:
  /// ```dart
  /// int value = 1234567.1024;
  /// String result = value.thousandsSeparator();
  /// print(result); // Outputs: 1,234,567.1024
  /// ```
  ///
  /// Returns:
  /// A string representation of the number with thousand separators.
  String thousandsSeparator() {
    if (this == null) return '';
    int num = this!.truncate();
    String numberStr = this!.toString();
    if (numberStr.contains('.')) {
      List<String> parts = numberStr.split('.');
      if (parts.length > 1) {
        return '${num.thousandsSeparator()}.${parts[1]}';
      }
    }
    return num.thousandsSeparator();
  }
}
