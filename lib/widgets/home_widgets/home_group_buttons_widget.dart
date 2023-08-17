import 'package:flutter/material.dart';
import 'package:trade_app/widgets/home_widgets/home_menu_button_widget.dart';

class HomeGroupButtonsWidget extends StatelessWidget {
  const HomeGroupButtonsWidget({super.key});

  // Bantu line 51 min, add tombol

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4), // Warna bayangan
                  spreadRadius: 2, // Radius sebaran bayangan
                  blurRadius: 7, // Radius blur bayangan
                  offset: Offset(0, 3), // Posisi offset bayangan (x, y)
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Color(0xFF0C356A),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    HomeMenuButtonWidget(
                      icon: Icons.payment,
                      text: "Bayar",
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Text(
                        "Help! Mentok euy, gk tau mau nambah apalagi",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
