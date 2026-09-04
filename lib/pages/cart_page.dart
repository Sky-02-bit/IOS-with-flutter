import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "My Cart".text.bold.make(),
      ),
      body: Column(
        children: [_CartList().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         VxConsumer(
          notifications: {},
          mutations: {RemoveMutation},
          builder: (context, store, status){
            return "\$${cart.totalPrice}".text.xl5.make();
          },
         ),
          30.widthBox,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(MyTheme.grayColor),
              shape: WidgetStateProperty.all(StadiumBorder()),
            ),
            onPressed: () {
              // Throw message if not able to buy
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: "Buying not supported yet.".text.make()),
              );
            },
            child: "Buy".text.xl.white.make(),
          ).wh(120, 50),
        ],
      ),
    );
  }
}

// Cart list

class _CartList extends StatelessWidget {
   const _CartList();
  @override
  Widget build(BuildContext context) {
    return VxConsumer<MyStore>(
      mutations: {RemoveMutation},
      builder: (context, store, child) {
        final CartModel cart = (VxState.store as MyStore).cart;
        return cart.items.isEmpty
            ? "Nothing to show".text.xl3.makeCentered()
            : ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.cloud_done_outlined, size: 28),
                  trailing: IconButton(
                    icon: Icon(Icons.delete_forever, size: 32),
                    onPressed: () => RemoveMutation(cart.items[index]),
                  ),
                  title: cart.items[index].name.text.xl2.make(),
                ),
              );
      },
    );
  }
}
