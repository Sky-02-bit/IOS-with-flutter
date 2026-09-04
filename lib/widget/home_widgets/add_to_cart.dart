import 'package:flutter/material.dart';

import 'package:flutter_catalog/core/store.dart';

import 'package:flutter_catalog/models/cart.dart';

import 'package:flutter_catalog/models/catalog.dart';

import 'package:flutter_catalog/widget/themes.dart';

import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   const AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    return VxConsumer<MyStore>(
      builder: (context, store, child) {
        final CartModel cart = store.cart;
        bool isInCart = cart.items.contains(catalog);

        return ElevatedButton(
          onPressed: () {
            if (!isInCart) {
              AddMutation(catalog);
            }
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(MyTheme.grayColor),
            shape: WidgetStateProperty.all(StadiumBorder()),
          ),
          child: isInCart
              ? Icon(Icons.cloud_done_outlined)
              : Icon(Icons.shopping_cart_outlined),
        );
      },
      mutations: {AddMutation,RemoveMutation},
    );
  }
}
