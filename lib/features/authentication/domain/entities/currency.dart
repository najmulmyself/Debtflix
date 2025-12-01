import 'package:freezed_annotation/freezed_annotation.dart';

enum Currency {
  @Freezed(equal: true)
  const USD = Currency._('USD', 'US Dollar', '\$');
  const EUR = Currency._('EUR', 'Euro', '€');
  const GBP = Currency._('GBP', 'British Pound', '£');
  const JPY = Currency._('JPY', 'Japanese Yen', '¥');
  const CAD = Currency._('CAD', 'Canadian Dollar', 'C$');
  const AUD = Currency._('AUD', 'Australian Dollar', 'A$');
  const CHF = Currency._('CHF', 'Swiss Franc', 'CHF');
  const CNY = Currency._('CNY', 'Chinese Yuan', '¥');
  const INR = Currency._('INR', 'Indian Rupee', '₹');
  const BRL = Currency._('BRL', 'Brazilian Real', 'R$');
  const RUB = Currency._('RUB', 'Russian Ruble', '₽');
  const MXN = Currency._('MXN', 'Mexican Peso', 'MX$');
  const SGD = Currency._('SGD', 'Singapore Dollar', 'S$');
  const HKD = Currency._('HKD', 'Hong Kong Dollar', 'HK$');
  const NZD = Currency._('NZD', 'New Zealand Dollar', 'NZ$');
  const ZAR = Currency._('ZAR', 'South African Rand', 'R');
  const TRY = Currency._('TRY', 'Turkish Lira', '₺');
  const KRW = Currency._('KRW', 'South Korean Won', '₩');

  const Currency._(this.code, this.symbol, this.name);

  @override
  String toString() {
    return '$symbol ($name)';
  }

  @override
  int get hashCode => code.hashCode;
}