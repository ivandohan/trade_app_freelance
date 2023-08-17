import 'package:flutter/material.dart';

class IconButtonWithCaptionWidget extends StatelessWidget {
  final String caption;
  final IconData icon;
  Color? color;

  IconButtonWithCaptionWidget({
    super.key,
    required this.caption,
    required this.icon,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Flexible(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10)
              ),
              height: 40,
              width: 40,
              child: Icon(icon),
            ),
            const SizedBox(height: 5,),
            Container(
              child: Text(
                caption,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
