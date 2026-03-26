import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AIScreen extends StatelessWidget {
  const AIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('小米AI'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 头部
            _buildHeader(),
            const SizedBox(height: 20),
            // 核心能力
            _buildSectionTitle('核心AI能力'),
            const SizedBox(height: 12),
            ..._buildAICapabilities(),
            const SizedBox(height: 24),
            // AI产品
            _buildSectionTitle('AI产品矩阵'),
            const SizedBox(height: 12),
            ..._buildAIProducts(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF7C4DFF), Color(0xFF536DFE)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.psychology, color: Colors.white, size: 48),
          const SizedBox(height: 16),
          const Text('小米AI', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(
            '端侧AI + 云端大模型，赋能人车家全生态',
            style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A)));
  }

  List<Widget> _buildAICapabilities() {
    final capabilities = [
      {
        'title': 'MiLM大语言模型',
        'desc': '小米自研大语言模型，支持文本理解、生成、多轮对话。赋能澎湃OS智能助手、客服、内容创作等场景。',
        'specs': ['端侧+云端双架构', '支持多模态', '私有化部署'],
      },
      {
        'title': '端侧AI部署',
        'desc': '小米手机首次实现端侧大模型运行（小米14系列），无需联网即可使用AI功能，保护隐私的同时提升响应速度。',
        'specs': ['无需联网', '隐私保护', '毫秒级响应'],
      },
      {
        'title': 'AI影像系统',
        'desc': 'AI场景识别、AI消除路人、AI扩图、AI写真等创新功能，让手机拍照更智能。',
        'specs': ['AI消除', 'AI扩图', 'AI写真'],
      },
      {
        'title': '智能驾驶AI',
        'desc': '小米智能驾驶采用BEV+Transformer架构，结合大模型提升感知和决策能力。',
        'specs': ['BEV感知', '端到端规划', '持续OTA'],
      },
    ];

    return capabilities.map((cap) => Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(cap['title'] as String,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A))),
          const SizedBox(height: 8),
          Text(cap['desc'] as String,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade700, height: 1.6)),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: (cap['specs'] as List<String>).map((spec) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF7C4DFF).withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(spec, style: const TextStyle(fontSize: 12, color: Color(0xFF7C4DFF), fontWeight: FontWeight.w500)),
            )).toList(),
          ),
        ],
      ),
    )).toList();
  }

  List<Widget> _buildAIProducts() {
    final products = [
      {'name': '小爱同学', 'desc': '小米AI语音助手，月活用户超1亿，支持语音控制全屋智能设备。', 'icon': Icons.mic},
      {'name': '小米AI翻译', 'desc': '支持多语种实时翻译，手机端即可使用。', 'icon': Icons.translate},
      {'name': '小米AI写作', 'desc': '基于大模型的智能写作助手，支持文案生成、改写、总结。', 'icon': Icons.edit_note},
      {'name': '小米AI搜索', 'desc': '澎湃OS原生AI搜索，理解自然语言，精准找到答案。', 'icon': Icons.search},
    ];

    return products.map((p) => Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(color: const Color(0xFF7C4DFF).withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
            child: Icon(p['icon'] as IconData, color: const Color(0xFF7C4DFF), size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(p['name'] as String,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF1A1A1A))),
                const SizedBox(height: 3),
                Text(p['desc'] as String,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade600, height: 1.4)),
              ],
            ),
          ),
        ],
      ),
    )).toList();
  }
}
