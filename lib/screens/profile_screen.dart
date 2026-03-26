import 'package:flutter/material.dart';
import '../data/xiaomi_data.dart';
import '../theme/app_theme.dart';
import '../data/finances_data.dart';
import '../data/leijun_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('概览'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 小米概况卡片
            _buildOverviewCard(),
            const SizedBox(height: 16),
            // 关键数字
            _buildSectionTitle('核心数据'),
            const SizedBox(height: 12),
            _buildKeyNumbers(),
            const SizedBox(height: 20),
            // 最新动态
            _buildSectionTitle('最新里程碑'),
            const SizedBox(height: 12),
            _buildLatestMilestones(context),
            const SizedBox(height: 20),
            // 雷军金句
            _buildSectionTitle('雷军金句'),
            const SizedBox(height: 12),
            _buildQuoteCard(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF1A1A1A)));
  }

  Widget _buildOverviewCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1A1A1A), Color(0xFF2D2D2D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppTheme.xiaomiOrange,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Center(
                  child: Text('MI', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(width: 14),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('小米集团', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800)),
                    SizedBox(height: 2),
                    Text('Xiaomi Corporation · 1810.HK', style: TextStyle(color: Colors.white54, fontSize: 13)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _overviewStat('成立', '2010'),
              _overviewStat('世界500强', '#266'),
              _overviewStat('全球手机', '#3'),
              _overviewStat('员工', '3.5万+'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _overviewStat(String label, String value) {
    return Expanded(
      child: Column(
        children: [
          Text(value, style: const TextStyle(color: AppTheme.xiaomiOrange, fontSize: 16, fontWeight: FontWeight.w700)),
          const SizedBox(height: 2),
          Text(label, style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 11)),
        ],
      ),
    );
  }

  Widget _buildKeyNumbers() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: FinancesData.highlights.length > 4 ? 4 : FinancesData.highlights.length,
      itemBuilder: (context, index) {
        final h = FinancesData.highlights[index];
        return Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 8, offset: const Offset(0, 2)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                h['title']!.split(' ').first,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppTheme.xiaomiOrange),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 3),
              Text(
                h['desc']!,
                style: TextStyle(fontSize: 11, color: Colors.grey.shade600, height: 1.3),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLatestMilestones(BuildContext context) {
    // Get last 3 events from the latest era
    final latestEra = XiaomiData.eras.last;
    final events = latestEra.events.length > 3
        ? latestEra.events.sublist(latestEra.events.length - 3)
        : latestEra.events;

    return Column(
      children: events.map((event) => Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 8, offset: const Offset(0, 2)),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: Color(latestEra.colorValue).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(event.date.split('.').first, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(latestEra.colorValue))),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(event.title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF1A1A1A))),
                  const SizedBox(height: 3),
                  Text(event.description, style: TextStyle(fontSize: 12, color: Colors.grey.shade600), maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildQuoteCard() {
    final quote = LeijunData.quotes.first;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppTheme.xiaomiOrange.withOpacity(0.05), AppTheme.xiaomiOrange.withOpacity(0.02)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppTheme.xiaomiOrange.withOpacity(0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.format_quote, color: AppTheme.xiaomiOrange, size: 28),
          const SizedBox(height: 8),
          Text(
            quote,
            style: const TextStyle(fontSize: 15, color: Color(0xFF333333), height: 1.6, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 12),
          const Text('— 雷军', style: TextStyle(fontSize: 13, color: AppTheme.xiaomiOrange, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
