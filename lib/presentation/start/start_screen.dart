import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
    return const Text(
      'Get Started with\nTracking Your Health!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildDescription() {
    return const SizedBox(
      width: 280,
      child: Text(
        'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
        style: TextStyle(color: Color(0xffc6c3f9), fontSize: 15),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildStartButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF6c63ff),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Text(
          'Get Started',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
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
              const SizedBox(height: 60),
              Image.asset('assets/images/bike.png'),
              const SizedBox(height: 95),

              // 왼쪽 정렬 적용 부분
              Align(alignment: Alignment.centerLeft, child: _buildTitle()),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: _buildDescription(),
              ),

              const SizedBox(height: 40),
              _buildStartButton(),
            ],
          ),
        ),
      ),
    );
  }
}
