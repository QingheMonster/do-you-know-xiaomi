import 'package:flutter/material.dart';
import '../models/timeline_event.dart';

class XiaomiData {
  // 关键数字
  static List<KeyNumber> get keyNumbers => [
    KeyNumber(label: '成立年份', value: '2010', colorValue: 0xFFFF6900),
    KeyNumber(label: '港股上市', value: '1810', unit: '.HK', colorValue: 0xFFFF6900),
    KeyNumber(label: '世界500强', value: '#266', colorValue: 0xFFFF6900),
    KeyNumber(label: '全球手机', value: '#3', unit: '出货量', colorValue: 0xFFFF6900),
    KeyNumber(label: '2024营收', value: '3659', unit: '亿元', colorValue: 0xFFFF6900),
    KeyNumber(label: '员工', value: '3.5', unit: '万+', colorValue: 0xFFFF6900),
  ];

  // 业务板块
  static List<BusinessSegment> get businessSegments => [
    BusinessSegment(
      name: '智能手机',
      description: '小米+Redmi双品牌战略，覆盖从千元到万元全价位段',
      icon: Icons.smartphone,
      colorValue: 0xFFFF6900,
      highlights: ['2024全球出货量第三', '小米数字系列冲击高端', 'Redmi主打极致性价比'],
    ),
    BusinessSegment(
      name: '智能电动汽车',
      description: '2024年小米SU7正式上市，首年交付超13万辆',
      icon: Icons.directions_car,
      colorValue: 0xFF1E88E5,
      highlights: ['小米SU7上市即爆款', '全栈自研智能驾驶', '纽北最速四门电车'],
    ),
    BusinessSegment(
      name: 'IoT与生活消费',
      description: '全球最大的消费级IoT平台，连接设备超7亿台',
      icon: Icons.devices_other,
      colorValue: 0xFF43A047,
      highlights: ['米家APP为核心入口', '智能家居全品类覆盖', '生态链孵化模式'],
    ),
    BusinessSegment(
      name: '智能电视与大家电',
      description: '小米电视连续多年中国出货量第一，空调冰箱洗衣机全面布局',
      icon: Icons.tv,
      colorValue: 0xFF8E24AA,
      highlights: ['电视连续中国第一', '空调/冰箱/洗衣机', '大师系列冲击高端'],
    ),
    BusinessSegment(
      name: '互联网服务',
      description: '澎湃OS为载体，广告+游戏+金融科技',
      icon: Icons.cloud,
      colorValue: 0xFF00ACC1,
      highlights: ['澎湃OS连接万物', '全球MIUI月活6亿+', '金融科技+游戏'],
    ),
    BusinessSegment(
      name: '生态链模式',
      description: '投资+孵化，培育超400家生态链企业',
      icon: Icons.hub,
      colorValue: 0xFFFFB300,
      highlights: ['华米/紫米/石头科技等', '共享小米品牌和渠道', '多家上市公司'],
    ),
  ];

  // 时间线 — 5个阶段
  static List<TimelineEra> get eras => [
    _era1,
    _era2,
    _era3,
    _era4,
    _era5,
  ];

