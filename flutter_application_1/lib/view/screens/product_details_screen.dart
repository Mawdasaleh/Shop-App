import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/model/product_model.dart';
// import 'package:flutter_application_1/view/widgets/productDetails/add_cart.dart';
// import 'package:udemy_shop_app/view/widgets/productDetails/size_list.dart';

import '../widgets/ProductDetails/Add_Cart.dart';
import '../widgets/ProductDetails/Size_ist.dart';
import '../widgets/ProductDetails/clothes_Info.dart';
import '../widgets/ProductDetails/image_sliders.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product productModels;
  const ProductDetailsScreen({required this.productModels, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSliders(
                imageUrl: productModels.image!,
              ),
              ClothesInfo(
                title: productModels.title!,
                productId: productModels.id!,
                rate: productModels.rating!.rate!,
                description: productModels.description!,
              ),
              const SizeList(),
              AddCart(
                price: productModels.price!,
                productModels: productModels,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
