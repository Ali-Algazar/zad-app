class MyValidators {
  static String? displayNamevalidator(String? displayName) {
    if (displayName == null || displayName.isEmpty) {
      return 'لا يمكن أن يكون اسم فارغًا';
    }
    if (displayName.length < 3 || displayName.length > 20) {
      return 'يجب أن يتراوح اسم العرض بين 3 و 20 حرفًا';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء إدخال البريد الإلكتروني';
    }
    if (!RegExp(
      r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b',
    ).hasMatch(value)) {
      return 'الرجاء إدخال بريد إلكتروني صحيح';
    }
    return null;
  }

  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء إدخال رقم هاتف';
    }
    // (تم التعديل) تحقق من 11 رقم بالضبط ويبدأ بـ 01
    if (!RegExp(r'^01[0-9]{9}$').hasMatch(value)) {
      return 'الرجاء إدخال رقم هاتف مصري صحيح مكون من 11 رقمًا';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء إدخال كلمة مرور';
    }
    if (value.length < 8) {
      return 'يجب أن تكون كلمة المرور مكونة من 8 أحرف على الأقل';
    }
    return null;
  }

  static String? nationalIdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء إدخال رقم الهوية الوطنية';
    }
    // (تم التعديل) تحقق من 14 رقم بالضبط
    if (!RegExp(r'^[0-9]{14}$').hasMatch(value)) {
      return 'رقم الهوية الوطنية يجب أن يتكون من 14 رقمًا بالضبط';
    }
    return null;
  }

  static String? repeatPasswordValidator({String? value, String? password}) {
    if (value != password) {
      return 'كلمات المرور غير متطابقة';
    }
    return null;
  }

  static String? genderValidator({String? value}) {
    if (value == null || value.isEmpty) {
      return 'الرجاء إدخال الجنس';
    }
    return null;
  }

  static String? imageValidator(String? image) {
    if (image == null || image.isEmpty) {
      return 'الصورة لا يمكن أن تكون فارغة';
    }
    return null;
  }

  static String? tokenValidator(String? val) {
    if (val == null || val.isEmpty) {
      return 'الرجاء إدخال التوكن';
    }
    return null;
  }
}
