import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TechScreen extends StatelessWidget {
  const TechScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('硬核技术'),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            isScrollable: true,
            labelColor: AppTheme.xiaomiOrange,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppTheme.xiaomiOrange,
            tabs: [
              Tab(text: '芯片'),
              Tab(text: 'AI'),
              Tab(text: '智能驾驶'),
              Tab(text: '智能制造'),
              Tab(text: '机器人'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildChipSection(),
            _buildAISection(),
            _buildDriveSection(),
            _buildFactorySection(),
            _buildRobotSection(),
          ],
        ),
      ),
    );
  }

  // ========== 芯片 ==========
  Widget _buildChipSection() {
    final chips = [
      {
        'name': '澎湃S1',
        'year': '2017',
        'desc': '小米首款自研手机SoC芯片，全球第四家拥有手机SoC自研能力的厂商（继苹果、三星、华为之后）。',
        'specs': '28nm工艺，8核64位处理器',
        'image': null,
      },
      {
        'name': '澎湃P1',
        'year': '2021',
        'desc': '自研充电管理芯片，支持120W澎湃秒充，充电效率行业领先。搭载于小米12 Pro。',
        'specs': '支持4:1直充，充电效率提升',
        'image': null,
      },
      {
        'name': '澎湃G1',
        'year': '2022',
        'desc': '自研电池管理芯片，与澎湃P1组成"小米澎湃电池管理系统"，大幅提升电池寿命和安全性。',
        'specs': '毫秒级电池健康监测',
        'image': null,
      },
      {
        'name': '澎湃C1/C2',
        'year': '2021/2022',
        'desc': '自研影像ISP芯片，大幅提升拍照对焦、白平衡和降噪能力。C2搭载于小米12S Ultra。',
        'specs': '自研ISP，3A算法优化',
        'image': null,
      },
      {
        'name': '澎湃T1',
        'year': '2024',
        'desc': '自研信号增强芯片，提升手机信号接收能力，尤其在弱信号场景下表现优异。',
        'specs': '信号增强，弱网优化',
        'image': null,
      },
    ];
    return _buildList(chips, AppTheme.xiaomiOrange);
  }

  // ========== AI ==========
  Widget _buildAISection() {
    final items = [
      {
        'name': 'MiLM大语言模型',
        'year': '2024',
        'desc': '小米自研大语言模型，赋能澎湃OS、智能驾驶、智能客服等场景。支持多模态理解。',
        'specs': '端侧+云端双架构',
        'image': null,
      },
      {
        'name': '端侧AI部署',
        'year': '2024',
        'desc': '小米手机首次实现端侧大模型运行，无需联网即可使用AI功能，保护隐私的同时提升响应速度。',
        'specs': '小米14系列首次搭载',
        'image': null,
      },
      {
        'name': 'AI影像系统',
        'year': '2023-2025',
        'desc': 'AI场景识别、AI消除路人、AI扩图、AI写真等创新功能，让手机拍照更智能。',
        'specs': '澎湃OS原生AI能力',
        'image': null,
      },
      {
        'name': '小爱同学',
        'year': '2017-至今',
        'desc': '小米AI语音助手，月活用户超1亿，支持语音控制全屋智能设备，是小米AIoT生态的核心入口。',
        'specs': '月活1亿+，支持方言',
        'image': null,
      },
    ];
    return _buildList(items, const Color(0xFF7C4DFF));
  }

  // ========== 智能驾驶 ==========
  Widget _buildDriveSection() {
    final items = [
      {
        'name': '全栈自研智驾',
        'year': '2024',
        'desc': '小米智能驾驶全栈自研，包含感知、规划、控制三大核心模块。采用BEV+Transformer+占用网络架构。',
        'specs': '城市NOA + 高速NOA',
        'image': null,
      },
      {
        'name': '自研激光雷达方案',
        'year': '2024',
        'desc': '小米SU7 Max搭载禾赛AT128激光雷达，配合自研算法实现高精度3D感知。',
        'specs': '128线激光雷达',
        'image': null,
      },
      {
        'name': '端到端智驾',
        'year': '2025',
        'desc': '小米正在研发端到端智能驾驶方案，从传感器输入直接到驾驶决策输出，减少人工规则依赖。',
        'specs': '下一代智驾架构',
        'image': null,
      },
      {
        'name': 'CTB一体化电池',
        'year': '2024',
        'desc': '电池车身一体化技术，将电芯直接集成到车身底盘，提升空间利用率15%，增强车身刚性。',
        'specs': '体积利用率77.8%',
        'image': null,
      },
    ];
    return _buildList(items, const Color(0xFF1E88E5));
  }

  // ========== 智能制造 ==========
  Widget _buildFactorySection() {
    final items = [
      {
        'name': '小米智能工厂（手机）',
        'year': '2020',
        'desc': '北京亦庄"黑灯工厂"，全自动化产线，日产手机超万台。央视《大国重器》专题报道。',
        'specs': '全自动化，央视报道',
        'image': 'https://p6.itc.cn/q_70/images03/20231127/8c5b9e0a1d5c4f6e8b7a3c2d1e0f9a8b.jpeg',
      },
      {
        'name': '小米汽车超级工厂',
        'year': '2024',
        'desc': '北京亦庄自建汽车工厂，拥有冲压/焊装/涂装/总装四大完整工艺，年产能15万辆。',
        'specs': '四大工艺齐全，年产能15万+',
        'image': null,
      },
      {
        'name': '超级电机V8s',
        'year': '2024',
        'desc': '小米自研超级电机V8s，转速27200rpm，全球量产电机最高转速。采用碳纤维转子技术。',
        'specs': '27200rpm全球最高',
        'image': null,
      },
      {
        'name': '9100吨一体化压铸',
        'year': '2024',
        'desc': '小米SU7采用9100吨级一体化压铸后地板，减少零件数量、提升车身刚性。',
        'specs': '9100吨压铸机',
        'image': null,
      },
    ];
    return _buildList(items, const Color(0xFFFF6900));
  }

  // ========== 机器人 ==========
  Widget _buildRobotSection() {
    final items = [
      {
        'name': 'CyberDog 铁蛋',
        'year': '2021',
        'desc': '小米首款仿生四足机器人，搭载NVIDIA Jetson Xavier NX平台，开放大量开发接口。',
        'specs': '售价9999元，开源平台',
        'image': null,
      },
      {
        'name': 'CyberDog 2 铁蛋二代',
        'year': '2023',
        'desc': '第二代四足机器人，运动能力大幅提升，可完成跑酷、后空翻等高难度动作。',
        'specs': '自研微电机，更灵活',
        'image': null,
      },
      {
        'name': 'CyberOne 铁大',
        'year': '2022',
        'desc': '小米首款全尺寸人形机器人，高177cm，重52kg。能感知人类情绪，可双足行走。',
        'specs': '全尺寸人形机器人',
        'image': null,
      },
      {
        'name': '仿生机器人研发方向',
        'year': '2024-2025',
        'desc': '小米持续投入仿生机器人研发，结合AI大模型提升机器人的感知、决策和执行能力。',
        'specs': 'AI + 机器人融合',
        'image': null,
      },
    ];
    return _buildList(items, const Color(0xFF00897B));
  }

  // ========== 通用列表 ==========
  Widget _buildList(List<Map<String, String?>> items, Color color) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
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
              // 图片
              if (item['image'] != null)
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Image.network(
                    item['image']!,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: color.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            item['year'] ?? '',
                            style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            item['name'] ?? '',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['desc'] ?? '',
                      style: TextStyle(fontSize: 14, color: Colors.grey.shade700, height: 1.6),
                    ),
                    if (item['specs'] != null) ...[
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.bolt, size: 14, color: color),
                            const SizedBox(width: 4),
                            Text(
                              item['specs']!,
                              style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
