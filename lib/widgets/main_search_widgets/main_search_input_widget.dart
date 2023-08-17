import 'package:flutter/material.dart';

class MainSearchInputWidget extends StatefulWidget {
  const MainSearchInputWidget({super.key, required this.searchController});
  final TextEditingController searchController;
  @override
  State<MainSearchInputWidget> createState() => _MainSearchInputWidgetState();
}

class _MainSearchInputWidgetState extends State<MainSearchInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(244, 247, 254, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: widget.searchController,
              maxLines: 1,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Cari Barang"),
            ),
          ),
        ),
      ],
    );
  }
}