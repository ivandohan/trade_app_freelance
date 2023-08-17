import 'package:flutter/material.dart';

class HomeMenuButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const HomeMenuButtonWidget({
    super.key,
    required this.icon,
    required this.text,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFF279EFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Color(0xFFD5FFD0),
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFFD5FFD0),
            ),
          ),
        ],
      ),
    );
  }
}
