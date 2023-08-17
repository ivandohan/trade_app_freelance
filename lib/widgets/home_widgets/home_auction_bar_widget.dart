import 'package:flutter/material.dart';

class HomeAuctionBarWidget extends StatelessWidget {
  const HomeAuctionBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 220,
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
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lelang',
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
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Dimenangkan"
                          ),
                          Text(
                            "2 tawaran",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              color: Color(0xFF279EFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Dalam Antrian"),
                          Text(
                            "6 tawaran",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              color: Color(0xFF0C356A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Pembayaran terdekat'
                          ),
                          Text(
                            "02:16:19",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.red
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: GestureDetector(
                    child: SizedBox(
                      height: 20,
                      child: Row(
                        children: const [
                          Text(
                            "Lihat detail lelang",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF0C356A),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Icon(
                            Icons.arrow_forward,
                            size: 15,
                            weight: 500,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
