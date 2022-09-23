import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class DishCard extends StatelessWidget {
  final Map<String, dynamic> card;
  const DishCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  card['image'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: defaultPadding),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${card['name']}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 6),
                Text(
                  '${card['descr']}',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Вага: ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: ' ${card['weight']}',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Ціна: ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: ' ${card['price']}',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: kActiveColor,
                              ),
                            ),
                            TextSpan(
                              text: ' грн',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
