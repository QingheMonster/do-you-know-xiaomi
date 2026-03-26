import '../models/timeline_event.dart';

class LeijunData {
  static List<CareerEvent> get events => [
    CareerEvent(year: '1969', title: '出生于湖北仙桃', description: '12月16日出生于湖北省仙桃市'),
    CareerEvent(year: '1987', title: '考入武汉大学', description: '武汉大学计算机系，仅用两年修完全部学分，编写的代码被编入教材'),
    CareerEvent(year: '1992', title: '加入金山软件', description: '23岁加入金山，历任总经理、总裁、CEO'),
    CareerEvent(year: '1998', title: '出任金山CEO', description: '29岁出任金山软件CEO，带领金山上市'),
    CareerEvent(year: '2007', title: '金山上市后卸任', description: '金山软件在香港联交所上市后卸任CEO，转任副董事长'),
    CareerEvent(year: '2007-2010', title: '天使投资人', description: '先后投资YY、UC浏览器、多玩游戏网等20多家公司，多家后来上市'),
    CareerEvent(year: '2010', title: '创办小米', description: '4月6日，与7位联合创始人喝小米粥，正式创办小米公司。称这是"人生最后一次重大创业"'),
    CareerEvent(year: '2018', title: '小米港交所上市', description: '小米在香港联交所上市，股票代码1810.HK'),
    CareerEvent(year: '2020', title: '小米十周年公开信', description: '提出"重新创业"，启动高端化战略，小米10系列开始冲击高端'),
    CareerEvent(year: '2021', title: '宣布造车', description: '"我愿意押上人生所有积累的战绩和声誉，为小米汽车而战"'),
    CareerEvent(year: '2024', title: 'SU7上市即爆款', description: '首年交付13万辆，小米汽车成为新能源车市场现象级产品'),
  ];

  static List<String> get quotes => [
    '"站在风口上，猪都能飞起来。"——强调趋势的重要性',
    '"专注、极致、口碑、快。"——小米互联网七字诀',
    '"我愿意押上人生所有积累的战绩和声誉，为小米汽车而战。"——宣布造车',
    '"永远相信美好的事情即将发生。"——小米价值观',
    '"感动人心，价格厚道。"——小米产品理念',
  ];
}
