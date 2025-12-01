// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$UserImpl',
      json,
      ($checkedConvert) {
        final val = _$UserImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          email: $checkedConvert('email', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String?),
          avatar: $checkedConvert('avatar', (v) => v as String?),
          currency: $checkedConvert('currency',
              (v) => $enumDecodeNullable(_$CurrencyEnumMap, v) ?? Currency.USD),
          language: $checkedConvert('language',
              (v) => $enumDecodeNullable(_$LanguageEnumMap, v) ?? Language.en),
          timezone: $checkedConvert('timezone',
              (v) => $enumDecodeNullable(_$TimezoneEnumMap, v) ?? Timezone.UTC),
          emailVerified:
              $checkedConvert('emailVerified', (v) => v as bool? ?? false),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('avatar', instance.avatar);
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  val['language'] = _$LanguageEnumMap[instance.language]!;
  val['timezone'] = _$TimezoneEnumMap[instance.timezone]!;
  val['emailVerified'] = instance.emailVerified;
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}

const _$CurrencyEnumMap = {
  Currency.USD: 'USD',
  Currency.EUR: 'EUR',
  Currency.GBP: 'GBP',
  Currency.JPY: 'JPY',
  Currency.CAD: 'CAD',
  Currency.AUD: 'AUD',
  Currency.CHF: 'CHF',
  Currency.CNY: 'CNY',
  Currency.INR: 'INR',
  Currency.BRL: 'BRL',
  Currency.RUB: 'RUB',
  Currency.MXN: 'MXN',
  Currency.SGD: 'SGD',
  Currency.HKD: 'HKD',
  Currency.NZD: 'NZD',
  Currency.ZAR: 'ZAR',
  Currency.TRY: 'TRY',
  Currency.KRW: 'KRW',
};

const _$LanguageEnumMap = {
  Language.en: 'en',
  Language.es: 'es',
  Language.fr: 'fr',
  Language.de: 'de',
  Language.it: 'it',
  Language.pt: 'pt',
  Language.ru: 'ru',
  Language.ja: 'ja',
  Language.zh: 'zh',
  Language.ar: 'ar',
  Language.hi: 'hi',
};

const _$TimezoneEnumMap = {
  Timezone.UTC: 'UTC',
  Timezone.EST: 'EST',
  Timezone.PST: 'PST',
  Timezone.MST: 'MST',
  Timezone.CST: 'CST',
  Timezone.IST: 'IST',
  Timezone.GMT: 'GMT',
  Timezone.CET: 'CET',
  Timezone.EET: 'EET',
  Timezone.JST: 'JST',
  Timezone.AEST: 'AEST',
};
