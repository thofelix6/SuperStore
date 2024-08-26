
class TValidator{
  static String? validatorEmail(String? value){
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Regular expression of email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;

  }
  static String? validatePassword(String? value){
    if (value == null || value.isEmpty) {
      return 'Password is required,';
    }

    // Check for minimum password length
    if (value.length<8) {
      return 'Password most be at least 8 characters long.';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password most containt at least 1 uppercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password most containt at least 1 number';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*()_+/*-?<>{}:.|,]'))) {
      return 'Password most containt at least 1 special character';
    }
    return null;
  }
  static String? validatorPhoneNumber(String? value){
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    // Regular expression of phone validation
    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required)..';
    }
    return null;

  }
}