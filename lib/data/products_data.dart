import '../models/timeline_event.dart';

class ProductsData {
  /// 小米汽车
  static List<ProductFeature> get car => [
    ProductFeature(
      product: '小米SU7', feature: '安全性',
      value: '中保研碰撞测试全部G（最优秀）',
      competitor: '特斯拉Model 3', competitorValue: '部分项目A',
      source: '中保研C-IASI官方测试报告',
    ),
    ProductFeature(
      product: '小米SU7 Max', feature: '零百加速',
      value: '2.78秒',
      competitor: '保时捷Taycan Turbo S', competitorValue: '2.8秒',
      source: '小米汽车官方发布会',
    ),
    ProductFeature(
      product: '小米SU7 Ultra', feature: '纽北圈速',
      value: '6分46秒874（最速四门电车）',
      competitor: '保时捷Taycan Turbo GT', competitorValue: '7分07秒',
      source: '纽博格林官方认证',
    ),
    ProductFeature(
      product: '小米SU7 Max', feature: 'CLTC续航',
      value: '830km',
      competitor: '特斯拉Model S', competitorValue: '715km',
      source: '工信部公告',
    ),
    ProductFeature(
      product: '小米SU7 Ultra', feature: '自研电机V8s',
      value: '转速27200rpm，全球最高',
      competitor: '保时捷Taycan', competitorValue: '16000rpm',
      source: '小米汽车技术发布会',
    ),
    ProductFeature(
      product: '小米汽车', feature: '首年交付',
      value: '13万辆',
      competitor: '蔚来首年', competitorValue: '1.1万辆',
      source: '小米集团公告',
    ),
  ];

  /// 小米手机
  static List<ProductFeature> get phone => [
    ProductFeature(
      product: '小米15 Pro', feature: '定价',
      value: '4999元起',
      competitor: 'iPhone 16 Pro', competitorValue: '7999元起',
      source: '小米/苹果官网',
    ),
    ProductFeature(
      product: '小米14 Ultra', feature: '影像系统',
      value: '徕卡Summilux + 1英寸大底',
      competitor: 'iPhone 15 Pro Max', competitorValue: '4800万像素',
      source: '小米官方发布会',
    ),
    ProductFeature(
      product: '小米手机', feature: '快充',
      value: '90W有线 + 50W无线',
      competitor: 'iPhone 16', competitorValue: '20W有线',
      source: '小米/苹果官网',
    ),
    ProductFeature(
      product: '小米手机', feature: '全球出货量',
      value: '第三名（2024年）',
      competitor: null, competitorValue: null,
      source: 'IDC全球季度手机追踪报告',
    ),
  ];

  /// 智能家居
  static List<ProductFeature> get iot => [
    ProductFeature(
      product: '小米IoT', feature: '连接设备数',
      value: '7亿+台',
      competitor: '华为HiLink', competitorValue: '未公布',
      source: '小米集团2024年年报',
    ),
    ProductFeature(
      product: '小米电视', feature: '中国出货量',
      value: '连续多年第一',
      competitor: null, competitorValue: null,
      source: '奥维云网AVC数据',
    ),
    ProductFeature(
      product: '米家APP', feature: '日活用户',
      value: '5000万+',
      competitor: null, competitorValue: null,
      source: '小米集团年报',
    ),
  ];
}