  // 阶段一：创业期 2010-2013
  static final TimelineEra _era1 = TimelineEra(
    id: 'era1',
    title: '创业期',
    subtitle: '从MIUI到手机帝国的起点',
    yearRange: '2010-2013',
    colorValue: 0xFFFF6900,
    icon: Icons.eco,
    events: [
      TimelineEvent(
        date: '2010.04.06',
        title: '小米正式成立',
        description: '雷军与林斌、黎万强等7位联合创始人在北京中关村银谷大厦喝小米粥，正式创办小米公司。',
        detail: '创业团队共14人，初始资金约1000万元。公司名字取自"小米加步枪"，寓意以小博大。雷军当时已是金山软件CEO和天使投资人，这次创业是他的"最后一战"。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2010.08.16',
        title: 'MIUI首个内测版发布',
        description: '基于Android深度定制的MIUI系统首个版本发布，仅100名"梦想赞助商"参与内测。',
        detail: 'MIUI以"为发烧而生"为口号，采用互联网开发模式，每周五更新。这批种子用户后来成为小米最忠实的粉丝群体——米粉的起源。MIUI的成功为小米手机的推出奠定了用户基础。',
        tag: '产品',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2010年底',
        title: '米聊发布',
        description: '小米推出即时通讯应用"米聊"，比微信早一个月上线，一度占据先发优势。',
        detail: '米聊在2011年初用户数快速增长，一度达到400万。但随着腾讯微信的强势推广和QQ关系链导入，米聊逐渐败下阵来。这段经历让小米深刻认识到社交网络的力量。',
        tag: '产品',
      ),
      TimelineEvent(
        date: '2011.08.16',
        title: '小米手机1发布',
        description: '首款小米手机发布，搭载高通双核1.5GHz处理器，定价1999元，开启"互联网手机"时代。',
        detail: '小米手机1是当时全球主频最快的智能手机之一，但定价仅为同配置旗舰的一半。发布会后瞬间引爆全网，首批30万台10分钟售罄。1999元的定价成为一代人的记忆，也奠定了小米"极致性价比"的品牌基因。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2012.08.16',
        title: '小米手机2发布',
        description: '搭载高通APQ8064四核处理器，成为当时性能最强的Android手机之一。',
        detail: '小米2系列生命周期内销售超过1000万台，是小米第一款真正的"爆款"。同期小米完成新一轮融资，估值达到40亿美元。',
        tag: '产品',
      ),
      TimelineEvent(
        date: '2013.07.31',
        title: '红米手机发布',
        description: '定价799元的红米手机发布，正式进军千元机市场，首发即售罄。',
        detail: '红米的推出让小米覆盖了更广泛的用户群体。红米1首批发售10万台，QQ空间预约人数超过745万。红米后来成为小米出货量的重要支撑，2019年正式独立为Redmi品牌。',
        tag: '产品',
      ),
      TimelineEvent(
        date: '2013.08',
        title: '小米电视发布',
        description: '小米发布首款47英寸智能电视，售价2999元，进入大家电领域。',
        detail: '小米电视以"年轻人的第一台电视"为定位，凭借互联网模式+高性价比迅速打开市场。此后小米电视连续多年位居中国出货量第一。',
        tag: '产品',
      ),
    ],
  );

  // 阶段二：爆发期 2014-2016
  static final TimelineEra _era2 = TimelineEra(
    id: 'era2',
    title: '爆发期',
    subtitle: '国内第一，走向世界',
    yearRange: '2014-2016',
    colorValue: 0xFFE53935,
    icon: Icons.rocket_launch,
    events: [
      TimelineEvent(
        date: '2014年初',
        title: '生态链计划启动',
        description: '小米正式成立生态链部门，开始投资孵化硬件创业公司，打造小米生态体系。',
        detail: '小米生态链的核心逻辑是"投资+孵化"：输出小米的品牌、供应链、渠道和方法论，帮助创业公司快速成长。首批生态链产品包括小米手环（华米）、小米移动电源（紫米）等，均成为现象级爆款。截至2024年，小米已投资超过400家生态链企业。',
        tag: '战略',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2014年',
        title: '国内手机销量第一',
        description: '小米全年出货量6112万台，超越三星成为中国智能手机市场第一名。',
        detail: '小米仅用3年时间就从零做到中国第一，创造了商业奇迹。同年完成新一轮11亿美元融资，估值达到450亿美元，成为全球估值最高的未上市科技公司。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2015.04',
        title: '国际化正式起航',
        description: '小米在印度举办首场海外发布会，小米4i以12999卢比的价格进军印度市场。',
        detail: '印度成为小米国际化最重要的市场。凭借极致性价比策略和线上销售模式，小米迅速在印度打开局面。到2018年，小米已成为印度智能手机市场份额第一的品牌。',
        tag: '国际化',
      ),
      TimelineEvent(
        date: '2015.07',
        title: '小米手环出货量全球第二',
        description: '华米科技的小米手环出货量突破1000万只，成为全球第二大可穿戴设备厂商。',
        detail: '小米手环以79元的价格颠覆了可穿戴设备市场，让智能手环从极客玩具变成了大众消费品。华米科技后来在纽交所上市，成为小米生态链首家上市公司。',
        tag: '生态链',
      ),
      TimelineEvent(
        date: '2016.10.25',
        title: '小米MIX发布',
        description: '小米发布全面屏概念手机MIX，由设计大师菲利普·斯塔克操刀，惊艳全球。',
        detail: '小米MIX是全球首款全面屏手机（屏占比91.3%），采用全陶瓷机身，被芬兰设计博物馆、法国蓬皮杜艺术中心收藏。MIX不仅拯救了当时处于低谷的小米品牌，更开启了智能手机全面屏时代。此后所有手机厂商都开始跟进全面屏设计。',
        tag: '里程碑',
        isHighlight: true,
      ),
    ],
  );

