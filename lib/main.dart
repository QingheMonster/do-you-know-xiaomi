import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/timeline_screen.dart';
import 'screens/products_screen.dart';
import 'screens/discover_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/finances_screen.dart';
import 'screens/tech_screen.dart';
import 'screens/ai_screen.dart';
import 'screens/leijun_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(const XiaomiTimelineApp());
}

class XiaomiTimelineApp extends StatelessWidget {
  const XiaomiTimelineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '你了解小米吗',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    TimelineScreen(),
    ProductsScreen(),
    DiscoverScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(0, Icons.home_rounded, Icons.home_outlined, '首页'),
                _buildNavItem(1, Icons.timeline_rounded, Icons.timeline_outlined, '时间线'),
                _buildNavItem(2, Icons.devices_rounded, Icons.devices_outlined, '产品'),
                _buildNavItem(3, Icons.explore_rounded, Icons.explore_outlined, '发现'),
                _buildNavItem(4, Icons.person_rounded, Icons.person_outlined, '我的'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData activeIcon, IconData icon, String label) {
    final isActive = _currentIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: isActive ? 16 : 8, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? AppTheme.xiaomiOrange.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isActive ? activeIcon : icon,
              color: isActive ? AppTheme.xiaomiOrange : Colors.grey.shade400,
              size: 22,
            ),
            if (isActive) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  color: AppTheme.xiaomiOrange,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // 头部
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFF6900), Color(0xFFFF8F33)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Text('MI', style: TextStyle(color: AppTheme.xiaomiOrange, fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text('你了解小米吗', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text('小米集团发展史 2010-2026', style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 8),
            _drawerItem(Icons.bar_chart, '财报数据', () => _navigateTo(const FinancesScreen())),
            _drawerItem(Icons.science, '技术实力', () => _navigateTo(const TechScreen())),
            _drawerItem(Icons.psychology, '小米AI', () => _navigateTo(const AIScreen())),
            _drawerItem(Icons.person, '雷军', () => _navigateTo(const LeijunScreen())),
            const Divider(height: 1),
            _drawerItem(Icons.info_outline, '关于', () => _navigateTo(const AboutScreen())),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'v1.0.0 · 小米粉丝社区作品',
                style: TextStyle(fontSize: 11, color: Colors.grey.shade400),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppTheme.xiaomiGray, size: 22),
      title: Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
      trailing: Icon(Icons.chevron_right, color: Colors.grey.shade300, size: 20),
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
    );
  }

  void _navigateTo(Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
}
