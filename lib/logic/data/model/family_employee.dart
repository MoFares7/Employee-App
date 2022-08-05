class FamilyEmployee {
  final int typeId;
  final String fatherNameAr;
  final String motherNameAr;

  const FamilyEmployee({
    required this.typeId,
    required this.fatherNameAr,
    required this.motherNameAr,
  });
}

const familyEmployee = <FamilyEmployee>[
  FamilyEmployee(
    typeId: 1,
    fatherNameAr: ' أحمد الاحمد',
    motherNameAr: 'مرام الصفدي',
  ),
  FamilyEmployee(
    typeId: 2,
    fatherNameAr: 'خالد بندقجي ',
    motherNameAr: 'نسرين قمر الدين ',
  ),
  FamilyEmployee(
    typeId: 3,
    fatherNameAr: ' محمد الطحان',
    motherNameAr: 'ريم العجلاني ',
  ),
  FamilyEmployee(
    typeId: 4,
    fatherNameAr: 'عمار النصر',
    motherNameAr: 'فاتن حلو',
  ),
  FamilyEmployee(
    typeId: 5,
    fatherNameAr: 'طارق خليفة',
    motherNameAr: 'لينا العلي',
  ),
  FamilyEmployee(
    typeId: 6,
    fatherNameAr: 'مجد الحمصي',
    motherNameAr: 'منال الخطيب',
  ),
  FamilyEmployee(
    typeId: 7,
    fatherNameAr: ' علاء الخطيب',
    motherNameAr: ' هديل الهجري',
  ),
  FamilyEmployee(
    typeId: 8,
    fatherNameAr: 'وائل الميداني',
    motherNameAr: 'كارمن عساف',
  ),
  FamilyEmployee(
    typeId: 9,
    fatherNameAr: 'يعقوب ',
    motherNameAr: 'لانا الزامل',
  ),
  FamilyEmployee(
    typeId: 10,
    fatherNameAr: 'فارس الدباس',
    motherNameAr: 'نور حسن',
  ),
];
