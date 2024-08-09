import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/body.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context, product),
      body: Body(
        product: product,
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context, Product product) {
  return AppBar(
    backgroundColor: product.color,
    elevation: 0,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      // onPressed: () => Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => Body(
      //               product: product,
      //             ))),
      icon: SvgPicture.asset(
        'assets/icons/back.svg',
        color: Colors.white,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: kDefaultPaddin / 2,
      ),
    ],
  );
}
