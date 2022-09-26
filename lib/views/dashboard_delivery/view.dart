part of 'controller.dart';

class DashboardDeliveryView extends StatelessView<DashboardDeliveryScreen,
    DashboardDeliveryController> {
  const DashboardDeliveryView(DashboardDeliveryController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 79.h,
          width: 375.w,
          color: const Color(0xffF2F2F2),
          padding: REdgeInsets.symmetric(horizontal: 17.r, vertical: 10.r),
          child: MaterialButton(
            onPressed: () => controller.submit(),
            color: const Color(0xffE1261C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.r),
            ),
            minWidth: 341.w,
            height: 50.h,
            child: CustomText(
              text: 'Submit',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: const Color(0xfff2f2f2),
            ),
          ),
        ),
      ),
      body: Form(
        key: controller.formKey,
        child: Stack(
          children: [
            Positioned(
              top: 43.h,
              child: Container(
                width: 375.w,
                height: 101.h,
                color: const Color(0xff47494E),
                child: SvgPicture.asset(
                  'assets/illustrations/container_bg.svg',
                  fit: BoxFit.cover,
                  width: 375.w,
                  height: 118.h,
                ),
              ),
            ),
            Positioned(
              top: 72.h,
              left: 15.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => controller.returnToPreviousScreen(),
                    child: Container(
                      width: 48.w,
                      height: 48.w,
                      padding: REdgeInsets.all(13.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.25.r),
                        color: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/arrow_right.svg',
                        width: 21.w,
                        height: 21.w,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  CustomText(
                    text: 'delivery-history',
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 277.h,
              left: 24.w,
              right: 24.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: '* ',
                        color: Colors.red,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      CustomText(
                        text: 'take-log',
                        color: const Color(0xff54565B),
                        fontSize: 14.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    label: 'Volume(MT)',
                    controller: controller.volumeController,
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    label: 'Bags',
                    controller: controller.bagController,
                  ),
                  SizedBox(height: 16.h),
                  const UploadWidget(
                    text: 'upload-delivery',
                  ),
                  SizedBox(height: 16.h),
                  const UploadWidget(
                    text: 'upload-waybill',
                  ),
                  SizedBox(height: 16.h),
                  CustomFormField(
                    label: 'Comments',
                    controller: controller.commentController,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      CustomText(
                        text: 'transload',
                        color: const Color(0xff54565B),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                      CustomText(
                        text: 'log-details',
                        color: const Color(0xffE1261C),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        textDecoration: TextDecoration.underline,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 144.h,
              child: Container(
                padding: REdgeInsets.fromLTRB(26.r, 24.r, 26.r, 0),
                height: controller.sizeAnimation.value,
                width: 375.w,
                color: const Color(0xffEBEBEB),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'logistic-company',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                        CustomText(
                          text: 'ABC Transport Limited',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'driver-name',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                        CustomText(
                          text: 'Aminu Musa',
                          color: const Color(0xff47494E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ],
                    ),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      SizedBox(height: 14.h),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'weight',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                          CustomText(
                            text: '33 MT/Bag',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      SizedBox(height: 14.h),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'driver-no',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                          CustomText(
                            text: '07012345678',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      SizedBox(height: 14.h),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'truck-no',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                          CustomText(
                            text: 'CGE - 123XYZ',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      SizedBox(height: 14.h),
                    if (!controller.animationController.isAnimating &&
                        controller.animationController.value != 0.0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'container-no',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                          CustomText(
                            text: '12300344',
                            color: const Color(0xff47494E),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    SizedBox(height: 18.h),
                    GestureDetector(
                      onTap: () => controller.playContainerAnimation(),
                      child: Container(
                        height: 20.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffE1261C),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Center(
                          child: CustomText(
                            text: controller.animationController.value == 0
                                ? 'more'
                                : 'less',
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UploadWidget extends StatelessWidget {
  const UploadWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DottedBorder(
          strokeWidth: 1,
          dashPattern: const [3, 3],
          radius: Radius.circular(8.r),
          borderType: BorderType.RRect,
          color: const Color(0xff47494E),
          child: Container(
            width: 259.w,
            height: 49.h,
            padding: REdgeInsets.symmetric(
              horizontal: 16.r,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: const Color(0xffF2F2F2),
            ),
            child: Row(
              children: [
                Container(
                  width: 28.w,
                  height: 28.w,
                  padding: REdgeInsets.all(6.4.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(68.r),
                    color: const Color(0xffffffff),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/document-upload.svg',
                  ),
                ),
                SizedBox(width: 16.w),
                CustomText(
                  text: text,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
          ),
        ),
        const Spacer(),
        const CircularProgressIndicator(
          backgroundColor: Color(0xffd9d9d9),
          value: 0.1,
          color: Color(0xff38CB89),
        )
      ],
    );
  }
}
