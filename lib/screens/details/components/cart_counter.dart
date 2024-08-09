import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/product.dart';
import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  final Product product;
  const CartCounter({Key? key, required this.product}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPaddin,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
            child: Container(
              margin: EdgeInsets.only(
                right: kDefaultPaddin / 1.5,
              ),
              height: 32,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: widget.product.color,
                ),
              ),
              child: Icon(
                Icons.remove,
                color: widget.product.color,
              ),
            ),
          ),
          // SizedBox(
          //   width: kDefaultPaddin / 2,
          // ),
          Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
          // SizedBox(
          //   width: kDefaultPaddin / 2,
          // ),
          InkWell(
            onTap: () {
              setState(() {
                numOfItems++;
              });
            },
            child: Container(
              margin: EdgeInsets.only(
                left: kDefaultPaddin / 1.5,
              ),
              height: 32,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: widget.product.color,
                ),
              ),
              child: Icon(
                Icons.add,
                color: widget.product.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
