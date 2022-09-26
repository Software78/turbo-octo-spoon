part of 'controller.dart';

class DirectDeliveryView
    extends StatelessView<DirectDeliveryScreen, DirectDeliveryController> {
  const DirectDeliveryView(DirectDeliveryController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              Container(
                padding: REdgeInsets.only(left: 16.r),
                color: const Color(0xff54565B),
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      height: 48.h,
                      minWidth: 48.h,
                      color: const Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.25.r),
                      ),
                      child: SvgPicture.asset(
                          "assets/illustrations/arrow-right.svg"),
                    ),
                    SizedBox(width: 16.w),
                    Align(
                      alignment: Alignment.center,
                      child: CustomText(
                        text: "OTC-363-22573378487015320",
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                child: SvgPicture.asset(
                  'assets/illustrations/container_bg.svg',
                  width: 375.w,
                ),
              ),
            ]),
            Expanded(
              child: ListView(children: [
                Container(
                  padding: REdgeInsets.fromLTRB(24.r, 24.r, 24.r, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: "*",
                            color: const Color(0xffE1261C),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                          CustomText(
                            text: " Log delivery details",
                            color: const Color(0xff54565B),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Form(
                        key: controller.formKey,
                        child: Column(
                          children: [
                            const CustomFormField(label: "Volume (MT)"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(label: "Driver's Name"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(
                                label: "Driver's Phone Number"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(label: "Truck's Number"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(label: "Container's Number"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(label: "Volume (MT)"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(label: "Bags)"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(label: "Bags)"),
                            SizedBox(
                              height: 32.h,
                            ),
                            const UploadWidget(
                              text: 'Click to upload the delivery note',
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            const UploadWidget(
                              text: 'Click to upload the waybill',
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            const CustomFormField(label: "Comments)"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: const Color(0xffF2F2F2),
          padding: REdgeInsets.symmetric(horizontal: 16.67.r, vertical: 12.r),
          child: MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(100), right: Radius.circular(100)),
            ),
            onPressed: () {},
            minWidth: 341.67.w,
            height: 56.h,
            color: const Color(0xffE1261C),
            child: CustomText(
              text: "Submit",
              color: const Color(0xffF2F2F2),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
