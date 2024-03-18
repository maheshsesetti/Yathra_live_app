import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:yantralive/constant/JsonData.dart';
import 'package:yantralive/data/model/company_model.dart';
import 'package:yantralive/presentation/widget/CustomDropDownWidget.dart';

import '../../constant/App_Color.dart';
import '../../constant/TextSyle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String formatter = DateFormat('yMMMMd').format(DateTime.now());
  Company? company;
  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() {
    company = Company.fromJson(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_open_rounded,
              color: AppColor.mainAppColor,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_rounded,
                  color: AppColor.mainAppColor,
                ))
          ],
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title, style: TextStyles.fontW700(18)),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 0.03.sh, horizontal: 0.03.sw),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formatter,
                style: TextStyles.fontW700(14),
              ),
              Text(
                'Hi Mahesh Babu',
                style: TextStyles.fontW700(18),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 2,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10.h,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  AppColor.topLeftGradientColor,
                                  AppColor.bottomRightGradientColor
                                ]),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${company?.company?[index].name}",
                                            style: TextStyles.fontW700(20),
                                          ),
                                          Text(
                                            "${company?.company?[index].identity}",
                                            style: TextStyles.fontW700(18),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            child: Image.network(
                                                "${company?.company?[index].img}",
                                                fit: BoxFit.cover),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white60,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.r)),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      10.r)),
                                                      child: Image.asset(
                                                          "assets/images/image 241.png")),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Text(
                                                          "HMR",
                                                          style: TextStyles
                                                              .fontW700(20),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: ClipRect(
                                                                  child:
                                                                      BackdropFilter(
                                                                    filter: ImageFilter.blur(
                                                                        sigmaX:
                                                                            1.0,
                                                                        sigmaY:
                                                                            1.0),
                                                                    child:
                                                                        Container(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 15
                                                                              .w,
                                                                          vertical:
                                                                              15.h),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white54
                                                                            .withOpacity(0.5),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.r),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Last Filled HMR",
                                                                            style:
                                                                                TextStyles.fontW700(14),
                                                                          ),
                                                                          const Divider(
                                                                            color:
                                                                                Colors.amberAccent,
                                                                          ),
                                                                          Text(
                                                                            "07 Sept 23",
                                                                            style:
                                                                                TextStyles.fontWGray700(12),
                                                                          ),
                                                                          Text(
                                                                            "12,345",
                                                                            style:
                                                                                TextStyles.fontW700(18),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 10.h,
                                                              ),
                                                              Expanded(
                                                                child: ClipRect(
                                                                  child:
                                                                      BackdropFilter(
                                                                    filter: ImageFilter.blur(
                                                                        sigmaX:
                                                                            1.0,
                                                                        sigmaY:
                                                                            1.0),
                                                                    child:
                                                                        Container(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 25
                                                                              .w,
                                                                          vertical:
                                                                              15.h),
                                                                      decoration: BoxDecoration(
                                                                          color: Colors.white54.withOpacity(
                                                                              0.5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.r)),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Today's HMR",
                                                                            style:
                                                                                TextStyles.fontW700(14),
                                                                          ),
                                                                          const Divider(
                                                                            color:
                                                                                Colors.amberAccent,
                                                                          ),
                                                                          Text(
                                                                            "08 Sept 23",
                                                                            style:
                                                                                TextStyles.fontWGray700(12),
                                                                          ),
                                                                          GestureDetector(
                                                                            onTap:
                                                                                () {},
                                                                            child:
                                                                                const Icon(
                                                                              Icons.add_circle,
                                                                              color: Colors.amberAccent,
                                                                              size: 30,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Center(
                                                          child: OutlinedButton(
                                                              style: ButtonStyle(
                                                                  side: MaterialStateProperty.all(
                                                                      const BorderSide(
                                                                          color:
                                                                              AppColor.mainAppColor))),
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                    "View HMR Log",
                                                                    style: TextStyles
                                                                        .fontW700(
                                                                            14),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  const Icon(Icons
                                                                      .arrow_forward_ios),
                                                                ],
                                                              )),
                                                        ),
                                                        ElevatedButton(
                                                            style: ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all(Colors.amberAccent),

                                                            ),
                                                            onPressed: (){}, child: Text("Add expenses",style: TextStyles.fontW700(16),))
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white60,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.r)),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      10.r)),
                                                      child: Image.asset(
                                                          "assets/images/image 238.png")),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Text(
                                                          "Service",
                                                          style: TextStyles
                                                              .fontW700(20),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: ClipRect(
                                                                  child:
                                                                      BackdropFilter(
                                                                    filter: ImageFilter.blur(
                                                                        sigmaX:
                                                                            1.0,
                                                                        sigmaY:
                                                                            1.0),
                                                                    child:
                                                                        Container(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 25
                                                                              .w,
                                                                          vertical:
                                                                              15.h),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white54
                                                                            .withOpacity(0.5),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.r),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Due Soon",
                                                                            style:
                                                                                TextStyles.fontW700(14),
                                                                          ),
                                                                          const Divider(
                                                                            color:
                                                                                Colors.amberAccent,
                                                                          ),
                                                                          Text(
                                                                            "03",
                                                                            style:
                                                                                TextStyles.fontWYellow700(28),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 10.h,
                                                              ),
                                                              Expanded(
                                                                child: ClipRect(
                                                                  child:
                                                                      BackdropFilter(
                                                                    filter: ImageFilter.blur(
                                                                        sigmaX:
                                                                            1.0,
                                                                        sigmaY:
                                                                            1.0),
                                                                    child:
                                                                        Container(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 25
                                                                              .w,
                                                                          vertical:
                                                                              15.h),
                                                                      decoration: BoxDecoration(
                                                                          color: Colors.white54.withOpacity(
                                                                              0.5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.r)),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "OverDue",
                                                                            style:
                                                                                TextStyles.fontW700(14),
                                                                          ),
                                                                          const Divider(
                                                                            color:
                                                                                Colors.amberAccent,
                                                                          ),
                                                                          Text(
                                                                            "03",
                                                                            style:
                                                                                TextStyles.fontWRed700(28),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Center(
                                                          child: OutlinedButton(
                                                              style: ButtonStyle(
                                                                  side: MaterialStateProperty.all(
                                                                      const BorderSide(
                                                                          color:
                                                                              AppColor.mainAppColor))),
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                    "View Service Log",
                                                                    style: TextStyles
                                                                        .fontW700(
                                                                            14),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  const Icon(Icons
                                                                      .arrow_forward_ios),
                                                                ],
                                                              )),
                                                        ),
                                                        ElevatedButton(
                                                            style: ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all(Colors.amberAccent),

                                                            ),
                                                            onPressed: (){}, child: Text("Add expenses",style: TextStyles.fontW700(16),))
                                                      ],
                                                    ),

                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white60,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.r)),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(
                                                                      10.r)),
                                                      child: Image.asset(
                                                          "assets/images/tool-front-color.png")),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                      children: [
                                                        Text(
                                                          "Fuel",
                                                          style: TextStyles
                                                              .fontW700(20),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: ClipRect(
                                                                  child:
                                                                      BackdropFilter(
                                                                    filter: ImageFilter.blur(
                                                                        sigmaX:
                                                                            1.0,
                                                                        sigmaY:
                                                                            1.0),
                                                                    child:
                                                                        Container(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 15
                                                                              .w,
                                                                          vertical:
                                                                              15.h),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white54
                                                                            .withOpacity(0.5),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.r),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Last Refuelled ",
                                                                            style:
                                                                                TextStyles.fontW700(14),
                                                                          ),
                                                                          const Divider(
                                                                            color:
                                                                                Colors.amberAccent,
                                                                          ),
                                                                          Text(
                                                                            "07 Sept 23",
                                                                            style:
                                                                                TextStyles.fontWGray700(12),
                                                                          ),
                                                                          Text(
                                                                            "12,345",
                                                                            style:
                                                                                TextStyles.fontW700(18),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 10.h,
                                                              ),
                                                              Expanded(
                                                                child: ClipRect(
                                                                  child:
                                                                      BackdropFilter(
                                                                    filter: ImageFilter.blur(
                                                                        sigmaX:
                                                                            1.0,
                                                                        sigmaY:
                                                                            1.0),
                                                                    child:
                                                                        Container(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal: 25
                                                                              .w,
                                                                          vertical:
                                                                              15.h),
                                                                      decoration: BoxDecoration(
                                                                          color: Colors.white54.withOpacity(
                                                                              0.5),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.r)),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            "Today's Fuel",
                                                                            style:
                                                                                TextStyles.fontW700(14),
                                                                          ),
                                                                          const Divider(
                                                                            color:
                                                                                Colors.amberAccent,
                                                                          ),
                                                                          Text(
                                                                            "08 Sept 23",
                                                                            style:
                                                                                TextStyles.fontWGray700(12),
                                                                          ),
                                                                          GestureDetector(
                                                                            onTap:
                                                                                () {},
                                                                            child:
                                                                                const Icon(
                                                                              Icons.add_circle,
                                                                              color: Colors.amberAccent,
                                                                              size: 30,
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Center(
                                                          child: OutlinedButton(
                                                              style: ButtonStyle(
                                                                  side: MaterialStateProperty.all(
                                                                      const BorderSide(
                                                                          color:
                                                                              AppColor.mainAppColor))),
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                    "View Fuel Log",
                                                                    style: TextStyles
                                                                        .fontW700(
                                                                            14),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 5.w,
                                                                  ),
                                                                  const Icon(Icons
                                                                      .arrow_forward_ios)
                                                                ],
                                                              )),
                                                        ),
                                                        ElevatedButton(
                                                          style: ButtonStyle(
                                                            backgroundColor: MaterialStateProperty.all(Colors.amberAccent),

                                                          ),
                                                            onPressed: (){}, child: Text("Add expenses",style: TextStyles.fontW700(16),))
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                  // Expanded( flex : 1,child: CustomDropDownWidget(options: ["Working","idle"]))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),

            ],
          ),
        ));
  }
}
