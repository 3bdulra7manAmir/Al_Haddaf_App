class PricingConfig
{
  static const String clubFormPrice = "100"; //100
  static const String coachPrice = "50";
  static const String marketingVideoPrice = "20";

  static String? token;

  // Define the available countries
  static const List<String> countries = ['الإمارات', 'السعودية', 'مصر'];

  // Define governorates for each country
  static const Map<String, List<String>> countryGovernorates = {
    'الإمارات': [
      'دبي',
      'أبوظبي',
      'الشارقة',
      'عجمان',
      'رأس الخيمة',
      'الفجيرة',
      'أم القيوين',
      'الظفرة'
    ],
    'السعودية': [
      'الرياض',
      'جدة',
      'الدمام',
      'مكة',
      'المدينة المنورة',
      'الخبر',
      'الطائف',
      'القصيم',
      'الباحة',
      'جازان',
      'تبوك',
      'الأحساء',
      'حائل',
      'نجران',
      'عسير',
      'الحدود الشمالية',
      'المدينة'
    ],
    'مصر': [
      'القاهرة',
      'القليوبية',
      'البحيره',
      'الإسكندرية',
      'الجيزه',
      'أسوان',
      'الفيوم',
      'قنا',
      'الغربية',
      'الدقهلية',
      'الشرقية',
      'بني سويف',
      'أسيوط',
      'كفر الشيخ',
      'السويس',
      'مطروح',
      'بورسعيد',
      'المنيا',
      'الأقصر',
      'الإسماعيلية',
      'دمياط',
      'الوادى الجديد',
      'شمال سيناء',
      'جنوب سيناء',
      'المنوفيه'
    ],
  };

  static const List<String> footballPositions = [
    "حارس المرمى", // Goalkeeper
    "قلب الدفاع", // Centre Back
    "ظهير أيمن", // Right Back
    "ظهير أيسر", // Left Back
    "ظهير جناح", // Wing Back
    "وسط دفاعي", // Defensive Midfielder
    "وسط محوري", // Central Midfielder
    "صانع ألعاب", // Attacking Midfielder
    "وسط جناح", // Winger
    "مهاجم صريح", // Striker
    "مهاجم جناح", // Winger Forward
    "مهاجم ثاني" // Second Striker
  ];
}