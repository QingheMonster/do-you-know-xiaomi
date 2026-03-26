import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../data/xiaomi_data.dart';
import '../models/timeline_event.dart';
import 'event_detail_screen.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  int _selectedEraIndex = 0;

  @override
  Widget build(BuildContext context) {
    final eras = XiaomiData.eras;
    final selectedEra = eras[_selectedEraIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('发展时间线'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // 阶段选择器
          _buildEraSelector(eras),
          // 事件列表
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              itemCount: selectedEra.events.length,
              itemBuilder: (context, index) {
                return _buildTimelineItem(
                  context,
                  selectedEra.events[index],
                  index,
                  Color(selectedEra.colorValue),
                  index == selectedEra.events.length - 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEraSelector(List<TimelineEra> eras) {
    return Container(
      height: 52,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: eras.length,
        itemBuilder: (context, index) {
          final era = eras[index];
          final isSelected = index == _selectedEraIndex;
          final color = Color(era.colorValue);
          return GestureDetector(
            onTap: () => setState(() => _selectedEraIndex = index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? color : Colors.transparent,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isSelected ? color : Colors.grey.shade300,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(era.icon, size: 16, color: isSelected ? Colors.white : Colors.grey.shade700),
                    const SizedBox(width: 6),
                    Text(
                      era.title,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.grey.shade700,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTimelineItem(
    BuildContext context,
    TimelineEvent event,
    int index,
    Color color,
    bool isLast,
  ) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => EventDetailScreen(event: event, color: color),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 时间轴线
          SizedBox(
            width: 60,
            child: Column(
              children: [
                const SizedBox(height: 4),
                Text(
                  event.date,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // 圆点和线
          Column(
            children: [
              Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: event.isHighlight ? color : Colors.grey.shade300,
                  shape: BoxShape.circle,
                  border: event.isHighlight
                      ? Border.all(color: color.withOpacity(0.3), width: 4)
                      : null,
                ),
              ),
              if (!isLast)
                Container(
                  width: 2,
                  height: 100,
                  color: Colors.grey.shade200,
                ),
            ],
          ),
          const SizedBox(width: 16),
          // 内容卡片
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (event.tag != null)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        event.tag!,
                        style: TextStyle(
                          fontSize: 11,
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  if (event.tag != null) const SizedBox(height: 8),
                  Text(
                    event.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    event.description,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (event.detail != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Text(
                            '查看详情',
                            style: TextStyle(
                              fontSize: 12,
                              color: color,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(Icons.chevron_right, size: 16, color: color),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
