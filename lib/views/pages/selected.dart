import 'package:flutter/material.dart';


class SelectedPage extends StatelessWidget {
  const SelectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 250),
      child: Column(
        children: [
          Image.asset('assets/buttons/get_started_button.png')
        ],
      ),
    );
  }
}
