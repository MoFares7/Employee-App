import 'package:employess_program/configs/theme.dart';
import 'package:employess_program/logic/data/model/employees_model.dart';
import 'package:employess_program/view/screen/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../configs/size.dart';

class MainCardEmployee extends StatefulWidget {
  const MainCardEmployee(
      {Key? key,
      required this.employeeModel,
      required this.nameEmployee,
      required this.imageEmployee,
      required this.jopsPsition})
      : super(key: key);
  final ResponseData employeeModel;
  final String nameEmployee;
  final String imageEmployee;
  final String jopsPsition;

  @override
  State<MainCardEmployee> createState() => _MainCardEmployeeState();
}

class _MainCardEmployeeState extends State<MainCardEmployee> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ProfileScreen(employeeModel: widget.employeeModel)));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).cardColor,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: defultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                          widget.imageEmployee,
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(width: defultPadding),
                      //?dasasdada
                      Text(
                        widget.nameEmployee,
                        //   employees[index].name.toString(),
                        style: TextStyle(
                            fontSize: 9.sp, color: AppColors.textDark),
                      ),
                      const SizedBox(
                        width: defultPadding / 2,
                      ),
                      Text(
                        widget.jopsPsition,
                        style: TextStyle(
                            fontSize: 8.sp,
                            color: const Color.fromARGB(255, 64, 67, 71)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: defultPadding / 2,
                  ),
                  SvgPicture.asset('assets/icons/exclamation.svg')
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: defultPadding, horizontal: defultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.cardDark,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'منح إجازة',
                            style: TextStyle(
                                fontSize: 9.sp, color: AppColors.textDark),
                          ),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.cardDark,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 18),
                          child: Text(
                            'خصم',
                            style: TextStyle(
                                fontSize: 9.sp, color: AppColors.textDark),
                          ),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.cardDark,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'إنهاء خدمة',
                            style: TextStyle(
                                fontSize: 9.sp, color: AppColors.textDark),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
