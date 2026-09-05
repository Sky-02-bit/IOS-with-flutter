import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widget/home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    super.key, required this.catalog,
    });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.creameColor,
        ), // back button
      backgroundColor: MyTheme.creameColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: OverflowBar(
          alignment: MainAxisAlignment.spaceBetween,
          // buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.make(),
            AddToCart(catalog: catalog
            ,).wh(120, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(
                catalog.image,
                color: MyTheme.creameColor,
                colorBlendMode: BlendMode.multiply,
              ),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold.make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      // Dummy text
                      "Me other ways childe to oh gathered cared fondly left them, harold none bower in one yet thee loathed olden though, there aye sister ah smile. Of parasites kiss his in cared oft mood might. Childe aisle and all bidding did. That nor sullen pride that high none superstition he."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p16()
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
