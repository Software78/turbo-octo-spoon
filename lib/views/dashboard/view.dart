// ignore_for_file: constant_identifier_names, prefer_const_constructors

part of 'controller.dart';

class DashboardView
    extends StatelessView<DashboardScreen, DashboardController> {
  const DashboardView(DashboardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            children: [
              SizedBox(height: 17.h),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 343.w,
                        height: 89.h,
                        decoration: BoxDecoration(
                          color: Color(0xff54565B),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.r),
                            topLeft: Radius.circular(16.r),
                          ),
                        ),
                        padding: REdgeInsets.all(16.r),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () => controller.navigateToHistory(),
                              child: Container(
                                width: 45.w,
                                height: 45.w,
                                padding: REdgeInsets.all(2.r),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.r),
                                  child:
                                      Image.asset('assets/images/adamu.jpeg'),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Spacer(),
                                CustomText(
                                  text: 'welcome-back',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  text: 'Adamu Adamu 👋🏼',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                                Spacer()
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      controller.navigateToNotification(),
                                  child: SvgPicture.asset(
                                      'assets/icons/notification.svg'),
                                ),
                                Spacer(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 342.w,
                    height: 29.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE1261C),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r),
                      ),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        CustomText(
                          text: 'you-have',
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                        ),
                        CustomText(
                          text: ' 6 ',
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                        CustomText(
                          text: 'open-deliveries',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SearchFormField(
                    label: 'Search truck number, commodity...',
                    suffixIcon: Container(
                      padding: REdgeInsets.all(10.r),
                      child: SvgPicture.asset(
                        'assets/icons/search.svg',
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 24.h),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => controller.navigateToDelivery(),
                    child: TransactionItem(
                        transaction: controller.transaction[index]),
                  ),
                  itemCount: controller.transaction.length,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => CommodityCodes(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              topLeft: Radius.circular(20.r),
            ),
          ),
        ),
        backgroundColor: Color(0xffE1261C),
        child: SvgPicture.asset('assets/icons/info-circle.svg'),
      ),
    );
  }
}
