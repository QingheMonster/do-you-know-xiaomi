import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../data/xiaomi_data.dart';
import '../widgets/number_card.dart';
import '../widgets/era_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _fadeAnim = CurvedAnimation(parent: _animController, curve: Curves.easeOut);
    _animController.forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(child: Text('Menu')),
      ),
      body: FadeTransition(
        opacity: _fadeAnim,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _buildHeroSection()),
            SliverToBoxAdapter(child: _buildQuickStats()),
            SliverToBoxAdapter(child: _buildSectionHeader('发展历程', '查看全部')),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => EraCard(era: XiaomiData.eras[index], index: index),
                childCount: XiaomiData.eras.length,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1A1A1A), Color(0xFF2A2A2A), Color(0xFF1A1A1A)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 顶部导航栏
              Row(
                children: [
                  Builder(
                    builder: (context) => GestureDetector(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.menu, color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppTheme.xiaomiOrange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text('MI', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // 标题
              const Text(
                '你了解小米吗？',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '从14人创业到世界500强\n小米集团发展史 2010-2026',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 15,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 24),
              // 底部装饰线
              Container(
                width: 40,
                height: 3,
                decoration: BoxDecoration(
                  color: AppTheme.xiaomiOrange,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickStats() {
    return Transform.translate(
      offset: const Offset(0, -20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: XiaomiData.keyNumbers.length,
          itemBuilder: (context, index) {
            return NumberCard(number: XiaomiData.keyNumbers[index]);
          },
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, String action) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1A1A),
            ),
          ),
          Text(
            action,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
