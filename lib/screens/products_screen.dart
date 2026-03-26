import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/products_data.dart';
import '../models/timeline_event.dart';
import '../theme/app_theme.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: const Text('核心产品'),
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            bottom: TabBar(
              controller: _tabController,
              labelColor: AppTheme.xiaomiOrange,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppTheme.xiaomiOrange,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: const [
                Tab(icon: Icon(Icons.directions_car_filled), text: '小米汽车'),
                Tab(icon: Icon(Icons.smartphone), text: '小米手机'),
                Tab(icon: Icon(Icons.home_filled), text: '智能家居'),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildProductPage(ProductsData.car, const Color(0xFF1E88E5), Icons.directions_car_filled, '小米汽车', '人车家全生态的起点'),
            _buildProductPage(ProductsData.phone, AppTheme.xiaomiOrange, Icons.smartphone, '小米手机', '感动人心 价格厚道'),
            _buildProductPage(ProductsData.iot, AppTheme.colorSuccess, Icons.home_filled, '智能家居', '全球最大的消费级IoT平台'),
          ],
        ),
      ),
    );
  }

  Widget _buildProductPage(List<ProductFeature> features, Color color, IconData icon, String title, String subtitle) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 产品Hero
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color, color.withOpacity(0.8)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.white, size: 40),
                const SizedBox(height: 16),
                Text(title, style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w800)),
                const SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 14)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // 竞争力卡片
          ...features.map((f) => _buildFeatureCard(f, color)),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(ProductFeature f, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 12, offset: const Offset(0, 3)),
        ],
      ),
      child: Column(
        children: [
          // 头部
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(f.product, style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(width: 8),
                Text(f.feature, style: const TextStyle(fontSize: 14, color: Color(0xFF999999))),
              ],
            ),
          ),
          const SizedBox(height: 14),
          // 对比区域
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                // 小米行
                Row(
                  children: [
                    Container(
                      width: 4,
                      height: 36,
                      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(2)),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('小米', style: TextStyle(fontSize: 11, color: Color(0xFF999999), fontWeight: FontWeight.w600)),
                          Text(f.value, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: color)),
                        ],
                      ),
                    ),
                    const Icon(Icons.check_circle, color: AppTheme.colorSuccess, size: 20),
                  ],
                ),
                // 竞品行
                if (f.competitor != null) ...[
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        width: 4,
                        height: 36,
                        decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(2)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(f.competitor!, style: const TextStyle(fontSize: 11, color: Color(0xFF999999), fontWeight: FontWeight.w600)),
                            Text(f.competitorValue!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          // 底部
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '来源：${f.source ?? "官方数据"}',
                    style: TextStyle(fontSize: 11, color: Colors.grey.shade400, fontStyle: FontStyle.italic),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final text = f.competitor != null
                        ? '小米${f.product} ${f.feature}：${f.value}，${f.competitor}仅${f.competitorValue}。来源：${f.source}'
                        : '小米${f.product} ${f.feature}：${f.value}。来源：${f.source}';
                    Clipboard.setData(ClipboardData(text: text));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('已复制'), duration: Duration(seconds: 1)),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.copy, size: 16, color: color),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
