import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/transaction_model.dart';
import 'custom_text.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transaction,
  });

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 107.h,
          width: 341.w,
          padding: REdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 10.h,
          ),
          decoration: BoxDecoration(
            color: const Color(0xfffcfcfc),
            border: Border.all(color: const Color(0xffe8e8e8)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 21.h,
                    padding:
                        REdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
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
        Container(
          height: 15.h,
          width: 341.w,
          padding: REdgeInsets.symmetric(horizontal: 15.r),
          decoration: BoxDecoration(
            color: const Color(0xffe8e8e8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
          child: Row(
            children: [
              CustomText(
                text: 'Tue 12 Jan, 2021',
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff8B908B),
              ),
              const SizedBox(width: 1),
              Container(
                width: 2.w,
                height: 2.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Colors.red,
                ),
              ),
              const SizedBox(width: 1),
              CustomText(
                text: '10:00 AM',
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff8B908B),
              ),
              const Spacer(),
              CustomText(
                text: 'ID:',
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff979797),
              ),
              CustomText(
                text: transaction.transactionId,
                color: const Color(0xff47494E),
                fontSize: 8.sp,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
        ),
      ],
    );
  }
}
