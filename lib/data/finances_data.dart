import '../models/timeline_event.dart';

class FinancesData {
  static List<FinanceYear> get years => [
    FinanceYear(year: 2019, revenue: 2058, profit: 115, rdInvestment: 75),
    FinanceYear(year: 2020, revenue: 2459, profit: 130, rdInvestment: 93),
    FinanceYear(year: 2021, revenue: 3283, profit: 220, rdInvestment: 132),
    FinanceYear(year: 2022, revenue: 2800, profit: 85, rdInvestment: 160),
    FinanceYear(year: 2023, revenue: 2710, profit: 175, rdInvestment: 191),
    FinanceYear(year: 2024, revenue: 3659, profit: 272, rdInvestment: 241),
  ];

  /// 关键财务亮点
  static List<Map<String, String>> get highlights => [
    {'title': '2024年营收3659亿元', 'desc': '同比增长27%，创历史新高', 'source': '小米集团2024年年报'},
    {'title': '研发投入241亿元', 'desc': '同比增长26%，占营收6.6%', 'source': '小米集团2024年年报'},
    {'title': '全球专利超3.7万件', 'desc': '5G标准必要专利声明全球前十', 'source': '国家知识产权局'},
    {'title': '现金储备1516亿元', 'desc': '充足的现金流支撑多元化战略', 'source': '小米集团2024年年报'},
  ];
}