  // 阶段三：逆转期 2016-2018
  static final TimelineEra _era3 = TimelineEra(
    id: 'era3',
    title: '低谷与逆转',
    subtitle: '绝处逢生，港股上市',
    yearRange: '2016-2018',
    colorValue: 0xFF5E35B1,
    icon: Icons.autorenew,
    events: [
      TimelineEvent(
        date: '2016年',
        title: '销量暴跌',
        description: '小米手机出货量从2015年的6490万台暴跌至4150万台，跌幅超过36%，跌出全球前五。',
        detail: '这是小米成立后最大的危机。过度依赖线上渠道、供应链管理不足、竞争对手OPPO/vivo在线下渠道的强势崛起，导致小米销量断崖式下跌。雷军亲自接管手机研发和供应链，开始"补课"。',
        tag: '危机',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2017年初',
        title: '"补课"改革',
        description: '雷军主导供应链改革、加强线下渠道建设、开设小米之家，推动小米从危机中复苏。',
        detail: '小米开始大规模开设线下小米之家门店，采用"高效率、低毛利"的新零售模式。同时加强供应链管理，解决产能瓶颈。到2017年底，小米之家超过200家，坪效全球第二（仅次于苹果）。',
        tag: '战略',
      ),
      TimelineEvent(
        date: '2017年',
        title: '小米电视中国第一',
        description: '小米电视年出货量跃居中国第一，此后连续多年保持领先。',
        detail: '小米电视的成功验证了小米模式在大家电领域的可行性。4A系列以1999元的价格将55英寸4K智能电视带入大众家庭，成为又一个"年轻人的第一台电视"。',
        tag: '产品',
      ),
      TimelineEvent(
        date: '2017Q4',
        title: '重回全球前五',
        description: '小米手机出货量重回全球第五，标志着小米从危机中成功逆袭。',
        detail: '在雷军亲自操刀下，小米通过小米MIX系列树立品牌形象、红米系列稳固出货量、线下渠道补齐短板，仅用一年就完成了从低谷到复苏的V型反转。小米的这次逆转被哈佛商学院收录为经典商业案例。',
        tag: '里程碑',
      ),
      TimelineEvent(
        date: '2018.07.09',
        title: '港交所上市',
        description: '小米集团在香港联交所正式上市，股票代码1810.HK，成为港股首家"同股不同权"企业。',
        detail: '小米IPO发行价17港元，市值约540亿美元，是当年全球第三大科技IPO。"1810"的股票代码致敬小米成立的年份（2010）。上市当天雷军敲响了两面铜锣——一面给小米，一面给香港交易所。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2018年底',
        title: '小米与美图达成战略合作',
        description: '小米获得美图手机品牌和影像技术的授权，强化女性用户市场和影像能力。',
        detail: '这次合作让小米获得了美图在人像美颜方面的技术积累，后来小米Civi系列的出色自拍能力就源于此。',
        tag: '合作',
      ),
    ],
  );

