import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('关于'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // App logo
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFFF6900),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Mi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '你了解小米吗',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'v1.0.0',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(height: 32),
            // 小米使命
            _buildInfoCard(
              icon: Icons.star,
              title: '小米使命',
              content: '"始终坚持做感动人心、价格厚道的好产品，让全球每个人都能享受科技带来的美好生活。"',
            ),
            const SizedBox(height: 16),
            // 小米愿景
            _buildInfoCard(
              icon: Icons.flag,
              title: '小米愿景',
              content: '"和用户交朋友，做用户心中最酷的公司。"',
            ),
            const SizedBox(height: 16),
            // 价值观
            _buildValuesCard(context),
            const SizedBox(height: 32),
            // 数据来源
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '数据来源',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '• 小米集团官方财报及公告\n• 小米官网及官方微博\n• 公开媒体报道\n• 行业研究数据',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '© 2024 小米集团 Xiaomi Corporation\n本APP仅供学习交流使用',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade400,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
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
          Row(
            children: [
              Icon(icon, size: 20, color: const Color(0xFFFF6900)),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A1A),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF666666),
              height: 1.8,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildValuesCard(BuildContext context) {
    final values = [
      {'title': '1. 和用户交朋友', 'items': [
        '真诚对待用户，才能赢得信任',
        '以用户为中心，其他一切纷至沓来',
        '更关注用户，而非竞争对手',
      ]},
      {'title': '2. 工程师思维', 'items': [
        '技术为本，敢于探索，持续做酷的产品、有趣的事情',
        '敢想敢干。如果不敢想，一定做不到',
        '创新决定我们能飞多高，质量决定我们能走多远',
      ]},
      {'title': '3. 主人翁精神', 'items': [
        '小米的使命与愿景、荣誉与责任，都和你息息相关',
        '决不为短期目标而牺牲公司长期价值',
        '不让事情掉地上，绝对不能说"那不是我的工作"',
      ]},
      {'title': '4. 信任第一', 'items': [
        '诚信是我们所有行为的底线',
        '真诚对待所有人，包括我们的用户、同事、股东和合作伙伴',
        '坦诚沟通，所有事情都能摊在桌面上说',
      ]},
      {'title': '5. 共创共识', 'items': [
        '与你直接相关的业务，你都有权参与并畅所欲言',
        '团队中的每个重要决定，都需要大多数人支持',
        '决策之后，充分沟通，坚定执行',
      ]},
      {'title': '6. 结果导向', 'items': [
        '凭数据发言，拿结果说话',
        '重视最终结果，也重视过程中的里程碑',
        '鼓励勤劳，奖励功劳',
      ]},
      {'title': '7. 坚韧乐观', 'items': [
        '直面挫折和挑战，绝不退缩',
        '你一定比困难更强，能从容应对各种挑战',
        '永远相信美好的事情即将发生',
      ]},
      {'title': '8. 持续成长', 'items': [
        '追求极致，每次交付的结果，都代表自己的最高水平',
        '敢于自我批评，即便这样做会令自己尴尬或难堪',
        '持续学习，不断提升，成为更优秀的自己',
      ]},
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
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
          const Row(
            children: [
              Icon(Icons.favorite, size: 20, color: Color(0xFFFF6900)),
              SizedBox(width: 8),
              Text(
                '价值观：真诚，热爱',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A1A),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '真诚，就是不欺人也不自欺；\n热爱，就是全心投入并享受其中。',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade600,
              height: 1.6,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 16),
          ...values.map((v) => Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  v['title'] as String,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                ...(v['items'] as List<String>).map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 3, left: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('• ', style: TextStyle(color: Color(0xFFFF6900), fontSize: 13)),
                      Expanded(
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 13, color: Colors.grey.shade600, height: 1.5),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
