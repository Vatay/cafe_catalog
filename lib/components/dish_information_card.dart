import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class DishInformationCard extends StatelessWidget {
  final VoidCallback onTab;
  final Map<String, dynamic> card;
  const DishInformationCard({
    Key? key,
    required this.onTab,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: onTab,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(
                card['image'],
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 8),
            Text(
              card['name'],
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 6),
            Text(
              card['location'],
              style: TextStyle(
                color: kBodyTextColor,
              ),
            ),
            SizedBox(height: 10),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: kActiveColor,
                    ),
                    child: Text(
                      '${card['rating']}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Text(
                    '${card['delivertTime']} min',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: kBodyTextColor,
                  ),
                  Text('Доставка 0грн'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
