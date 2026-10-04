import 'package:flutter/material.dart';

// Palette Catppuccin Mocha
const base = Color(0xFF1E1E2E);
const mantle = Color(0xFF181825);
const crust = Color(0xFF11111B);
const surface0 = Color(0xFF313244);
const surface1 = Color(0xFF45475A);
const overlay1 = Color(0xFF7F849C);
const subtext0 = Color(0xFFA6ADC8);
const textColor = Color(0xFFCDD6F4);
const red = Color(0xFFF38BA8);
const maroon = Color(0xFFEBA0AC);
const peach = Color(0xFFFAB387);
const blue = Color(0xFF89B4FA);
const teal = Color(0xFF94E2D5);
const mauve = Color(0xFFCBA6F7);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mocha Home',
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [mantle, base, crust],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: surface0,
                        border: Border.all(color: maroon, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x33F38BA8),
                            blurRadius: 32,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.coffee_rounded,
                        size: 48,
                        color: peach,
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'HOME',
                      style: TextStyle(
                        color: red,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 8,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 64,
                      height: 3,
                      decoration: BoxDecoration(
                        color: maroon,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Welcome to my app',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Un petit coin cosy, fait avec Flutter.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: subtext0, fontSize: 15),
                    ),
                    const SizedBox(height: 28),
                    const Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      alignment: WrapAlignment.center,
                      children: [
                        _Tag(
                          icon: Icons.flutter_dash,
                          label: 'Flutter',
                          color: blue,
                        ),
                        _Tag(icon: Icons.code, label: 'Dart', color: teal),
                        _Tag(
                          icon: Icons.palette_outlined,
                          label: 'Mocha',
                          color: mauve,
                        ),
                      ],
                    ),
                    const SizedBox(height: 36),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      alignment: WrapAlignment.center,
                      children: [
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: red,
                            foregroundColor: crust,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 28,
                              vertical: 16,
                            ),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text('Get started'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            foregroundColor: maroon,
                            side: const BorderSide(color: maroon),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 28,
                              vertical: 16,
                            ),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text('Learn more'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                    const Text(
                      'Made with Flutter · Catppuccin Mocha',
                      style: TextStyle(color: overlay1, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: surface0,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: surface1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(color: textColor, fontSize: 14)),
        ],
      ),
    );
  }
}
