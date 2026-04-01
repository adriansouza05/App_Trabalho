import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../app_theme.dart';
import 'strategies_page.dart';
import 'comments_page.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = context.watch<AuthProvider>().userName;

    return Scaffold(
      backgroundColor: AppTheme.black,
      appBar: AppBar(
        title: Text("OLÁ, ${userName.toUpperCase()}"),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app, color: AppTheme.white),
            onPressed: () {
              context.read<AuthProvider>().logout();
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _buildMenuCard(
            context,
            "Estratégias",
            Icons.fitness_center,
            const StrategiesPage(),
          ),
          _buildMenuCard(
            context,
            "Comunidade",
            Icons.forum,
            const CommentsPage(),
          ),
          _buildMenuCard(context, "Calculadora IMC", Icons.calculate, null),
          _buildMenuCard(context, "Meu Perfil", Icons.person, null),
          _buildMenuCard(context, "Histórico", Icons.history, null),
          _buildMenuCard(context, "Sobre o App", Icons.info, const AboutPage()),
        ],
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context,
    String title,
    IconData icon,
    Widget? page,
  ) {
    return InkWell(
      onTap: () {
        if (page != null) {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Funcionalidade em desenvolvimento.")),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.cardGrey,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppTheme.borderGrey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.red.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 36, color: AppTheme.red),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppTheme.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
