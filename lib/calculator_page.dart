import 'package:calculator_project/controllers/calculator_controller.dart';
import 'package:calculator_project/widgets/button_hub.dart';
import 'package:calculator_project/widgets/display.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => CalculatorPageState();
}

class CalculatorPageState extends State<CalculatorPage> {
  final controller = CalculatorController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Display(value: controller.result),
        ),
        Expanded(
          flex: 3,
          child: ButtonHub(
            onButtonClick: (click) {
              controller.onButtonClick(click);
            },
          ),
        )
      ],
    );
  }
}
