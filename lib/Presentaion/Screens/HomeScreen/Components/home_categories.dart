import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../MainImports/main_imports.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<HomeScreenCubit>(
        create: (context) =>
        HomeScreenCubit()..getCategoriesCubit(),
        child: BlocConsumer<HomeScreenCubit, HomeScreenStates>(
            listener: (context, state) =>
            State is CategoriesSuccess,
            builder: (context, state) {
              return SizedBox(
                  height: height(context) * .08,
                  child: state is CategoriesSuccess
                      ? ListView.builder(
                      itemCount: state
                          .categoriesModel.categoryList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(
                              AppSize.padding2(context)),
                          child: Container(
                            padding:
                            const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: ColorManager.wight,
                              borderRadius:
                              BorderRadius.circular(20),
                            ),
                            child: Text(state
                                .categoriesModel
                                .categoryList[index]),
                          ),
                        ),
                      ))
                      : Center(
                      child:
                      const CircularProgressIndicator()));
            }));
  }
}
