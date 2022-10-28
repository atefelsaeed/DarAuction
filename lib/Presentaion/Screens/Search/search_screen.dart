import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../MainImports/main_imports.dart';
import '../HomeScreen/cubit/cubit.dart';
import '../HomeScreen/cubit/states.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenCubit()..getSearchCubit("phone"),
      child: Scaffold(
        backgroundColor: ColorManager.wight,
        body: BlocBuilder<HomeScreenCubit, HomeScreenStates>(
            builder: (context, state) {
          //ServicesScreenCubit cubit = ServicesScreenCubit.get(context);
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppSize.padding(context)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: ColorManager.primaryColor,
                          size: width(context) * .05,
                        ),
                        Text('My appointments',
                            style: TextStyle(
                              color: ColorManager.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: FontSize.textS16(context),
                            )),
                        const SizedBox(
                          height: 0,
                        )
                      ],
                    ),
                    AppSize.spaceHeight3(context),
                    state is SearchSuccess
                        ? ListView.builder(
                            itemCount: state.productModel.products.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(AppSize.padding2(context)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.wight,
                                      borderRadius: BorderRadius.circular(
                                          AppSize.borderRadius10(context)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          AppSize.padding2(context)),
                                      child: Row(
                                        children: [
                                          Image.network(state.productModel
                                              .products[index].thumbnail),
                                          AppSize.spaceWidth2(context),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                  state.productModel
                                                      .products[index].title,
                                                  style: TextStyle(
                                                    color:
                                                        ColorManager.blackColor,
                                                    fontSize: FontSize.textS18(
                                                        context),
                                                  )),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.event,
                                                    color: Colors.blue,
                                                    size: width(context) * .03,
                                                  ),
                                                  AppSize.spaceWidth1(context),
                                                  Text(
                                                      state.productModel
                                                          .products[index].price
                                                          .toString(),
                                                      style: TextStyle(
                                                        color: ColorManager
                                                            .grayColor,
                                                        fontSize:
                                                            FontSize.textS12(
                                                                context),
                                                      ))
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )))
                        : const SizedBox(
                            height: 0,
                          ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
