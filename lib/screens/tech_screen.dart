import 'package:flutter/material.dart';
import '../data/tech_data.dart';
import '../theme/app_theme.dart';

class TechScreen extends StatelessWidget {
  const TechScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = TechData.items;

    final iconMap = {
      'chip': Icons.memory,
      'ai': Icons.psychology,
      'factory': Icons.precision_manufacturing,
      'patent': Icons.gavel,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('硬核技术'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final category = items[index];
          final icon = iconMap[category['icon']] ?? Icons.science;
          return _buildCategoryCard(category, icon);
        },
      ),
    );
  }

  Widget _buildCategoryCard(Map<String, dynamic> category, IconData icon) {
    final subItems = category['items'] as List<Map<String, String>>;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
          // 分类标题
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
            child: Row(
              children: [
                Icon(icon, size: 22, color: AppTheme.xiaomiOrange),
                const SizedBox(width: 10),
                Text(
                  category['category'] as String,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          // 子条目
          ...subItems.map((item) => Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item['desc']!,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600, height: 1.5),
                ),
                const SizedBox(height: 3),
                Text(
                  '来源：${item['source']}',
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade400, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          )),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
