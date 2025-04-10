import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with\nTracking Your Health!';
  final _desc =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';

  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  TextStyle get _descStyle => TextStyle(color: Color(0xFFC6C3f9), fontSize: 15);

  Widget _buildAppName() {
    return const Text(
      'BMI Calculator',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      _title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildDescription() {
    return Text(
      _desc,
      style: TextStyle(color: Color(0xffc6c3f9), fontSize: 15),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath),
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xff081854)),
        child: Text('Get Started'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6c63ff),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildAppName(),
              SizedBox(height: 60),
              Image.asset('assets/images/bike.png'),
              SizedBox(height: 95),
              // _buildTitle(),
              // SizedBox(height: 15),
              // _buildDescription(),
              _buildTitleDesc(),
              SizedBox(height: 40),
              _buildStartButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
