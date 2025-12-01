import 'package:freezed_annotation/freezed_annotation.dart';

enum Timezone {
  @Freezed(equal: true)
  const UTC = Timezone._('UTC', 'Coordinated Universal Time');
  const EST = Timezone._('EST', 'Eastern Standard Time');
  const PST = Timezone._('PST', 'Pacific Standard Time');
  const MST = Timezone._('MST', 'Central Standard Time');
  const CST = Timezone._('CST', 'Central Standard Time');
  const IST = Timezone._('IST', 'India Standard Time');
  const GMT = Timezone._('GMT', 'Greenwich Mean Time');
  const CET = Timezone._('CET', 'Central European Time');
  const EET = Timezone._('EET', 'Eastern European Time');
  const JST = Timezone._('JST', 'Japan Standard Time');
  const AEST = Timezone._('AEST', 'Australian Eastern Standard Time');

  const Timezone._(this.code, this.name);

  @override
  String toString() {
    return '$code ($name)';
  }

  @override
  int get hashCode => code.hashCode;
}