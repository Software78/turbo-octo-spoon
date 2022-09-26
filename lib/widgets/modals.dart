import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/transaction_model.dart';
import 'custom_text.dart';

class CommodityCodes extends StatelessWidget {
  const CommodityCodes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 215.h,
          padding: REdgeInsets.all(16.r),
          width: double.infinity,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Commodity Codes',
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff54565B),
              ),
              SizedBox(height: 13.h),
              const Divider(),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'maz',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'ssc',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'sg',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    color: const Color(0xffC81107),
                  ),
                  SizedBox(width: 13.11.w),
                  CustomText(
                    text: 'sb',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff8B908B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 231.h,
          right: 10.w,
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/icons/close.svg'),
          ),
        ),
      ],
    );
  }
}

class ConfirmDeliveryModal extends StatelessWidget {
  const ConfirmDeliveryModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.h,
      padding: REdgeInsets.symmetric(horizontal: 20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 8.h),
          Container(
            width: 56.w,
            height: 4.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.r),
              color: const Color(
                0xff47494E,
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Image.asset(
            'assets/images/combox-scale.png',
            width: 114.w,
            height: 114.w,
          ),
          SizedBox(height: 14.h),
          CustomText(
            text: 'Submit?',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 9.h),
          CustomText(
            text: 'accept-delivery',
            textAlign: TextAlign.center,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: 44.h),
          Row(
            children: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                minWidth: 154.w,
                height: 56.h,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xffE1261C),
                  ),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: CustomText(
                  text: 'cancel',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffE1261C),
                ),
              ),
              SizedBox(width: 13.w),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        topLeft: Radius.circular(20.r),
                      ),
                    ),
                    builder: (context) => const DeliveryConfirmedModal(),
                  );
                },
                minWidth: 154.w,
                height: 56.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.r),
                ),
                color: const Color(0xffE1261C),
                child: CustomText(
                  text: 'proceed',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DeliveryConfirmedModal extends StatelessWidget {
  const DeliveryConfirmedModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 8.h),
          Container(
            width: 56.w,
            height: 4.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.r),
              color: const Color(
                0xff47494E,
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Image.asset(
            'assets/images/memoji.png',
            width: 114.w,
            height: 114.w,
          ),
          SizedBox(height: 14.h),
          CustomText(
            text: 'delivery-logged',
            textAlign: TextAlign.center,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 80.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                minWidth: 315.w,
                height: 56.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.r),
                ),
                color: const Color(0xffE1261C),
                child: CustomText(
                  text: 'proceed',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HistoryModal extends StatelessWidget {
  const HistoryModal({super.key, required this.transaction});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 305.h,
          padding: REdgeInsets.all(16.r),
          width: double.infinity,
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: transaction.transactionId,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff47494e),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Tue 12 Jan, 2021',
                        fontSize: 9.2.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff8b908b),
                      ),
                      SizedBox(
                        width: 2.63.w,
                      ),
                      Container(
                        width: 2.63.w,
                        height: 2.63.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffe1261c),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(
                        width: 2.63.w,
                      ),
                      CustomText(
                        text: '10:00AM',
                        fontSize: 9.2.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff8b908b),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 13.h),
              const Divider(),
              SizedBox(height: 13.h),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 21.h,
                          padding: REdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: const Color(0xfff2f2f2),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: CustomText(
                            text:
                                '${transaction.amount} MT of ${transaction.product.name}',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: transaction.isAfexDelivery
                                ? const Color(0xffE1261C)
                                : const Color(0xff0089C8),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        CustomText(
                          text: transaction.truckNumber,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff54565B),
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/seller.svg'),
                            SizedBox(width: 4.w),
                            CustomText(
                              text: transaction.buyer,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff7C827D),
                            ),
                            SizedBox(width: 7.w),
                            SvgPicture.asset(
                              'assets/icons/arrow_forward.svg',
                              color: transaction.isAfexDelivery
                                  ? const Color(0xffE1261C)
                                  : null,
                            ),
                            SizedBox(width: 7.w),
                            SvgPicture.asset('assets/icons/seller.svg'),
                            SizedBox(width: 7.w),
                            CustomText(
                              text: transaction.seller,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff7C827D),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                          text: transaction.isAfexDelivery
                              ? 'afex-delivery'
                              : 'direct-delivery',
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w700,
                          color: transaction.isAfexDelivery
                              ? const Color(0xffE1261C)
                              : const Color(0xff0089C8),
                        ),
                        SizedBox(height: 16.23.h),
                        SvgPicture.asset(
                          transaction.isAfexDelivery
                              ? 'assets/icons/afex_delivery.svg'
                              : 'assets/icons/direct_delivery.svg',
                          width: 67.w,
                          height: 45.h,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 13.h,
                      ),
                      SvgPicture.asset(
                        "assets/images/route.svg",
                        fit: BoxFit.none,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                fontWeight: FontWeight.w400,
                                text: "logistic-company",
                                fontSize: 12.sp,
                                color: const Color(0xffb4b4b0),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              CustomText(
                                fontWeight: FontWeight.w600,
                                text: "ABC Transport Ltd",
                                fontSize: 14.sp,
                                color: const Color(0xff54565b),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 125.w,
                          ),

                          SvgPicture.asset("assets/images/fulfils.svg")
                          // const Spacer(),
                          // Container()
                        ],
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            fontWeight: FontWeight.w400,
                            text: 'No. of bags',
                            fontSize: 12.sp,
                            color: const Color(0xffb4b4b0),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          CustomText(
                            fontWeight: FontWeight.w400,
                            text: 'driver',
                            fontSize: 12.sp,
                            color: const Color(0xffb4b4b0),
                          ),
                          SizedBox(
                            width: 70.w,
                          ),
                          CustomText(
                            fontWeight: FontWeight.w400,
                            text: "driver-no",
                            fontSize: 12.sp,
                            color: const Color(0xffb4b4b0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          CustomText(
                            fontWeight: FontWeight.w600,
                            text: '300',
                            fontSize: 12.sp,
                            color: const Color(0xff54565b),
                          ),
                          SizedBox(
                            width: 65.w,
                          ),
                          CustomText(
                            fontWeight: FontWeight.w600,
                            text: 'Aminu Amusat',
                            fontSize: 12.sp,
                            color: const Color(0xff54565b),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          CustomText(
                            fontWeight: FontWeight.w600,
                            text: "07034524534",
                            fontSize: 12.sp,
                            color: const Color(0xff54565b),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 325.h,
          right: 10.w,
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/icons/close.svg'),
          ),
        ),
      ],
    );
  }
}
