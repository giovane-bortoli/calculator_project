import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;
  const Display({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    var fontSize = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(value, style: fontSize.displayLarge),
      ),
    );
  }
}
