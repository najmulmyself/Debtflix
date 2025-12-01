import 'package:freezed_annotation/freezed_annotation.dart';

enum Timezone {
  UTC('UTC', 'Coordinated Universal Time'),
  EST('EST', 'Eastern Standard Time'),
  PST('PST', 'Pacific Standard Time'),
  MST('MST', 'Central Standard Time'),
  CST('CST', 'Central Standard Time'),
  IST('IST', 'India Standard Time'),
  GMT('GMT', 'Greenwich Mean Time'),
  CET('CET', 'Central European Time'),
  EET('EET', 'Eastern European Time'),
  JST('JST', 'Japan Standard Time'),
  AEST('AEST', 'Australian Eastern Standard Time');

  final String code;
  final String name;

  const Timezone(this.code, this.name);

  @override
  String toString() => '$code ($name)';
}