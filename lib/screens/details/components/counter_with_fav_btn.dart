import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  final Product product;
  const CounterWithFavBtn({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(
          product: product,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: kDefaultPaddin,
          ),
          padding: EdgeInsets.all(7),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.redAccent,
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}
