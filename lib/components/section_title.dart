import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class SectiontTitle extends StatelessWidget {
  final String title;
  final VoidCallback onTab;

  const SectiontTitle({
    Key? key,
    required this.title,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        TextButton(
          onPressed: onTab,
          style: TextButton.styleFrom(
            foregroundColor: kActiveColor,
          ),
          child: Text('Подивитись всі'),
        ),
      ],
    );
  }
}
