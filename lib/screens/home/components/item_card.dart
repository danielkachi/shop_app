import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final dynamic data;
  final Function() press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
    required this.data,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: kDefaultPaddin / 6,
                vertical: kDefaultPaddin / 5,
              ),
              padding: EdgeInsets.all(
                kDefaultPaddin,
              ),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: Hero(
                tag: '${product.id}',
                // tag: int.parse(data['id']),

                child: Image.asset(
                  product.image,
                ),
              ),
            ),
          ),
          Text(
            product.title,
            style: TextStyle(
              color: kTextLightColor,
            ),
          ),
          SizedBox(
            height: kDefaultPaddin / 4,
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
