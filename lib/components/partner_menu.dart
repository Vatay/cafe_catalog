import 'package:flutter/material.dart';
import 'package:food_delivery/demo_data.dart';

class PartnerMenu extends StatelessWidget {
  final List<Map<String, dynamic>> dishs;
  const PartnerMenu({
    Key? key,
    required this.dishs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demoDish.length,
          (index) => TextButton(
            onPressed: () {},
            child: Text(
              '${dishs[index]['name']}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
