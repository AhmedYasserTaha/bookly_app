import 'package:flutter/material.dart';

class CustomLoadingIndcator extends StatelessWidget {
  const CustomLoadingIndcator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