  // 阶段四：多元扩张 2019-2023
  static final TimelineEra _era4 = TimelineEra(
    id: 'era4',
    title: '多元扩张',
    subtitle: '高端化、AIoT、造车',
    yearRange: '2019-2023',
    colorValue: 0xFF1E88E5,
    icon: Icons.trending_up,
    events: [
      TimelineEvent(
        date: '2019.01.03',
        title: 'Redmi品牌独立',
        description: '红米升级为独立品牌Redmi，由卢伟冰操盘，小米和Redmi形成双品牌战略。',
        detail: 'Redmi独立后定位"极致性价比"，小米品牌则向上冲击中高端。双品牌策略让小米可以同时覆盖不同价位段，避免品牌定位模糊。Redmi K系列后来成为最受欢迎的性价比旗舰之一。',
        tag: '战略',
      ),
      TimelineEvent(
        date: '2019.07.22',
        title: '首次入选世界500强',
        description: '小米集团首次入选《财富》世界500强，排名第468位，成为最年轻的世界500强企业。',
        detail: '从成立到入选世界500强，小米仅用了9年，打破了此前由acebook保持的纪录（12年）。这标志着小米从创业公司正式跻身全球顶级企业行列。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2020.02.13',
        title: '小米10系列发布',
        description: '小米10 Pro定价4999元起，是小米首款真正冲击高端的产品，搭载骁龙865+1亿像素。',
        detail: '小米10系列标志着小米从"性价比"向"高端化"的战略转型。雷军提出"小米要忘记价格，做最好的产品"。小米10 Pro首次在DXOMARK评分中排名第一，证明小米有能力做出顶级产品。',
        tag: '产品',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2021.03.30',
        title: '雷军宣布造车',
        description: '小米春季发布会下半场，雷军正式宣布小米进军智能电动汽车领域，"这是我人生最后一次重大创业项目"。',
        detail: '雷军宣布小米全资子公司负责智能电动汽车业务，首期投资100亿元人民币，预计10年投资100亿美元。雷军表示"愿意押上人生所有积累的战绩和声誉，为小米汽车而战"。发布会后小米股价应声上涨。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2021.08.10',
        title: '仿生机器人CyberDog亮相',
        description: '小米发布第一代仿生四足机器人CyberDog（铁蛋），售价9999元。',
        detail: 'CyberDog是小米在机器人领域的首次尝试，搭载NVIDIA Jetson Xavier NX平台，开放了大量的开发接口。这标志着小米开始探索智能硬件的前沿领域。',
        tag: '产品',
      ),
      TimelineEvent(
        date: '2022.07.04',
        title: '小米12S Ultra发布',
        description: '小米与徕卡联合研发的小米12S Ultra发布，搭载1英寸大底传感器+徕卡光学镜头。',
        detail: '小米12S Ultra是小米与徕卡战略合作的首款产品，搭载索尼IMX989 1英寸大底传感器+徕卡Summicron镜头，影像能力大幅提升。这款产品让小米在高端手机市场真正站稳了脚跟。',
        tag: '合作',
      ),
      TimelineEvent(
        date: '2023.10.26',
        title: '小米澎湃OS发布',
        description: '小米发布全新操作系统"小米澎湃OS"（Xiaomi HyperOS），整合手机、汽车、IoT设备。',
        detail: '澎湃OS基于Android和自研Vela系统深度融合，实现了"人车家全生态"的统一操作系统。它不仅是手机系统，更是连接小米汽车、智能家居等所有设备的中枢。这是小米从"硬件公司"向"生态公司"转型的关键一步。',
        tag: '战略',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2023.12.28',
        title: '小米汽车技术发布会',
        description: '小米举办汽车技术发布会，首次公开小米SU7外观和核心技术参数。',
        detail: '小米SU7定位C级高性能生态科技轿车，采用小米自研的超级电机V8s（转速27200rpm，全球最高）、CTB一体化电池技术、全栈自研智能驾驶方案。外观设计引发全网热议，被称为"年轻人的第一台电车"。',
        tag: '产品',
      ),
    ],
  );

