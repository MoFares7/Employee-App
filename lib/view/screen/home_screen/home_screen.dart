import 'package:employess_program/configs/theme.dart';
import 'package:employess_program/logic/data/model/image_employee.dart';
import 'package:employess_program/logic/data/model/jop_position.dart';
import 'package:employess_program/logic/data/services_provider/employees_services.dart';
import 'package:employess_program/view/screen/add_employee/add_employee.dart';
import 'package:employess_program/view/screen/home_screen/main_card_employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../logic/data/model/employees_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, // 1
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defultPadding),
            child: Text(
              'شؤون الموظفين',
              style: TextStyle(fontSize: 11.sp, color: AppColors.textDark),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddEmployeeScreen()));
                },
                icon: SvgPicture.asset(
                  'assets/icons/add.svg',
                  //  color: Colors.orange,
                ),
              ),
            )
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              EmployeeServices.getEmployees();
            });
          },
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FutureBuilder<List<ResponseData>?>(
                          future: EmployeeServices.getEmployees(),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return loadingShimmer();
                            } else {
                              if (snapshot.hasData) {
                                List<ResponseData> employees =
                                    snapshot.data as List<ResponseData>;
                                return MainCardEmployee(
                                  employeeModel: employees[index],
                                  nameEmployee:
                                      employees[index].name.toString(),
                                  jopsPsition: jobPosition
                                      .where((element) =>
                                          element.typeId ==
                                          employees[index].userID)
                                      .first
                                      .typeNameAr,
                                  imageEmployee: imageEmployee
                                      .where((element) =>
                                          element.typeId ==
                                          employees[index].userID)
                                      .first
                                      .imageEmp,
                                );
                              }
                            }
                            return Container();
                          },
                        ),
                      )
                    ]))
              ]);
            },
          ),
        ));
  }
}

Widget loadingShimmer() => Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.grey[400]!,
      period: const Duration(seconds: 1),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    height: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 10,
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
