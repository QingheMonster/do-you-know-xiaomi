import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/honors_data.dart';
import '../theme/app_theme.dart';

class TechScreen extends StatelessWidget {
  const TechScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('技术实力'),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            isScrollable: true,
            labelColor: AppTheme.xiaomiOrange,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppTheme.xiaomiOrange,
            tabs: [
              Tab(icon: Icon(Icons.emoji_events, size: 18), text: '荣誉'),
              Tab(text: '芯片'),
              Tab(text: '智能驾驶'),
              Tab(text: '智能制造'),
              Tab(text: '机器人'),
              Tab(text: '专利'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildHonorsTab(context),
            _buildChipSection(),
            _buildDriveSection(),
            _buildFactorySection(),
            _buildRobotSection(),
            _buildPatentSection(),
          ],
        ),
      ),
    );
  }

  // ========== 荣誉 ==========
  Widget _buildHonorsTab(BuildContext context) {
    final items = HonorsData.items;
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8, offset: const Offset(0, 2)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (item['image'] != null)
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  child: Image.network(item['image'] as String, height: 160, width: double.infinity, fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const SizedBox.shrink()),
                ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(color: AppTheme.xiaomiOrange.withOpacity(0.1), borderRadius: BorderRadius.circular(6)),
                      child: Text(item['category'] as String,
                        style: const TextStyle(fontSize: 11, color: AppTheme.xiaomiOrange, fontWeight: FontWeight.w600)),
                    ),
                    const SizedBox(height: 10),
                    Text(item['title'] as String,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A))),
                    const SizedBox(height: 8),
                    Text(item['desc'] as String,
                      style: TextStyle(fontSize: 14, color: Colors.grey.shade700, height: 1.6)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.source, size: 14, color: Colors.grey.shade400),
                        const SizedBox(width: 4),
                        Text(item['source'] as String,
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade400, fontStyle: FontStyle.italic)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (item['videoUrl'] != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: OutlinedButton.icon(
                              onPressed: () async {
                                final url = Uri.parse(item['videoUrl'] as String);
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url, mode: LaunchMode.externalApplication);
                                }
                              },
                              icon: const Icon(Icons.play_circle_outline, size: 16),
                              label: const Text('观看视频'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: const Color(0xFF1E88E5),
                                side: const BorderSide(color: Color(0x331E88E5)),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              ),
                            ),
                          ),
                        OutlinedButton.icon(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: item['share'] as String));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('已复制，可直接粘贴分享'), duration: Duration(seconds: 1)));
                          },
                          icon: const Icon(Icons.share, size: 16),
                          label: const Text('分享'),
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
      },
    );
  }

  // ========== 芯片 ==========
  Widget _buildChipSection() {
    final items = [
      {'name': '澎湃S1', 'year': '2017', 'desc': '小米首款自研手机SoC芯片，全球第四家拥有手机SoC自研能力的厂商（继苹果、三星、华为之后）。', 'specs': '28nm工艺，8核64位处理器'},
      {'name': '澎湃P1', 'year': '2021', 'desc': '自研充电管理芯片，支持120W澎湃秒充，充电效率行业领先。', 'specs': '支持4:1直充'},
      {'name': '澎湃G1', 'year': '2022', 'desc': '自研电池管理芯片，与澎湃P1组成"小米澎湃电池管理系统"。', 'specs': '毫秒级电池健康监测'},
      {'name': '澎湃C1/C2', 'year': '2021/2022', 'desc': '自研影像ISP芯片，大幅提升拍照对焦、白平衡和降噪能力。', 'specs': '自研ISP，3A算法优化'},
      {'name': '澎湃T1', 'year': '2024', 'desc': '自研信号增强芯片，提升手机信号接收能力，尤其在弱信号场景下表现优异。', 'specs': '信号增强，弱网优化'},
    ];
    return _buildList(items, AppTheme.xiaomiOrange);
  }

  // ========== 智能驾驶 ==========
  Widget _buildDriveSection() {
    final items = [
      {'name': '全栈自研智驾', 'year': '2024', 'desc': '小米智能驾驶全栈自研，包含感知、规划、控制三大核心模块。BEV+Transformer+占用网络架构。', 'specs': '城市NOA + 高速NOA'},
      {'name': '端到端智驾', 'year': '2025', 'desc': '小米正在研发端到端智能驾驶方案，从传感器输入直接到驾驶决策输出。', 'specs': '下一代智驾架构'},
      {'name': 'CTB一体化电池', 'year': '2024', 'desc': '电池车身一体化技术，将电芯直接集成到车身底盘，提升空间利用率15%。', 'specs': '体积利用率77.8%'},
      {'name': '9100吨一体化压铸', 'year': '2024', 'desc': '小米SU7采用9100吨级一体化压铸后地板，减少零件数量、提升车身刚性。', 'specs': '9100吨压铸机'},
    ];
    return _buildList(items, const Color(0xFF1E88E5));
  }

  // ========== 智能制造 ==========
  Widget _buildFactorySection() {
    final items = [
      {'name': '小米智能工厂（手机）', 'year': '2020', 'desc': '北京亦庄"黑灯工厂"，全自动化产线，日产手机超万台。央视《大国重器》专题报道。', 'specs': '全自动化，央视报道'},
      {'name': '小米汽车超级工厂', 'year': '2024', 'desc': '北京亦庄自建汽车工厂，拥有冲压/焊装/涂装/总装四大完整工艺，年产能15万辆。', 'specs': '四大工艺齐全'},
      {'name': '超级电机V8s', 'year': '2024', 'desc': '小米自研超级电机V8s，转速27200rpm，全球量产电机最高转速。碳纤维转子技术。', 'specs': '27200rpm全球最高'},
    ];
    return _buildList(items, const Color(0xFFFF6900));
  }

  // ========== 机器人 ==========
  Widget _buildRobotSection() {
    final items = [
      {'name': 'CyberDog 铁蛋', 'year': '2021', 'desc': '小米首款仿生四足机器人，搭载NVIDIA Jetson Xavier NX平台，开放大量开发接口。', 'specs': '售价9999元，开源平台'},
      {'name': 'CyberDog 2 铁蛋二代', 'year': '2023', 'desc': '第二代四足机器人，运动能力大幅提升，可完成跑酷、后空翻等高难度动作。', 'specs': '自研微电机，更灵活'},
      {'name': 'CyberOne 铁大', 'year': '2022', 'desc': '小米首款全尺寸人形机器人，高177cm，重52kg。能感知人类情绪，可双足行走。', 'specs': '全尺寸人形机器人'},
    ];
    return _buildList(items, const Color(0xFF00897B));
  }

  // ========== 专利 ==========
  Widget _buildPatentSection() {
    final items = [
      {'name': '全球专利超3.7万件', 'year': '2024', 'desc': '覆盖5G、AI、IoT、智能驾驶等核心技术领域。', 'specs': '中国+海外双布局'},
      {'name': '5G标准必要专利', 'year': '2024', 'desc': '5G SEP声明量全球前十，在通信核心领域拥有重要话语权。', 'specs': '全球前十'},
      {'name': '研发人员超2万人', 'year': '2024', 'desc': '研发团队规模持续扩大，工程师文化是小米技术创新的核心驱动力。', 'specs': '占员工总数57%'},
      {'name': '2024年研发投入241亿元', 'year': '2024', 'desc': '同比增长26.2%，占营收6.6%，持续加大技术投入。', 'specs': '占营收6.6%'},
    ];
    return _buildList(items, const Color(0xFF8E24AA));
  }

  // ========== 通用列表 ==========
  Widget _buildList(List<Map<String, String>> items, Color color) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8, offset: const Offset(0, 2)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
                    child: Text(item['year'] ?? '', style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(item['name'] ?? '',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1A1A))),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(item['desc'] ?? '', style: TextStyle(fontSize: 14, color: Colors.grey.shade700, height: 1.6)),
              if (item['specs'] != null) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(color: Colors.grey.shade50, borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.bolt, size: 14, color: color),
                      const SizedBox(width: 4),
                      Text(item['specs']!, style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
