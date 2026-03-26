/// 小米集团发展史时间线数据模型

import 'package:flutter/material.dart';

class TimelineEra {
  final String id;
  final String title;
  final String subtitle;
  final String yearRange;
  final int colorValue;
  final IconData icon;
  final List<TimelineEvent> events;

  TimelineEra({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.yearRange,
    required this.colorValue,
    required this.icon,
    required this.events,
  });
}

class TimelineEvent {
  final String date;
  final String title;
  final String description;
  final String? detail;
  final String? tag;
  final bool isHighlight;
  final String? imageUrl;

  TimelineEvent({
    required this.date,
    required this.title,
    required this.description,
    this.detail,
    this.tag,
    this.isHighlight = false,
    this.imageUrl,
  });
}

class KeyNumber {
  final String label;
  final String value;
  final String? unit;
  final int colorValue;

  KeyNumber({
    required this.label,
    required this.value,
    this.unit,
    required this.colorValue,
  });
}

class BusinessSegment {
  final String name;
  final String description;
  final IconData icon;
  final int colorValue;
  final List<String> highlights;
  final String? imageUrl;

  BusinessSegment({
    required this.name,
    required this.description,
    required this.icon,
    required this.colorValue,
    required this.highlights,
    this.imageUrl,
  });
}

/// 财报年度数据
class FinanceYear {
  final int year;
  final double revenue; // 亿元
  final double profit; // 亿元
  final double rdInvestment; // 亿元

  FinanceYear({
    required this.year,
    required this.revenue,
    required this.profit,
    required this.rdInvestment,
  });
}

/// 核心产品竞争力
class ProductFeature {
  final String product;
  final String feature;
  final String value;
  final String? competitor;
  final String? competitorValue;
  final String? source;

  ProductFeature({
    required this.product,
    required this.feature,
    required this.value,
    this.competitor,
    this.competitorValue,
    this.source,
  });
}

/// 雷军履历
class CareerEvent {
  final String year;
  final String title;
  final String description;

  CareerEvent({
    required this.year,
    required this.title,
    required this.description,
  });
}

/// 常见误解
class Myth {
  final String myth;
  final String fact;
  final String source;
  final String? shareText;

  Myth({
    required this.myth,
    required this.fact,
    required this.source,
    this.shareText,
  });
}
