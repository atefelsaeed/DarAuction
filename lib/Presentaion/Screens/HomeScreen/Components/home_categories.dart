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
                  height: height(context) * .065,
                  child: state is CategoriesSuccess
                      ? ListView.separated(
                      itemCount: state
                          .categoriesModel.categoryList.length,
                      separatorBuilder: (context, index)=>SizedBox(width: 15,),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {},
                        child: Container(
                          padding:EdgeInsets.all(AppSize.padding2(context)),
                          decoration: BoxDecoration(
                            color: ColorManager.wight,
                            borderRadius:
                            BorderRadius.circular(
                                AppSize.borderRadius20(context)),
                          ),

                          child: Center(
                            child: Text(state
                                .categoriesModel
                                .categoryList[index],style: TextStyle(
                              color: ColorManager.blackColor,
                              fontSize: FontSize.textS14(context),
                            )),
                          ),
                        ),
                      ))
                      : const Center(
                      child:
                      CircularProgressIndicator()));
            }));
  }
}
