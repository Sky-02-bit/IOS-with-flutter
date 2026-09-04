import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'dart:convert';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widget/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/widget/home_widgets/catalog_list.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final int days = 2;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  // getting data from json file
  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 2));

    final catalogJson = await rootBundle.loadString(
      "assets/files/catalog.json",
    );

    final decodedData = jsonDecode(catalogJson);

    final productsData = decodedData["products"];

    CatalogModel.items = List.from(
      productsData,
    ).map((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, store, status) =>
            FloatingActionButton(
              onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
              backgroundColor: MyTheme.grayColor,
              child: Icon(CupertinoIcons.cart),
            ).badge(
              color: Vx.red500,
              size: 22,
              count: cart.items.length,
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
