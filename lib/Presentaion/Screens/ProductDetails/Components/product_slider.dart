import 'package:dar_auction/Models/ServiceModels/products_model.dart';
import 'package:dar_auction/Presentaion/Screens/ProductDetails/Cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../MainImports/main_imports.dart';
import '../../Onboarding/Data/onBoarding_data.dart';
import '../Cubit/cubit.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({Key? key, required this.products}) : super(key: key);
  final Products products;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductStates>(
      builder: (context, state) {
        ProductCubit cubit = ProductCubit.get(context);
        return Column(
          children: [
            SizedBox(
              height: height(context) * .35,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: OnBoardingData.sliderController,
                onPageChanged: (int index) {
                  cubit.changeBottomNavBar(index);
                },
                itemBuilder: (context, index) => Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: width(context) * .8,
                      height: height(context) * .35,
                      decoration: BoxDecoration(
                          color: ColorManager.wight,
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    Image.network(
                      products.images[cubit.selectedImage],
                      width: width(context) * .7,
                    ),
                  ],
                ),
                itemCount: products.images.length,
              ),
            ),
            AppSize.spaceHeight5(context),
            Center(
              child: SmoothPageIndicator(
                controller: OnBoardingData.sliderController,
                effect: ExpandingDotsEffect(
                  activeDotColor: ColorManager.primaryColor,
                  dotColor: ColorManager.wight70,
                  dotHeight: 10,
                  expansionFactor: 4,
                  dotWidth: 10,
                  spacing: 5,
                ),
                count: products.images.length,
              ),
            ),
            AppSize.spaceHeight3(context),
            SizedBox(
              height: height(context) * .11,
              child: ListView.separated(
                itemCount: products.images.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      cubit.changeBottomNavBar(index);
                    },
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                          color: ColorManager.wight,
                          borderRadius: BorderRadius.circular(15)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          products.images[index],
                          width: 70,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    AppSize.spaceWidth3(context),
              ),
            )
          ],
        );
      },
    );
  }
}
