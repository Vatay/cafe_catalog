import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class PartnerTitle extends StatelessWidget {
  final Map<String, dynamic> card;
  const PartnerTitle({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 14, color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                card['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            card['name'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 4),
          Text(
            card['location'],
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Text(
                '${card['rating']}',
              ),
              SizedBox(width: 4),
              Icon(
                Icons.star,
                color: kActiveColor,
                size: 15,
              ),
              SizedBox(width: defaultPadding / 2),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 2,
              ),
              SizedBox(width: defaultPadding / 2),
              Icon(
                Icons.access_time_rounded,
                color: Colors.black,
                size: 15,
              ),
              SizedBox(width: 4),
              Text('${card['delivertTime']} хв'),
              SizedBox(width: defaultPadding / 2),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 2,
              ),
              SizedBox(width: defaultPadding / 2),
              Icon(
                Icons.monetization_on_outlined,
                color: Colors.black,
                size: 15,
              ),
              SizedBox(width: 4),
              Text('0 грн'),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
