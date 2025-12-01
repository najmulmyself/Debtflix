import 'package:freezed_annotation/freezed_annotation.dart';

enum Currency {
  USD('USD', 'US Dollar', '\$'),
  EUR('EUR', 'Euro', '€'),
  GBP('GBP', 'British Pound', '£'),
  JPY('JPY', 'Japanese Yen', '¥'),
  CAD('CAD', 'Canadian Dollar', 'C\$'),
  AUD('AUD', 'Australian Dollar', 'A\$'),
  CHF('CHF', 'Swiss Franc', 'CHF'),
  CNY('CNY', 'Chinese Yuan', '¥'),
  INR('INR', 'Indian Rupee', '₹'),
  BRL('BRL', 'Brazilian Real', 'R\$'),
  RUB('RUB', 'Russian Ruble', '₽'),
  MXN('MXN', 'Mexican Peso', 'MX\$'),
  SGD('SGD', 'Singapore Dollar', 'S\$'),
  HKD('HKD', 'Hong Kong Dollar', 'HK\$'),
  NZD('NZD', 'New Zealand Dollar', 'NZ\$'),
  ZAR('ZAR', 'South African Rand', 'R'),
  TRY('TRY', 'Turkish Lira', '₺'),
  KRW('KRW', 'South Korean Won', '₩');

  final String code;
  final String name;
  final String symbol;

  const Currency(this.code, this.name, this.symbol);

  @override
  String toString() => '$symbol ($name)';
}