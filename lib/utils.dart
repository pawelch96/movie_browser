import 'package:intl/intl.dart';

String formatToCurrency(int value) {
  final NumberFormat numberFormat = NumberFormat.currency(
    locale: 'en_US',
    decimalDigits: 0,
    symbol: '\$',
  );
  return numberFormat.format(value);
}
