// ignore_for_file: non_constant_identifier_names

import 'package:employess_program/configs/size.dart';
import 'package:employess_program/view/widgets/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/theme.dart';

class AddEmployeeScreen extends StatelessWidget {
  AddEmployeeScreen({Key? key}) : super(key: key);

  final TextEditingController _first_name_controller = TextEditingController();
  final TextEditingController _last_name_controller = TextEditingController();
  final TextEditingController _father_name_controller = TextEditingController();
  final TextEditingController _mother_name_controller = TextEditingController();
  final TextEditingController brithdate_controller = TextEditingController();
  final TextEditingController __info_controller = TextEditingController();
  final TextEditingController __address_controller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

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
              'إضافة موظف',
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
        padding: const EdgeInsets.symmetric(horizontal: defultPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: defultPadding,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 50.0,
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * 2,
                          height: MediaQuery.of(context).size.height * 2,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/user.png",
                            ),
                          ))),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Text(
                  'المعلومات الشخصية',
                  style: TextStyle(fontSize: 10.sp),
                ),
                const SizedBox(
                  height: defultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "الاسم",
                      style: TextStyle(fontSize: 9.sp, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      width: defultPadding,
                    ),
                    Text(
                      "الكنية",
                      style: TextStyle(fontSize: 9.sp, color: Colors.grey[600]),
                    )
                  ],
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //? First Name TextFormFiled
                      Flexible(
                        child: NameFormEditing(
                          hintText: 'اسم الموظف',
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'الحقل مطلوب'),
                            MaxLengthValidator(10,
                                errorText: 'لا يمكن إدخال أكثر من 10 حرف'),
                            MinLengthValidator(2,
                                errorText: 'لا يمكن إدخال أقل من 2 حرف'),
                            EmailValidator(
                                errorText: '  ادخل  كلمة المرور الصحيح')
                          ]),
                          controller: _first_name_controller,
                          kyebordType: TextInputType.name,
                        ),
                      ),
                      //? Last Name TextFormFiled
                      Flexible(
                        child: NameFormEditing(
                            hintText: ' الكنية',
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'الحقل مطلوب'),
                              MaxLengthValidator(10,
                                  errorText: 'لا يمكن إدخال أكثر من 10 حرف'),
                              MinLengthValidator(2,
                                  errorText: 'لا يمكن إدخال أقل من 2 حرف'),
                              EmailValidator(
                                  errorText: '  ادخل  كلمة المرور الصحيح')
                            ]),
                            controller: _last_name_controller,
                            kyebordType: TextInputType.name),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "اسم الأب",
                      style: TextStyle(fontSize: 9.sp, color: Colors.grey[600]),
                    ),
                    const SizedBox(
                      width: defultPadding,
                    ),
                    Text(
                      "اسم الأم",
                      style: TextStyle(fontSize: 9.sp, color: Colors.grey[600]),
                    )
                  ],
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //? Father Name TextFormFiled
                      Flexible(
                        child: NameFormEditing(
                            hintText: 'اسم الأب',
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'الحقل مطلوب'),
                              MaxLengthValidator(10,
                                  errorText: 'لا يمكن إدخال أكثر من 10 حرف'),
                              MinLengthValidator(2,
                                  errorText: 'لا يمكن إدخال أقل من 2 حرف'),
                              EmailValidator(
                                  errorText: '  ادخل  كلمة المرور الصحيح')
                            ]),
                            controller: _father_name_controller,
                            kyebordType: TextInputType.name),
                      ),
                      //? Mother Name TextFormFiled
                      Flexible(
                        child: NameFormEditing(
                            hintText: ' اسم الأم',
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'الحقل مطلوب'),
                              MaxLengthValidator(10,
                                  errorText: 'لا يمكن إدخال أكثر من 10 حرف'),
                              MinLengthValidator(2,
                                  errorText: 'لا يمكن إدخال أقل من 2 حرف'),
                              EmailValidator(
                                  errorText: '  ادخل  كلمة المرور الصحيح')
                            ]),
                            controller: _mother_name_controller,
                            kyebordType: TextInputType.name),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Row(
                  children: [
                    Text(
                      " تاريخ الولادة",
                      style: TextStyle(fontSize: 9.sp, color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: defultPadding * 8, right: defultPadding),
                  //? BrithDate  TextFormFiled
                  child: NameFormEditing(
                      hintText: 'تاريخ الولادة ',
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        MaxLengthValidator(15,
                            errorText: 'لا يمكن إدخال أكثر من 15 حرف'),
                        MinLengthValidator(7,
                            errorText: 'لا يمكن إدخال أقل من 7 حرف'),
                        EmailValidator(errorText: '  ادخل  كلمة المرور الصحيح')
                      ]),
                      controller: brithdate_controller,
                      kyebordType: TextInputType.number),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Text(
                  'معلومات التواصل',
                  style: TextStyle(fontSize: 10.sp),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Text(
                  " رقم الموبايل ",
                  style: TextStyle(fontSize: 9.sp, color: Colors.grey[600]),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defultPadding),
                  //? Inofrmation TextFormFiled
                  child: NameFormEditing(
                      hintText: 'رقم الموبايل  ',
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        MaxLengthValidator(15,
                            errorText: 'لا يمكن إدخال أكثر من 15 حرف'),
                        MinLengthValidator(7,
                            errorText: 'لا يمكن إدخال أقل من 7 حرف'),
                        EmailValidator(errorText: '  ادخل  كلمة المرور الصحيح')
                      ]),
                      controller: __info_controller,
                      kyebordType: TextInputType.number),
                ),
                const SizedBox(
                  height: defultPadding / 2,
                ),
                Text(
                  " العنوان  ",
                  style: TextStyle(fontSize: 0.sp, color: Colors.grey[600]),
                ),
                const SizedBox(
                  height: defultPadding / 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defultPadding, vertical: defultPadding),
                  //? Inofrmation TextFormFiled
                  child: NameFormEditing(
                      hintText: 'العنوان  ',
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        MaxLengthValidator(15,
                            errorText: 'لا يمكن إدخال أكثر من 15 حرف'),
                        MinLengthValidator(7,
                            errorText: 'لا يمكن إدخال أقل من 7 حرف'),
                        EmailValidator(errorText: '  ادخل  كلمة المرور الصحيح')
                      ]),
                      controller: __address_controller,
                      kyebordType: TextInputType.name),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.primary1),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defultPadding * 2,
                                vertical: defultPadding),
                            child: Text(
                              'حفظ',
                              style: TextStyle(
                                  fontSize: 10.sp, color: AppColors.textLigth),
                            ),
                          ))),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
