/// 小米集团发展史时间线数据模型

class TimelineEra {
  final String id;
  final String title;
  final String subtitle;
  final String yearRange;
  final int colorValue;
  final String icon;
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
  final String icon;
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
