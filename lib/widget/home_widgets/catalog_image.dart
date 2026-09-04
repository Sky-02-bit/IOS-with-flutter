import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      errorBuilder: (context, error, stackTrace) {
        debugPrint("Image loading failed: $image");
        debugPrint("Error: $error");

        return const Icon(Icons.broken_image_outlined, size: 60);
      },

      // Optional loading indicator.
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          // Image finished loading.
          return child;
        }

        return const Center(child: CircularProgressIndicator());
      },
    ).box.rounded.p8.white.make().p12().w32(context);
  }
}
