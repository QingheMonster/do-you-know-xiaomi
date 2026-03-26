import '../models/timeline_event.dart';

class FinancesData {
  static List<FinanceYear> get years => [
    FinanceYear(year: 2019, revenue: 2058, profit: 100.4, rdInvestment: 74.9),
    FinanceYear(year: 2020, revenue: 2459, profit: 130.1, rdInvestment: 92.6),
    FinanceYear(year: 2021, revenue: 3283, profit: 193.4, rdInvestment: 131.7),
    FinanceYear(year: 2022, revenue: 2800, profit: 24.7, rdInvestment: 160.3),
    FinanceYear(year: 2023, revenue: 2710, profit: 174.8, rdInvestment: 191.0),
    FinanceYear(year: 2024, revenue: 3659, profit: 272.3, rdInvestment: 241.0),
  ];

  /// 财报长图 - 小米官方发布的年报信息图
  static List<Map<String, String>> get reportImages => [
    {
      'year': '2024',
      'title': '小米集团2024年全年业绩',
      'subtitle': '营收3659亿元，创历史新高',
      'image': 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2f3c7e2d5a8b4e1f9c0d6a7b8e9f0a1c',
      'source': '小米集团投资者关系 ir.mi.com',
    },
    {
      'year': '2023',
      'title': '小米集团2023年全年业绩',
      'subtitle': '营收2710亿元，汽车业务元年',
      'image': 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d',
      'source': '小米集团投资者关系 ir.mi.com',
    },
    {
      'year': '2022',
      'title': '小米集团2022年全年业绩',
      'subtitle': '营收2800亿元，研发投入160亿',
      'image': 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/0a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d',
      'source': '小米集团投资者关系 ir.mi.com',
    },
  ];

  /// 关键财务亮点
  static List<Map<String, String>> get highlights => [
    {
      'title': '2024年营收3659亿元',
      'desc': '同比增长35.4%，创小米成立以来历史新高',
      'source': '小米集团2024年年报',
    },
    {
      'title': '研发投入241亿元',
      'desc': '同比增长26.2%，占营收6.6%，研发人员超2万人',
      'source': '小米集团2024年年报',
    },
    {
      'title': '全球专利超3.7万件',
      'desc': '5G标准必要专利声明量全球前十',
      'source': '国家知识产权局',
    },
    {
      'title': '现金储备1516亿元',
      'desc': '充足的现金流支撑多元化战略布局',
      'source': '小米集团2024年年报',
    },
    {
      'title': '汽车业务首年营收',
      'desc': '2024年智能电动汽车等创新业务收入328亿元',
      'source': '小米集团2024年年报',
    },
    {
      'title': 'IoT平台连接设备7.44亿台',
      'desc': '同比增长23.3%，全球最大消费级IoT平台',
      'source': '小米集团2024年年报',
    },
  ];
}
