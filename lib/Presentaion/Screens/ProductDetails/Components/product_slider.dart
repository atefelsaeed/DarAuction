import 'package:dar_auction/Presentaion/Screens/ProductDetails/Cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../MainImports/main_imports.dart';
import '../../Onboarding/Data/onBoarding_data.dart';
import '../Cubit/cubit.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({Key? key}) : super(key: key);

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  // int selectedImage = 1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductStates>(
      builder: (context, state) {
        ProductCubit cubit=ProductCubit.get(context);
        return Column(
          children: [
            SizedBox(
              height: height(context) * .35,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: OnBoardingData.sliderController,
                onPageChanged: (int index) {
                  // setState(() {
                  //   selectedImage = index;
                  // });
                  cubit.changeBottomNavBar(index);
                },
                itemBuilder: (context, index) =>
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: width(context) * .8,
                          height: height(context) * .35,
                          // margin: ,
                          decoration: BoxDecoration(
                              color: ColorManager.wight,
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        Image.asset(
                          OnBoardingData.sliderImages[cubit.selectedImage],
                          width: width(context),
                        ),
                      ],
                    ),
                itemCount: OnBoardingData.sliderImages.length,
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
                count: OnBoardingData.sliderImages.length,
              ),
            ),
            AppSize.spaceHeight3(context),
            SizedBox(
              height: height(context) * .11,
              child: ListView.separated(
                itemCount: OnBoardingData.sliderImages.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // setState(() {
                      //   selectedImage = index;
                      // });
                      cubit.changeBottomNavBar(index);
                    },
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                          color: ColorManager.wight,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(OnBoardingData.sliderImages[index]),
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
