import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPaddin,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(
              kDefaultPaddin / 2,
            ),
            margin: EdgeInsets.only(
              right: kDefaultPaddin / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: product.color,
              ),
              borderRadius: BorderRadius.circular(13),
            ),
            child: SvgPicture.asset(
              'assets/icons/add_to_cart.svg',
              color: product.color,
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.all(
                  kDefaultPaddin / 2,
                ),
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: Text(
                    'BUY NOW',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