  // 阶段五：造车时代 2024-2026
  static final TimelineEra _era5 = TimelineEra(
    id: 'era5',
    title: '造车时代',
    subtitle: '人车家全生态',
    yearRange: '2024-2026',
    colorValue: 0xFF00897B,
    icon: Icons.directions_car,
    events: [
      TimelineEvent(
        date: '2024.03.28',
        title: '小米SU7正式上市',
        description: '小米SU7正式上市交付，售价21.59万-29.99万元，上市24小时大定突破88898台。',
        detail: '小米SU7是小米造车三年的成果，定位C级高性能生态科技轿车。标准版搭载单电机，Pro版和Max版搭载双电机四驱系统。Max版零百加速2.78秒，CLTC续航830km。上市后订单火爆，成为新能源车市场现象级产品。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2024.04',
        title: 'SU7首月交付超7000台',
        description: '小米SU7开启交付首月即交付超7000台，创国产新势力首月交付纪录。',
        detail: '小米汽车的交付速度远超行业预期。从小米宣布造车到首款车交付仅3年，比蔚来（4年）、小鹏（4年）、理想（3.5年）都要快。产能爬坡速度也超预期，6月单月交付已破万。',
        tag: '里程碑',
      ),
      TimelineEvent(
        date: '2024.06',
        title: '小米大模型团队组建',
        description: '小米组建AI大模型团队，MiLM大模型首次亮相，赋能澎湃OS和智能驾驶。',
        detail: '小米在AI领域的布局加速，大模型团队专注端侧AI部署，让小米手机、汽车、IoT设备都具备AI能力。MiMo系列大模型就是这个团队的成果之一。',
        tag: '战略',
      ),
      TimelineEvent(
        date: '2024.10',
        title: 'SU7 Ultra原型车纽北刷圈',
        description: '小米SU7 Ultra原型车在纽博格林北环赛道创下6分46秒874的圈速纪录。',
        detail: '这个成绩让小米SU7 Ultra成为纽北最速四门电动车，超越了保时捷Taycan Turbo GT等传统豪华品牌。纽北刷圈不仅是技术实力的证明，更是小米品牌高端化的重要里程碑。',
        tag: '里程碑',
        isHighlight: true,
      ),
      TimelineEvent(
        date: '2024.12',
        title: '2024年全年交付超13万辆',
        description: '小米汽车2024年全年交付超13万辆，完成年度目标。',
        detail: '作为造车新势力首年，小米SU7的表现堪称惊艳。对比：蔚来首年交付约1.1万辆，小鹏首年约1.3万辆，理想首年约3.3万辆。小米首年就是它们的10倍以上。',
        tag: '里程碑',
      ),
      TimelineEvent(
        date: '2025.02',
        title: '小米SU7 Ultra量产版上市',
        description: '小米SU7 Ultra量产版正式上市，售价52.99万元，定位高性能电动超跑。',
        detail: 'SU7 Ultra搭载小米自研超级电机V8s，零百加速1.98秒，最高时速350km/h。这款车是小米汽车冲击高端的旗舰之作，对标特斯拉Model S Plaid和保时捷Taycan Turbo GT。',
        tag: '产品',
      ),
      TimelineEvent(
        date: '2025.06',
        title: '小米汽车累计交付突破20万辆',
        description: '小米汽车自上市以来累计交付突破20万辆，月交付稳定在2万台以上。',
        detail: '小米汽车的产能和交付持续爬坡，工厂二期已投产。小米汽车已实现盈利（按BOM成本计算），比行业预期提前2-3年。',
        tag: '里程碑',
      ),
      TimelineEvent(
        date: '2024.10',
        title: '小米15系列发布',
        description: '小米15系列搭载骁龙8 Gen4+澎湃OS 3.0，AI能力全面升级。',
        detail: '小米15 Pro首次搭载小米自研影像芯片，AI拍照能力大幅提升。澎湃OS 3.0进一步优化了跨设备协同，让手机、汽车、智能家居无缝联动。',
        tag: '产品',
      ),
      TimelineEvent(
        date: '2025年底',
        title: '小米2025全年营收创新高',
        description: '小米集团2025全年营收预计突破4000亿元，汽车业务贡献显著。',
        detail: '小米从手机公司成功转型为"人车家全生态"科技集团。汽车业务营收占比快速提升，IoT业务持续稳健增长。小米已跻身全球顶级科技公司行列。',
        tag: '里程碑',
      ),
    ],
  );
}
