import 'package:employess_program/logic/data/model/employees_model.dart';
import 'package:employess_program/logic/data/model/image_employee.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../logic/data/model/date_employee.dart';
import '../../../logic/data/model/family_employee.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key, required this.employeeModel})
      : super(key: key);
  final ResponseData employeeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent, // 1
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defultPadding),
              child: Text(
                'معلومات الموظف',
                style: TextStyle(fontSize: 11.sp, color: AppColors.textDark),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]),
        body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defultPadding * 1.5, vertical: defultPadding),
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CircleAvatar(
                            //backgroundColor: Colors.green,
                            radius: 80,
                            child: CircleAvatar(
                              backgroundColor: AppColors.primary1,
                              radius: 75,
                              child: CircleAvatar(
                                backgroundColor: AppColors.primary1,
                                backgroundImage: NetworkImage(
                                  imageEmployee
                                      .where((element) =>
                                          element.typeId ==
                                          employeeModel.userID)
                                      .first
                                      .imageEmp,
                                ), //NetworkImage
                                radius: 100,
                              ), //CircleAvatar
                            ), //CircleAvatar
                          ), //CircleAvatar
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        Text(
                          'المعلومات الشخصية',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        const SizedBox(
                          height: defultPadding,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'الاسم',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Text(
                                employeeModel.name.toString(),
                                style: TextStyle(fontSize: 9.sp),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'اسم الأب',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Text(
                                familyEmployee
                                    .where((element) =>
                                        element.typeId == employeeModel.userID)
                                    .first
                                    .fatherNameAr,
                                style: TextStyle(fontSize: 9.sp),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'اسم الأم',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Text(
                                familyEmployee
                                    .where((element) =>
                                        element.typeId == employeeModel.userID)
                                    .first
                                    .motherNameAr,
                                style: TextStyle(fontSize: 9.sp),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'تاريخ الولادة ',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Text(
                                brithDateEmployee
                                    .where((element) =>
                                        element.typeId == employeeModel.userID)
                                    .first
                                    .brithDate,
                                style: TextStyle(fontSize: 9.sp),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'معلومات التواصل ',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Text(
                                employeeModel.phone.toString(),
                                style: TextStyle(fontSize: 9.sp),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: defultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'العنوان  ',
                                style: TextStyle(fontSize: 9.sp),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '${employeeModel.address!.city}${employeeModel.address!.street}${employeeModel.address!.suite}',
                                    style: TextStyle(fontSize: 9.sp),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]);
                })));
  }
}
