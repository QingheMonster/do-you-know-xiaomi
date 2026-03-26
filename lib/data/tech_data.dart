import '../models/timeline_event.dart';

class TechData {
  static List<Map<String, dynamic>> get items => [
    {
      'category': '芯片',
      'icon': 'chip',
      'items': [
        {'title': '澎湃S1', 'desc': '2017年发布，全球第四家拥有手机SoC自研能力的厂商', 'source': '小米发布会'},
        {'title': '澎湃P1', 'desc': '自研充电管理芯片，支持120W澎湃秒充', 'source': '小米发布会'},
        {'title': '澎湃G1', 'desc': '自研电池管理芯片，提升电池寿命和安全性', 'source': '小米发布会'},
        {'title': '澎湃C1/C2', 'desc': '自研影像芯片，大幅提升拍照处理能力', 'source': '小米发布会'},
      ],
    },
    {
      'category': 'AI与大模型',
      'icon': 'ai',
      'items': [
        {'title': 'MiLM大模型', 'desc': '小米自研大语言模型，赋能澎湃OS和智能驾驶', 'source': '小米AI实验室'},
        {'title': '端侧AI部署', 'desc': '小米手机首次实现端侧大模型运行，无需联网即可使用AI', 'source': '小米发布会'},
        {'title': 'AI影像', 'desc': 'AI场景识别、AI消除、AI扩图等创新功能', 'source': '小米产品介绍'},
      ],
    },
    {
      'category': '智能制造',
      'icon': 'factory',
      'items': [
        {'title': '小米智能工厂', 'desc': '北京亦庄"黑灯工厂"，全自动化产线，日产手机超万台', 'source': '央视《大国重器》'},
        {'title': '汽车超级工厂', 'desc': '北京亦庄自建工厂，全栈自研冲压/焊装/涂装/总装四大工艺', 'source': '小米汽车发布会'},
        {'title': 'CTB一体化电池', 'desc': '电池车身一体化技术，提升空间利用率和安全性', 'source': '小米汽车技术发布会'},
      ],
    },
    {
      'category': '专利与标准',
      'icon': 'patent',
      'items': [
        {'title': '全球专利超3.7万件', 'desc': '覆盖5G、AI、IoT、汽车等核心技术领域', 'source': '国家知识产权局'},
        {'title': '5G标准必要专利', 'desc': '全球5G SEP声明量前十', 'source': 'IPlytics数据'},
        {'title': '全球研发投入', 'desc': '2024年研发支出241亿元，研发人员超1.8万人', 'source': '小米集团年报'},
      ],
    },
  ];
}
