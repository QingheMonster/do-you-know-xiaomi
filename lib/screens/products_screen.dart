import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      appBar: AppBar(
        title: const Text('核心产品'),
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppTheme.xiaomiOrange,
          unselectedLabelColor: Colors.grey,
          indicatorColor: AppTheme.xiaomiOrange,
          tabs: const [
            Tab(icon: Icon(Icons.directions_car), text: '汽车'),
            Tab(icon: Icon(Icons.smartphone), text: '手机'),
            Tab(icon: Icon(Icons.devices_other), text: '智能家居'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildFeatureList(ProductsData.car, const Color(0xFF1E88E5)),
          _buildFeatureList(ProductsData.phone, AppTheme.xiaomiOrange),
          _buildFeatureList(ProductsData.iot, const Color(0xFF43A047)),
        ],
      ),
    );
  }

  Widget _buildFeatureList(List<ProductFeature> features, Color color) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: features.length,
      itemBuilder: (context, index) {
        final f = features[index];
        return _buildFeatureCard(f, color);
      },
    );
  }

  Widget _buildFeatureCard(ProductFeature f, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
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
          // 产品名和功能
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  f.product,
                  style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                f.feature,
                style: const TextStyle(fontSize: 14, color: Color(0xFF666666)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // 小米数据
          Row(
            children: [
              const Icon(Icons.check_circle, size: 18, color: Color(0xFF43A047)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '小米：${f.value}',
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF1A1A1A)),
                ),
              ),
            ],
          ),
          // 竞品数据
          if (f.competitor != null) ...[
            const SizedBox(height: 6),
            Row(
              children: [
                Icon(Icons.compare_arrows, size: 18, color: Colors.grey.shade400),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '${f.competitor}：${f.competitorValue}',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                ),
              ],
            ),
          ],
          // 来源
          if (f.source != null) ...[
            const SizedBox(height: 8),
            Text(
              '来源：${f.source}',
              style: TextStyle(fontSize: 11, color: Colors.grey.shade400, fontStyle: FontStyle.italic),
            ),
          ],
          // 复制按钮
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: const Icon(Icons.copy, size: 18),
              color: color,
              onPressed: () {
                final text = f.competitor != null
                    ? '小米${f.product} ${f.feature}：${f.value}，${f.competitor}仅${f.competitorValue}。来源：${f.source}'
                    : '小米${f.product} ${f.feature}：${f.value}。来源：${f.source}';
                Clipboard.setData(ClipboardData(text: text));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('已复制到剪贴板'), duration: Duration(seconds: 1)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
