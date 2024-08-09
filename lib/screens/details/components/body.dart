import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';
import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class Body extends StatefulWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.3,
                ),
                // there is no need for 'height' when the container is wrapped in an Expanded widget
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      kDefaultPaddin,
                    ),
                    topRight: Radius.circular(
                      kDefaultPaddin,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: widget.product),
                    SizedBox(
                      height: kDefaultPaddin * 1.5,
                    ),
                    Description(product: widget.product),
                    SizedBox(
                      height: kDefaultPaddin * 2,
                    ),
                    CounterWithFavBtn(
                      product: widget.product,
                    ),
                    SizedBox(
                      height: kDefaultPaddin * 2,
                    ),
                    AddToCart(
                      product: widget.product,
                    ),
                  ],
                ),
              ),
            ),
            ProductTitleWithImage(
              product: widget.product,
            ),
          ],
        ),
      ),
    );
  }
}
