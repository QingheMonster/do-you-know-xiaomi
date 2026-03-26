import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../data/myths_data.dart';
import '../theme/app_theme.dart';

class MythsScreen extends StatelessWidget {
  const MythsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('常见误解'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: MythsData.myths.length,
        itemBuilder: (context, index) {
          final myth = MythsData.myths[index];
          return _buildMythCard(context, myth);
        },
      ),
    );
  }

  Widget _buildMythCard(BuildContext context, Map<String, String> myth) {
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
          // 误解（红色标记）
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFEBEE),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.close, color: Color(0xFFE53935), size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    myth['myth']!,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFE53935),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 事实（绿色标记）
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle, color: Color(0xFF43A047), size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        myth['fact']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF333333),
                          height: 1.6,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '来源：${myth['source']}',
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade400, fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 12),
                // 复制分享按钮
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: myth['share']!));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('已复制，可直接粘贴到群聊'), duration: Duration(seconds: 2)),
                        );
                      },
                      icon: const Icon(Icons.share, size: 16),
                      label: const Text('一键复制'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppTheme.xiaomiOrange,
                        side: BorderSide(color: AppTheme.xiaomiOrange.withOpacity(0.3)),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
