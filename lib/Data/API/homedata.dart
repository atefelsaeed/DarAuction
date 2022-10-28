import 'dart:io';

import '../../Models/ServiceModels/catageories_model.dart';
import '../../Models/ServiceModels/products_model.dart';
import '../../Service/dio_helper.dart';

class HomePageData {
  static getCategoriesData() async {
    try {
      await DioHelper.init();
      var value = await DioHelper.getData(url: "products/categories");
 CategoriesModel categoriesModel = CategoriesModel.fromJson(value.data);
 print("esraa");
 print(categoriesModel.categoryList);
      return categoriesModel;
    } catch (ex) {
      rethrow;
    }
  }

  static getProductsData() async {
    try {
      await DioHelper.init();
      var value = await DioHelper.getData(url: "products");
      ProductModel productModel = ProductModel.fromJson(value.data);
      return productModel;
    } catch (ex) {
      rethrow;
    }
  }


  static getSearchData(String name) async {
    try {
      await DioHelper.init();
      var value = await DioHelper.getData(url: "search?q=${name.toString()}");
      ProductModel productModel = ProductModel.fromJson(value.data);
      return productModel;
    } catch (ex) {
      rethrow;
    }
  }

}
