import 'package:dar_auction/Data/API/homedata.dart';
import 'package:dar_auction/Models/ServiceModels/products_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Models/ServiceModels/catageories_model.dart';
import 'states.dart';

class HomeScreenCubit extends Cubit<HomeScreenStates> {
  HomeScreenCubit() : super(HomeScreenInitialState());

  getCategoriesCubit() async {
    try {
      CategoriesModel categoriesModel  = await HomePageData.getCategoriesData();
      emit(CategoriesSuccess(categoriesModel: categoriesModel));
    }catch(ex){
      emit(CategoriesError());
      rethrow;
    }
  }


  getProductCubit() async {
    try {
 ProductModel productModel = await HomePageData.getProductsData();
      emit(ProductSuccess(productModel: productModel));
    }catch(ex){
      emit(ProductError());
      rethrow;
    }
  }
  getSearchCubit(name) async {
    try {
      ProductModel productModel = await HomePageData.getSearchData(name);
      emit(SearchSuccess(productModel: productModel));
    }catch(ex){
      emit(SearchError());
      rethrow;
    }
  }

}
