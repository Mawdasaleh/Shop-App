import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../model/product_model.dart';
import '../../services/product_services.dart';

class ProductController extends GetxController {
  var proList = <Product>[].obs;
  var favouritesList = <Product>[].obs;
  var isLoading = true.obs;
  var storage = GetStorage();

  var searchList = <Product>[].obs;
  TextEditingController searchTextController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    List? Storedfavourites = storage.read<List>("isFavouritesList");
    if (Storedfavourites != null) {
      favouritesList =
          Storedfavourites.map((e) => Product.fromJson(e)).toList().obs;
    }

    fetchproduct();
  }

  Future<void> fetchproduct() async {
    var product = await ProductApi.getProduct();
    try {
      isLoading.value = true;
      if (product.isNotEmpty) {
        proList.addAll(product);
      }
    } finally {
      isLoading.value = false;
    }
  }

//Logic for favourites screen
  void managefavourites(int proid) async {
    var index = favouritesList.indexWhere((element) => element.id == proid);
    if (index >= 0) {
      favouritesList.removeAt(index);
      await storage.remove("isFavouritesList");
    } else {
      favouritesList.add(proList.firstWhere((element) => element.id == proid));
      await storage.write("isFavouritesList", favouritesList);
    }
  }

  bool isFavourites(int proid) {
    return favouritesList.any((element) => element.id == proid);
  }

  void addSearchToList(String searchName) {
    searchName = searchName.toLowerCase();

    searchList.value = proList.where((search) {
      var searchTitle = search.title!.toLowerCase();
      var searchPrice = search.price.toString().toLowerCase();

      return searchTitle.contains(searchName) ||
          searchPrice.toString().contains(searchName);
    }).toList();

    update();
  }

  void clearSearch() {
    searchTextController.clear();
    addSearchToList("");
  }
}
