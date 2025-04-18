import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:daelim_2025/presentation/main/widgets/gender_box.dart';
import 'package:daelim_2025/presentation/main/widgets/in_de_container.dart';
import 'package:daelim_2025/presentation/main/widgets/height_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _age = 0;
  int _weight = 0;
  double _height = 100.0;
  Gender _gender = Gender.male;

  void _onCalculated() {
    debugPrint('나이: $_age');
    debugPrint('몸무게: $_weight');
    debugPrint('키: $_height');
    debugPrint('성별: $_gender');

    final chHeight = _height / 100;
    final bmi = _weight / (chHeight * chHeight);

    debugPrint('BMI: $bmi');

    context.pushNamed(
      AppRoute.result.name,
      queryParameters: {'bmi': bmi.toStringAsFixed(2)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 35),
                const Text(
                  'BMI CALCULATOR',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: InDeContainer(
                        title: 'Age',
                        value: _age,
                        onMinus: () {
                          if (_age > 0) {
                            setState(() {
                              _age--;
                            });
                          }
                        },
                        onPlus: () {
                          setState(() {
                            _age++;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: InDeContainer(
                        title: 'Weight(KG)',
                        value: _weight,
                        onMinus: () {
                          if (_weight > 0) {
                            setState(() {
                              _weight--;
                            });
                          }
                        },
                        onPlus: () {
                          setState(() {
                            _weight++;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                heightBox(
                  onChanged: (height) {
                    setState(() {
                      _height = height;
                    });
                  },
                ),
                const SizedBox(height: 25),
                GenderBox(
                  onChanged: (gender) {
                    setState(() {
                      _gender = gender;
                    });
                  },
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: ElevatedButton(
                    onPressed: _onCalculated,
                    child: const Text('Calculate BMI'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
